type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "g_rhsQ"} {:global} $$g_rhsQ: [bv32]bv32;

axiom {:array_info "$$g_rhsQ"} {:global} {:elem_width 32} {:source_name "g_rhsQ"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_rhsQ: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_rhsQ: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_rhsQ: bool;

const $arrayId$$g_rhsQ: arrayId;

axiom $arrayId$$g_rhsQ == 1bv5;

axiom {:array_info "$$agg.tmp"} {:elem_width 8} {:source_name "agg.tmp"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp: arrayId;

axiom $arrayId$$agg.tmp == 2bv5;

axiom {:array_info "$$agg.tmp4"} {:elem_width 8} {:source_name "agg.tmp4"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp4: arrayId;

axiom $arrayId$$agg.tmp4 == 3bv5;

axiom {:array_info "$$agg.tmp9"} {:elem_width 8} {:source_name "agg.tmp9"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp9: arrayId;

axiom $arrayId$$agg.tmp9 == 4bv5;

axiom {:array_info "$$agg.tmp14"} {:elem_width 8} {:source_name "agg.tmp14"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp14: arrayId;

axiom $arrayId$$agg.tmp14 == 5bv5;

axiom {:array_info "$$agg.tmp19"} {:elem_width 8} {:source_name "agg.tmp19"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp19: arrayId;

axiom $arrayId$$agg.tmp19 == 6bv5;

axiom {:array_info "$$agg.tmp24"} {:elem_width 8} {:source_name "agg.tmp24"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp24: arrayId;

axiom $arrayId$$agg.tmp24 == 7bv5;

axiom {:array_info "$$agg.tmp27"} {:elem_width 8} {:source_name "agg.tmp27"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp27: arrayId;

axiom $arrayId$$agg.tmp27 == 8bv5;

axiom {:array_info "$$D"} {:elem_width 32} {:source_name "D"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$D: arrayId;

axiom $arrayId$$D == 9bv5;

axiom {:array_info "$$agg.tmp32"} {:elem_width 8} {:source_name "agg.tmp32"} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp32: arrayId;

axiom $arrayId$$agg.tmp32 == 10bv5;

axiom {:array_info "$$ref.tmp"} {:elem_width 32} {:source_name "ref.tmp"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$ref.tmp: arrayId;

axiom $arrayId$$ref.tmp == 11bv5;

axiom {:array_info "$$agg.tmp98"} {:elem_width 8} {:source_name "agg.tmp98"} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp98: arrayId;

axiom $arrayId$$agg.tmp98 == 12bv5;

axiom {:array_info "$$ref.tmp168"} {:elem_width 32} {:source_name "ref.tmp168"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$ref.tmp168: arrayId;

axiom $arrayId$$ref.tmp168 == 13bv5;

axiom {:array_info "$$agg.tmp169"} {:elem_width 8} {:source_name "agg.tmp169"} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp169: arrayId;

axiom $arrayId$$agg.tmp169 == 14bv5;

axiom {:array_info "$$t_Q"} {:global} {:elem_width 8} {:source_name "t_Q"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$t_Q: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$t_Q: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$t_Q: bool;

const $arrayId$$t_Q: arrayId;

axiom $arrayId$$t_Q == 15bv5;

var {:source_name "s_Q"} {:group_shared} $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:group_shared} {:elem_width 32} {:source_name "s_Q"} {:source_elem_width 32} {:source_dimensions "576"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q: bool;

const $arrayId$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q: arrayId;

axiom $arrayId$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q == 16bv5;

axiom {:array_info "$$t_vgeo"} {:global} {:elem_width 8} {:source_name "t_vgeo"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$t_vgeo: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$t_vgeo: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$t_vgeo: bool;

const $arrayId$$t_vgeo: arrayId;

axiom $arrayId$$t_vgeo == 17bv5;

var {:source_name "s_facs"} {:group_shared} $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:group_shared} {:elem_width 32} {:source_name "s_facs"} {:source_elem_width 32} {:source_dimensions "12"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs: bool;

const $arrayId$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs: arrayId;

axiom $arrayId$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs == 18bv5;

axiom {:array_info "$$t_DrDsDt"} {:global} {:elem_width 8} {:source_name "t_DrDsDt"} {:source_elem_width 192} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$t_DrDsDt: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$t_DrDsDt: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$t_DrDsDt: bool;

const $arrayId$$t_DrDsDt: arrayId;

axiom $arrayId$$t_DrDsDt == 19bv5;

type ptr = bv32;

type arrayId = bv5;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base ++ offset[27:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:27]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv5 ++ p[27:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv5;

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

function FMUL32(bv32, bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

procedure {:source_name "MaxwellsGPU_VOL_Kernel3D"} {:kernel} $_Z24MaxwellsGPU_VOL_Kernel3DPf();
  requires !_READ_HAS_OCCURRED_$$g_rhsQ && !_WRITE_HAS_OCCURRED_$$g_rhsQ && !_ATOMIC_HAS_OCCURRED_$$g_rhsQ;
  requires !_READ_HAS_OCCURRED_$$t_Q && !_WRITE_HAS_OCCURRED_$$t_Q && !_ATOMIC_HAS_OCCURRED_$$t_Q;
  requires !_READ_HAS_OCCURRED_$$t_vgeo && !_WRITE_HAS_OCCURRED_$$t_vgeo && !_ATOMIC_HAS_OCCURRED_$$t_vgeo;
  requires !_READ_HAS_OCCURRED_$$t_DrDsDt && !_WRITE_HAS_OCCURRED_$$t_DrDsDt && !_ATOMIC_HAS_OCCURRED_$$t_DrDsDt;
  requires !_READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && !_WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && !_ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;
  requires !_READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && !_WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && !_ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;
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
  modifies $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs, _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q, _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q, _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q, _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs, _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs, _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs, $$g_rhsQ, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs, _WRITE_HAS_OCCURRED_$$g_rhsQ, _WRITE_READ_BENIGN_FLAG_$$g_rhsQ, _WRITE_READ_BENIGN_FLAG_$$g_rhsQ, _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;



implementation {:source_name "MaxwellsGPU_VOL_Kernel3D"} {:kernel} $_Z24MaxwellsGPU_VOL_Kernel3DPf()
{
  var $dEydt.0$1: bv32;
  var $dEydt.0$2: bv32;
  var $dEyds.0$1: bv32;
  var $dEyds.0$2: bv32;
  var $dEydr.0$1: bv32;
  var $dEydr.0$2: bv32;
  var $dExdt.0$1: bv32;
  var $dExdt.0$2: bv32;
  var $dExds.0$1: bv32;
  var $dExds.0$2: bv32;
  var $dExdr.0$1: bv32;
  var $dExdr.0$2: bv32;
  var $dHzdt.0$1: bv32;
  var $dHzdt.0$2: bv32;
  var $dHzds.0$1: bv32;
  var $dHzds.0$2: bv32;
  var $dHzdr.0$1: bv32;
  var $dHzdr.0$2: bv32;
  var $dHydt.0$1: bv32;
  var $dHydt.0$2: bv32;
  var $dHyds.0$1: bv32;
  var $dHyds.0$2: bv32;
  var $dHydr.0$1: bv32;
  var $dHydr.0$2: bv32;
  var $dHxdt.0$1: bv32;
  var $dHxdt.0$2: bv32;
  var $dHxds.0$1: bv32;
  var $dHxds.0$2: bv32;
  var $dHxdr.0$1: bv32;
  var $dHxdr.0$2: bv32;
  var $m.0: bv32;
  var $dEzdr.0$1: bv32;
  var $dEzdr.0$2: bv32;
  var $dEzds.0$1: bv32;
  var $dEzds.0$2: bv32;
  var $dEzdt.0$1: bv32;
  var $dEzdt.0$2: bv32;
  var v1$1: bv8;
  var v1$2: bv8;
  var v3$1: bv8;
  var v3$2: bv8;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v4$1: bv8;
  var v4$2: bv8;
  var v10$1: bv8;
  var v10$2: bv8;
  var v2$1: bv8;
  var v2$2: bv8;
  var v6$1: bv8;
  var v6$2: bv8;
  var v8$1: bv8;
  var v8$2: bv8;
  var v9$1: bv8;
  var v9$2: bv8;
  var v5$1: bv8;
  var v5$2: bv8;
  var v7$1: bv8;
  var v7$2: bv8;
  var v17$1: bv8;
  var v17$2: bv8;
  var v21$1: bv8;
  var v21$2: bv8;
  var v13$1: bv32;
  var v13$2: bv32;
  var v22$1: bv8;
  var v22$2: bv8;
  var v16$1: bv8;
  var v16$2: bv8;
  var v14$1: bv8;
  var v14$2: bv8;
  var v20$1: bv8;
  var v20$2: bv8;
  var v19$1: bv8;
  var v19$2: bv8;
  var v18$1: bv8;
  var v18$2: bv8;
  var v15$1: bv8;
  var v15$2: bv8;
  var v32$1: bv8;
  var v32$2: bv8;
  var v30$1: bv8;
  var v30$2: bv8;
  var v26$1: bv32;
  var v26$2: bv32;
  var v29$1: bv8;
  var v29$2: bv8;
  var v25$1: bv8;
  var v25$2: bv8;
  var v28$1: bv8;
  var v28$2: bv8;
  var v31$1: bv8;
  var v31$2: bv8;
  var v23$1: bv8;
  var v23$2: bv8;
  var v24$1: bv8;
  var v24$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v34$1: bv8;
  var v34$2: bv8;
  var v33$1: bv8;
  var v33$2: bv8;
  var v35$1: bv8;
  var v35$2: bv8;
  var v0$1: bv32;
  var v0$2: bv32;
  var v45$1: bv8;
  var v45$2: bv8;
  var v46$1: bv8;
  var v46$2: bv8;
  var v47$1: bv8;
  var v47$2: bv8;
  var v42$1: bv8;
  var v42$2: bv8;
  var v40$1: bv8;
  var v40$2: bv8;
  var v41$1: bv8;
  var v41$2: bv8;
  var v43$1: bv8;
  var v43$2: bv8;
  var v38$1: bv8;
  var v38$2: bv8;
  var v39$1: bv32;
  var v39$2: bv32;
  var v44$1: bv8;
  var v44$2: bv8;
  var v57$1: bv8;
  var v57$2: bv8;
  var v54$1: bv8;
  var v54$2: bv8;
  var v49$1: bv8;
  var v49$2: bv8;
  var v51$1: bv8;
  var v51$2: bv8;
  var v50$1: bv8;
  var v50$2: bv8;
  var v53$1: bv8;
  var v53$2: bv8;
  var v55$1: bv8;
  var v55$2: bv8;
  var v48$1: bv8;
  var v48$2: bv8;
  var v52$1: bv32;
  var v52$2: bv32;
  var v56$1: bv8;
  var v56$2: bv8;
  var v61$1: bv8;
  var v61$2: bv8;
  var v58$1: bv8;
  var v58$2: bv8;
  var v60$1: bv8;
  var v60$2: bv8;
  var v62$1: bv8;
  var v62$2: bv8;
  var v65$1: bv32;
  var v65$2: bv32;
  var v63$1: bv8;
  var v63$2: bv8;
  var v68$1: bv8;
  var v68$2: bv8;
  var v67$1: bv8;
  var v67$2: bv8;
  var v64$1: bv8;
  var v64$2: bv8;
  var v59$1: bv8;
  var v59$2: bv8;
  var v66$1: bv8;
  var v66$2: bv8;
  var v77$1: bv8;
  var v77$2: bv8;
  var v69$1: bv8;
  var v69$2: bv8;
  var v78$1: bv32;
  var v78$2: bv32;
  var v74$1: bv8;
  var v74$2: bv8;
  var v73$1: bv8;
  var v73$2: bv8;
  var v70$1: bv8;
  var v70$2: bv8;
  var v71$1: bv8;
  var v71$2: bv8;
  var v76$1: bv8;
  var v76$2: bv8;
  var v72$1: bv8;
  var v72$2: bv8;
  var v75$1: bv8;
  var v75$2: bv8;
  var v81$1: bv8;
  var v81$2: bv8;
  var v83$1: bv8;
  var v83$2: bv8;
  var v82$1: bv8;
  var v82$2: bv8;
  var v86$1: bv8;
  var v86$2: bv8;
  var v84$1: bv8;
  var v84$2: bv8;
  var v80$1: bv8;
  var v80$2: bv8;
  var v85$1: bv8;
  var v85$2: bv8;
  var v87$1: bv8;
  var v87$2: bv8;
  var v88$1: bv8;
  var v88$2: bv8;
  var v90$1: bv8;
  var v90$2: bv8;
  var v89$1: bv8;
  var v89$2: bv8;
  var v91$1: bv8;
  var v91$2: bv8;
  var v92$1: bv32;
  var v92$2: bv32;
  var v93: bool;
  var v79$1: bool;
  var v79$2: bool;
  var v36$1: bv8;
  var v36$2: bv8;
  var v37$1: bv8;
  var v37$2: bv8;
  var v135$1: bv32;
  var v135$2: bv32;
  var v136$1: bv32;
  var v136$2: bv32;
  var v126$1: bv32;
  var v126$2: bv32;
  var v127$1: bv32;
  var v127$2: bv32;
  var v132$1: bv32;
  var v132$2: bv32;
  var v129$1: bv32;
  var v129$2: bv32;
  var v131$1: bv32;
  var v131$2: bv32;
  var v130$1: bv32;
  var v130$2: bv32;
  var v128$1: bv32;
  var v128$2: bv32;
  var v133$1: bv32;
  var v133$2: bv32;
  var v134$1: bv32;
  var v134$2: bv32;
  var v100$1: bv8;
  var v100$2: bv8;
  var v95$1: bv8;
  var v95$2: bv8;
  var v101$1: bv8;
  var v101$2: bv8;
  var v97$1: bv8;
  var v97$2: bv8;
  var v98$1: bv8;
  var v98$2: bv8;
  var v96$1: bv8;
  var v96$2: bv8;
  var v94$1: bv8;
  var v94$2: bv8;
  var v102$1: bv8;
  var v102$2: bv8;
  var v99$1: bv8;
  var v99$2: bv8;
  var v112$1: bv8;
  var v112$2: bv8;
  var v104$1: bv8;
  var v104$2: bv8;
  var v109$1: bv8;
  var v109$2: bv8;
  var v113$1: bv8;
  var v113$2: bv8;
  var v103$1: bv8;
  var v103$2: bv8;
  var v106$1: bv8;
  var v106$2: bv8;
  var v107$1: bv8;
  var v107$2: bv8;
  var v108$1: bv8;
  var v108$2: bv8;
  var v110$1: bv8;
  var v110$2: bv8;
  var v105$1: bv8;
  var v105$2: bv8;
  var v111$1: bv8;
  var v111$2: bv8;
  var v122$1: bv32;
  var v122$2: bv32;
  var v115$1: bv8;
  var v115$2: bv8;
  var v117$1: bv8;
  var v117$2: bv8;
  var v114$1: bv8;
  var v114$2: bv8;
  var v116$1: bv8;
  var v116$2: bv8;
  var v119$1: bv32;
  var v119$2: bv32;
  var v120$1: bv32;
  var v120$2: bv32;
  var v121$1: bv32;
  var v121$2: bv32;
  var v118$1: bv128;
  var v118$2: bv128;
  var v123$1: bv32;
  var v123$2: bv32;
  var v124$1: bv32;
  var v124$2: bv32;
  var v125$1: bv32;
  var v125$2: bv32;
  var v201$1: bv8;
  var v201$2: bv8;
  var v192$1: bv32;
  var v192$2: bv32;
  var v199$1: bv8;
  var v199$2: bv8;
  var v202$1: bv8;
  var v202$2: bv8;
  var v200$1: bv8;
  var v200$2: bv8;
  var v193$1: bv32;
  var v193$2: bv32;
  var v194$1: bv32;
  var v194$2: bv32;
  var v203$1: bv8;
  var v203$2: bv8;
  var v196$1: bv32;
  var v196$2: bv32;
  var v195$1: bv32;
  var v195$2: bv32;
  var v198$1: bv8;
  var v198$2: bv8;
  var v205$1: bv8;
  var v205$2: bv8;
  var v206$1: bv8;
  var v206$2: bv8;
  var v211$1: bv8;
  var v211$2: bv8;
  var v207$1: bv8;
  var v207$2: bv8;
  var v208$1: bv8;
  var v208$2: bv8;
  var v212$1: bv8;
  var v212$2: bv8;
  var v213$1: bv8;
  var v213$2: bv8;
  var v214$1: bv8;
  var v214$2: bv8;
  var v204$1: bv8;
  var v204$2: bv8;
  var v209$1: bv8;
  var v209$2: bv8;
  var v210$1: bv8;
  var v210$2: bv8;
  var v220$1: bv8;
  var v220$2: bv8;
  var v219$1: bv8;
  var v219$2: bv8;
  var v217$1: bv8;
  var v217$2: bv8;
  var v221$1: bv8;
  var v221$2: bv8;
  var v215$1: bv8;
  var v215$2: bv8;
  var v218$1: bv8;
  var v218$2: bv8;
  var v222$1: bv128;
  var v222$2: bv128;
  var v216$1: bv8;
  var v216$2: bv8;
  var v231$1: bv32;
  var v231$2: bv32;
  var v228$1: bv32;
  var v228$2: bv32;
  var v232$1: bv32;
  var v232$2: bv32;
  var v233$1: bv32;
  var v233$2: bv32;
  var v223$1: bv32;
  var v223$2: bv32;
  var v230$1: bv32;
  var v230$2: bv32;
  var v224$1: bv32;
  var v224$2: bv32;
  var v225$1: bv32;
  var v225$2: bv32;
  var v227$1: bv32;
  var v227$2: bv32;
  var v229$1: bv32;
  var v229$2: bv32;
  var v226$1: bv32;
  var v226$2: bv32;
  var v240$1: bv32;
  var v240$2: bv32;
  var v243$1: bv32;
  var v243$2: bv32;
  var v235$1: bv32;
  var v235$2: bv32;
  var v244$1: bv32;
  var v244$2: bv32;
  var v239$1: bv32;
  var v239$2: bv32;
  var v241$1: bv32;
  var v241$2: bv32;
  var v242$1: bv32;
  var v242$2: bv32;
  var v234$1: bv32;
  var v234$2: bv32;
  var v238$1: bv32;
  var v238$2: bv32;
  var v236$1: bv32;
  var v236$2: bv32;
  var v237$1: bv32;
  var v237$2: bv32;
  var v251$1: bv32;
  var v251$2: bv32;
  var v254$1: bv32;
  var v254$2: bv32;
  var v246$1: bv32;
  var v246$2: bv32;
  var v253$1: bv32;
  var v253$2: bv32;
  var v250$1: bv32;
  var v250$2: bv32;
  var v248$1: bv32;
  var v248$2: bv32;
  var v245$1: bv32;
  var v245$2: bv32;
  var v252$1: bv32;
  var v252$2: bv32;
  var v247$1: bv32;
  var v247$2: bv32;
  var v249$1: bv32;
  var v249$2: bv32;
  var v257$1: bv32;
  var v257$2: bv32;
  var v259$1: bv32;
  var v259$2: bv32;
  var v256$1: bv32;
  var v256$2: bv32;
  var v255$1: bv32;
  var v255$2: bv32;
  var v258$1: bv32;
  var v258$2: bv32;
  var v143: bv32;
  var v147$1: bv8;
  var v147$2: bv8;
  var v142$1: bv32;
  var v142$2: bv32;
  var v144$1: bv8;
  var v144$2: bv8;
  var v145$1: bv8;
  var v145$2: bv8;
  var v139$1: bv32;
  var v139$2: bv32;
  var v137$1: bv32;
  var v137$2: bv32;
  var v146$1: bv8;
  var v146$2: bv8;
  var v148$1: bv8;
  var v148$2: bv8;
  var v138$1: bv32;
  var v138$2: bv32;
  var v140$1: bv32;
  var v140$2: bv32;
  var v141$1: bv32;
  var v141$2: bv32;
  var v155$1: bv8;
  var v155$2: bv8;
  var v156$1: bv8;
  var v156$2: bv8;
  var v157$1: bv8;
  var v157$2: bv8;
  var v153$1: bv8;
  var v153$2: bv8;
  var v152$1: bv8;
  var v152$2: bv8;
  var v154$1: bv8;
  var v154$2: bv8;
  var v158$1: bv8;
  var v158$2: bv8;
  var v150$1: bv8;
  var v150$2: bv8;
  var v151$1: bv8;
  var v151$2: bv8;
  var v149$1: bv8;
  var v149$2: bv8;
  var v165$1: bv8;
  var v165$2: bv8;
  var v166$1: bv8;
  var v166$2: bv8;
  var v160$1: bv8;
  var v160$2: bv8;
  var v164$1: bv8;
  var v164$2: bv8;
  var v168$1: bv128;
  var v168$2: bv128;
  var v159$1: bv8;
  var v159$2: bv8;
  var v162$1: bv8;
  var v162$2: bv8;
  var v161$1: bv8;
  var v161$2: bv8;
  var v163$1: bv8;
  var v163$2: bv8;
  var v167$1: bv8;
  var v167$2: bv8;
  var v174$1: bv32;
  var v174$2: bv32;
  var v175$1: bv32;
  var v175$2: bv32;
  var v169$1: bv32;
  var v169$2: bv32;
  var v176$1: bv32;
  var v176$2: bv32;
  var v177$1: bv32;
  var v177$2: bv32;
  var v173$1: bv32;
  var v173$2: bv32;
  var v172$1: bv32;
  var v172$2: bv32;
  var v170$1: bv32;
  var v170$2: bv32;
  var v171$1: bv32;
  var v171$2: bv32;
  var v185$1: bv32;
  var v185$2: bv32;
  var v186$1: bv32;
  var v186$2: bv32;
  var v187$1: bv32;
  var v187$2: bv32;
  var v188$1: bv32;
  var v188$2: bv32;
  var v184$1: bv32;
  var v184$2: bv32;
  var v183$1: bv32;
  var v183$2: bv32;
  var v178$1: bv32;
  var v178$2: bv32;
  var v180$1: bv32;
  var v180$2: bv32;
  var v179$1: bv32;
  var v179$2: bv32;
  var v181$1: bv32;
  var v181$2: bv32;
  var v182$1: bv32;
  var v182$2: bv32;
  var v189$1: bv32;
  var v189$2: bv32;
  var v190$1: bv32;
  var v190$2: bv32;
  var v191$1: bv32;
  var v191$2: bv32;
  var v197: bv32;
  var v260$1: bv32;
  var v260$2: bv32;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_bv8$1: bv8;
  var _HAVOC_bv8$2: bv8;


  __partitioned_block_$entry_0:
    v0$1 := BV32_ADD(local_id_x$1, BV32_MUL(BV32_MUL(group_id_x$1, 6bv32), 96bv32));
    v0$2 := BV32_ADD(local_id_x$2, BV32_MUL(BV32_MUL(group_id_x$2, 6bv32), 96bv32));
    havoc v1$1, v1$2;
    $$agg.tmp$0bv32$1 := v1$1;
    $$agg.tmp$0bv32$2 := v1$2;
    havoc v2$1, v2$2;
    $$agg.tmp$1bv32$1 := v2$1;
    $$agg.tmp$1bv32$2 := v2$2;
    havoc v3$1, v3$2;
    $$agg.tmp$2bv32$1 := v3$1;
    $$agg.tmp$2bv32$2 := v3$2;
    havoc v4$1, v4$2;
    $$agg.tmp$3bv32$1 := v4$1;
    $$agg.tmp$3bv32$2 := v4$2;
    havoc v5$1, v5$2;
    $$agg.tmp$4bv32$1 := v5$1;
    $$agg.tmp$4bv32$2 := v5$2;
    havoc v6$1, v6$2;
    $$agg.tmp$5bv32$1 := v6$1;
    $$agg.tmp$5bv32$2 := v6$2;
    havoc v7$1, v7$2;
    $$agg.tmp$6bv32$1 := v7$1;
    $$agg.tmp$6bv32$2 := v7$2;
    havoc v8$1, v8$2;
    $$agg.tmp$7bv32$1 := v8$1;
    $$agg.tmp$7bv32$2 := v8$2;
    havoc v9$1, v9$2;
    $$agg.tmp$8bv32$1 := v9$1;
    $$agg.tmp$8bv32$2 := v9$2;
    havoc v10$1, v10$2;
    $$agg.tmp$9bv32$1 := v10$1;
    $$agg.tmp$9bv32$2 := v10$2;
    havoc v11$1, v11$2;
    $$agg.tmp$10bv32$1 := v11$1;
    $$agg.tmp$10bv32$2 := v11$2;
    havoc v12$1, v12$2;
    $$agg.tmp$11bv32$1 := v12$1;
    $$agg.tmp$11bv32$2 := v12$2;
    call {:sourceloc_num 25} v13$1, v13$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp, 0bv32), true, v0$1, true, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, local_id_x$1, v13$1, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, local_id_x$2, v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} true;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][local_id_x$1] := v13$1;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v13$2;
    havoc v14$1, v14$2;
    $$agg.tmp4$0bv32$1 := v14$1;
    $$agg.tmp4$0bv32$2 := v14$2;
    havoc v15$1, v15$2;
    $$agg.tmp4$1bv32$1 := v15$1;
    $$agg.tmp4$1bv32$2 := v15$2;
    havoc v16$1, v16$2;
    $$agg.tmp4$2bv32$1 := v16$1;
    $$agg.tmp4$2bv32$2 := v16$2;
    havoc v17$1, v17$2;
    $$agg.tmp4$3bv32$1 := v17$1;
    $$agg.tmp4$3bv32$2 := v17$2;
    havoc v18$1, v18$2;
    $$agg.tmp4$4bv32$1 := v18$1;
    $$agg.tmp4$4bv32$2 := v18$2;
    havoc v19$1, v19$2;
    $$agg.tmp4$5bv32$1 := v19$1;
    $$agg.tmp4$5bv32$2 := v19$2;
    havoc v20$1, v20$2;
    $$agg.tmp4$6bv32$1 := v20$1;
    $$agg.tmp4$6bv32$2 := v20$2;
    havoc v21$1, v21$2;
    $$agg.tmp4$7bv32$1 := v21$1;
    $$agg.tmp4$7bv32$2 := v21$2;
    havoc v22$1, v22$2;
    $$agg.tmp4$8bv32$1 := v22$1;
    $$agg.tmp4$8bv32$2 := v22$2;
    havoc v23$1, v23$2;
    $$agg.tmp4$9bv32$1 := v23$1;
    $$agg.tmp4$9bv32$2 := v23$2;
    havoc v24$1, v24$2;
    $$agg.tmp4$10bv32$1 := v24$1;
    $$agg.tmp4$10bv32$2 := v24$2;
    havoc v25$1, v25$2;
    $$agg.tmp4$11bv32$1 := v25$1;
    $$agg.tmp4$11bv32$2 := v25$2;
    call {:sourceloc_num 51} v26$1, v26$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp4, 0bv32), true, BV32_ADD(v0$1, 96bv32), true, BV32_ADD(v0$2, 96bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$1, 96bv32), v26$1, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 96bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 96bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 96bv32), v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} true;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 96bv32)] := v26$1;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 96bv32)] := v26$2;
    havoc v27$1, v27$2;
    $$agg.tmp9$0bv32$1 := v27$1;
    $$agg.tmp9$0bv32$2 := v27$2;
    havoc v28$1, v28$2;
    $$agg.tmp9$1bv32$1 := v28$1;
    $$agg.tmp9$1bv32$2 := v28$2;
    havoc v29$1, v29$2;
    $$agg.tmp9$2bv32$1 := v29$1;
    $$agg.tmp9$2bv32$2 := v29$2;
    havoc v30$1, v30$2;
    $$agg.tmp9$3bv32$1 := v30$1;
    $$agg.tmp9$3bv32$2 := v30$2;
    havoc v31$1, v31$2;
    $$agg.tmp9$4bv32$1 := v31$1;
    $$agg.tmp9$4bv32$2 := v31$2;
    havoc v32$1, v32$2;
    $$agg.tmp9$5bv32$1 := v32$1;
    $$agg.tmp9$5bv32$2 := v32$2;
    havoc v33$1, v33$2;
    $$agg.tmp9$6bv32$1 := v33$1;
    $$agg.tmp9$6bv32$2 := v33$2;
    havoc v34$1, v34$2;
    $$agg.tmp9$7bv32$1 := v34$1;
    $$agg.tmp9$7bv32$2 := v34$2;
    havoc v35$1, v35$2;
    $$agg.tmp9$8bv32$1 := v35$1;
    $$agg.tmp9$8bv32$2 := v35$2;
    havoc v36$1, v36$2;
    $$agg.tmp9$9bv32$1 := v36$1;
    $$agg.tmp9$9bv32$2 := v36$2;
    havoc v37$1, v37$2;
    $$agg.tmp9$10bv32$1 := v37$1;
    $$agg.tmp9$10bv32$2 := v37$2;
    havoc v38$1, v38$2;
    $$agg.tmp9$11bv32$1 := v38$1;
    $$agg.tmp9$11bv32$2 := v38$2;
    call {:sourceloc_num 77} v39$1, v39$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp9, 0bv32), true, BV32_ADD(v0$1, 192bv32), true, BV32_ADD(v0$2, 192bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$1, 192bv32), v39$1, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 192bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 192bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 192bv32), v39$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} true;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 192bv32)] := v39$1;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 192bv32)] := v39$2;
    havoc v40$1, v40$2;
    $$agg.tmp14$0bv32$1 := v40$1;
    $$agg.tmp14$0bv32$2 := v40$2;
    havoc v41$1, v41$2;
    $$agg.tmp14$1bv32$1 := v41$1;
    $$agg.tmp14$1bv32$2 := v41$2;
    havoc v42$1, v42$2;
    $$agg.tmp14$2bv32$1 := v42$1;
    $$agg.tmp14$2bv32$2 := v42$2;
    havoc v43$1, v43$2;
    $$agg.tmp14$3bv32$1 := v43$1;
    $$agg.tmp14$3bv32$2 := v43$2;
    havoc v44$1, v44$2;
    $$agg.tmp14$4bv32$1 := v44$1;
    $$agg.tmp14$4bv32$2 := v44$2;
    havoc v45$1, v45$2;
    $$agg.tmp14$5bv32$1 := v45$1;
    $$agg.tmp14$5bv32$2 := v45$2;
    havoc v46$1, v46$2;
    $$agg.tmp14$6bv32$1 := v46$1;
    $$agg.tmp14$6bv32$2 := v46$2;
    havoc v47$1, v47$2;
    $$agg.tmp14$7bv32$1 := v47$1;
    $$agg.tmp14$7bv32$2 := v47$2;
    havoc v48$1, v48$2;
    $$agg.tmp14$8bv32$1 := v48$1;
    $$agg.tmp14$8bv32$2 := v48$2;
    havoc v49$1, v49$2;
    $$agg.tmp14$9bv32$1 := v49$1;
    $$agg.tmp14$9bv32$2 := v49$2;
    havoc v50$1, v50$2;
    $$agg.tmp14$10bv32$1 := v50$1;
    $$agg.tmp14$10bv32$2 := v50$2;
    havoc v51$1, v51$2;
    $$agg.tmp14$11bv32$1 := v51$1;
    $$agg.tmp14$11bv32$2 := v51$2;
    call {:sourceloc_num 103} v52$1, v52$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp14, 0bv32), true, BV32_ADD(v0$1, 288bv32), true, BV32_ADD(v0$2, 288bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 104} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$1, 288bv32), v52$1, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 288bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 288bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 104} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 104} _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 288bv32), v52$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} true;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 288bv32)] := v52$1;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 288bv32)] := v52$2;
    havoc v53$1, v53$2;
    $$agg.tmp19$0bv32$1 := v53$1;
    $$agg.tmp19$0bv32$2 := v53$2;
    havoc v54$1, v54$2;
    $$agg.tmp19$1bv32$1 := v54$1;
    $$agg.tmp19$1bv32$2 := v54$2;
    havoc v55$1, v55$2;
    $$agg.tmp19$2bv32$1 := v55$1;
    $$agg.tmp19$2bv32$2 := v55$2;
    havoc v56$1, v56$2;
    $$agg.tmp19$3bv32$1 := v56$1;
    $$agg.tmp19$3bv32$2 := v56$2;
    havoc v57$1, v57$2;
    $$agg.tmp19$4bv32$1 := v57$1;
    $$agg.tmp19$4bv32$2 := v57$2;
    havoc v58$1, v58$2;
    $$agg.tmp19$5bv32$1 := v58$1;
    $$agg.tmp19$5bv32$2 := v58$2;
    havoc v59$1, v59$2;
    $$agg.tmp19$6bv32$1 := v59$1;
    $$agg.tmp19$6bv32$2 := v59$2;
    havoc v60$1, v60$2;
    $$agg.tmp19$7bv32$1 := v60$1;
    $$agg.tmp19$7bv32$2 := v60$2;
    havoc v61$1, v61$2;
    $$agg.tmp19$8bv32$1 := v61$1;
    $$agg.tmp19$8bv32$2 := v61$2;
    havoc v62$1, v62$2;
    $$agg.tmp19$9bv32$1 := v62$1;
    $$agg.tmp19$9bv32$2 := v62$2;
    havoc v63$1, v63$2;
    $$agg.tmp19$10bv32$1 := v63$1;
    $$agg.tmp19$10bv32$2 := v63$2;
    havoc v64$1, v64$2;
    $$agg.tmp19$11bv32$1 := v64$1;
    $$agg.tmp19$11bv32$2 := v64$2;
    call {:sourceloc_num 129} v65$1, v65$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp19, 0bv32), true, BV32_ADD(v0$1, 384bv32), true, BV32_ADD(v0$2, 384bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 130} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$1, 384bv32), v65$1, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 384bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 384bv32));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 130} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 130} _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 384bv32), v65$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} true;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 384bv32)] := v65$1;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 384bv32)] := v65$2;
    havoc v66$1, v66$2;
    $$agg.tmp24$0bv32$1 := v66$1;
    $$agg.tmp24$0bv32$2 := v66$2;
    havoc v67$1, v67$2;
    $$agg.tmp24$1bv32$1 := v67$1;
    $$agg.tmp24$1bv32$2 := v67$2;
    havoc v68$1, v68$2;
    $$agg.tmp24$2bv32$1 := v68$1;
    $$agg.tmp24$2bv32$2 := v68$2;
    havoc v69$1, v69$2;
    $$agg.tmp24$3bv32$1 := v69$1;
    $$agg.tmp24$3bv32$2 := v69$2;
    havoc v70$1, v70$2;
    $$agg.tmp24$4bv32$1 := v70$1;
    $$agg.tmp24$4bv32$2 := v70$2;
    havoc v71$1, v71$2;
    $$agg.tmp24$5bv32$1 := v71$1;
    $$agg.tmp24$5bv32$2 := v71$2;
    havoc v72$1, v72$2;
    $$agg.tmp24$6bv32$1 := v72$1;
    $$agg.tmp24$6bv32$2 := v72$2;
    havoc v73$1, v73$2;
    $$agg.tmp24$7bv32$1 := v73$1;
    $$agg.tmp24$7bv32$2 := v73$2;
    havoc v74$1, v74$2;
    $$agg.tmp24$8bv32$1 := v74$1;
    $$agg.tmp24$8bv32$2 := v74$2;
    havoc v75$1, v75$2;
    $$agg.tmp24$9bv32$1 := v75$1;
    $$agg.tmp24$9bv32$2 := v75$2;
    havoc v76$1, v76$2;
    $$agg.tmp24$10bv32$1 := v76$1;
    $$agg.tmp24$10bv32$2 := v76$2;
    havoc v77$1, v77$2;
    $$agg.tmp24$11bv32$1 := v77$1;
    $$agg.tmp24$11bv32$2 := v77$2;
    call {:sourceloc_num 155} v78$1, v78$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp24, 0bv32), true, BV32_ADD(v0$1, 480bv32), true, BV32_ADD(v0$2, 480bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 156} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$1, 480bv32), v78$1, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 480bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 480bv32));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 156} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 156} _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(true, BV32_ADD(local_id_x$2, 480bv32), v78$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} true;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD(local_id_x$1, 480bv32)] := v78$1;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 480bv32)] := v78$2;
    v79$1 := BV32_SLT(local_id_x$1, 12bv32);
    v79$2 := BV32_SLT(local_id_x$2, 12bv32);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v79$1 then v79$1 else p0$1);
    p0$2 := (if v79$2 then v79$2 else p0$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v80$1 := (if p0$1 then _HAVOC_bv8$1 else v80$1);
    v80$2 := (if p0$2 then _HAVOC_bv8$2 else v80$2);
    $$agg.tmp27$0bv32$1 := (if p0$1 then v80$1 else $$agg.tmp27$0bv32$1);
    $$agg.tmp27$0bv32$2 := (if p0$2 then v80$2 else $$agg.tmp27$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v81$1 := (if p0$1 then _HAVOC_bv8$1 else v81$1);
    v81$2 := (if p0$2 then _HAVOC_bv8$2 else v81$2);
    $$agg.tmp27$1bv32$1 := (if p0$1 then v81$1 else $$agg.tmp27$1bv32$1);
    $$agg.tmp27$1bv32$2 := (if p0$2 then v81$2 else $$agg.tmp27$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v82$1 := (if p0$1 then _HAVOC_bv8$1 else v82$1);
    v82$2 := (if p0$2 then _HAVOC_bv8$2 else v82$2);
    $$agg.tmp27$2bv32$1 := (if p0$1 then v82$1 else $$agg.tmp27$2bv32$1);
    $$agg.tmp27$2bv32$2 := (if p0$2 then v82$2 else $$agg.tmp27$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v83$1 := (if p0$1 then _HAVOC_bv8$1 else v83$1);
    v83$2 := (if p0$2 then _HAVOC_bv8$2 else v83$2);
    $$agg.tmp27$3bv32$1 := (if p0$1 then v83$1 else $$agg.tmp27$3bv32$1);
    $$agg.tmp27$3bv32$2 := (if p0$2 then v83$2 else $$agg.tmp27$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v84$1 := (if p0$1 then _HAVOC_bv8$1 else v84$1);
    v84$2 := (if p0$2 then _HAVOC_bv8$2 else v84$2);
    $$agg.tmp27$4bv32$1 := (if p0$1 then v84$1 else $$agg.tmp27$4bv32$1);
    $$agg.tmp27$4bv32$2 := (if p0$2 then v84$2 else $$agg.tmp27$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v85$1 := (if p0$1 then _HAVOC_bv8$1 else v85$1);
    v85$2 := (if p0$2 then _HAVOC_bv8$2 else v85$2);
    $$agg.tmp27$5bv32$1 := (if p0$1 then v85$1 else $$agg.tmp27$5bv32$1);
    $$agg.tmp27$5bv32$2 := (if p0$2 then v85$2 else $$agg.tmp27$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v86$1 := (if p0$1 then _HAVOC_bv8$1 else v86$1);
    v86$2 := (if p0$2 then _HAVOC_bv8$2 else v86$2);
    $$agg.tmp27$6bv32$1 := (if p0$1 then v86$1 else $$agg.tmp27$6bv32$1);
    $$agg.tmp27$6bv32$2 := (if p0$2 then v86$2 else $$agg.tmp27$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v87$1 := (if p0$1 then _HAVOC_bv8$1 else v87$1);
    v87$2 := (if p0$2 then _HAVOC_bv8$2 else v87$2);
    $$agg.tmp27$7bv32$1 := (if p0$1 then v87$1 else $$agg.tmp27$7bv32$1);
    $$agg.tmp27$7bv32$2 := (if p0$2 then v87$2 else $$agg.tmp27$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v88$1 := (if p0$1 then _HAVOC_bv8$1 else v88$1);
    v88$2 := (if p0$2 then _HAVOC_bv8$2 else v88$2);
    $$agg.tmp27$8bv32$1 := (if p0$1 then v88$1 else $$agg.tmp27$8bv32$1);
    $$agg.tmp27$8bv32$2 := (if p0$2 then v88$2 else $$agg.tmp27$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v89$1 := (if p0$1 then _HAVOC_bv8$1 else v89$1);
    v89$2 := (if p0$2 then _HAVOC_bv8$2 else v89$2);
    $$agg.tmp27$9bv32$1 := (if p0$1 then v89$1 else $$agg.tmp27$9bv32$1);
    $$agg.tmp27$9bv32$2 := (if p0$2 then v89$2 else $$agg.tmp27$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v90$1 := (if p0$1 then _HAVOC_bv8$1 else v90$1);
    v90$2 := (if p0$2 then _HAVOC_bv8$2 else v90$2);
    $$agg.tmp27$10bv32$1 := (if p0$1 then v90$1 else $$agg.tmp27$10bv32$1);
    $$agg.tmp27$10bv32$2 := (if p0$2 then v90$2 else $$agg.tmp27$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v91$1 := (if p0$1 then _HAVOC_bv8$1 else v91$1);
    v91$2 := (if p0$2 then _HAVOC_bv8$2 else v91$2);
    $$agg.tmp27$11bv32$1 := (if p0$1 then v91$1 else $$agg.tmp27$11bv32$1);
    $$agg.tmp27$11bv32$2 := (if p0$2 then v91$2 else $$agg.tmp27$11bv32$2);
    call {:sourceloc_num 182} v92$1, v92$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp27, 0bv32), p0$1, BV32_ADD(BV32_MUL(12bv32, group_id_x$1), local_id_x$1), p0$2, BV32_ADD(BV32_MUL(12bv32, group_id_x$2), local_id_x$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 183} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(p0$1, local_id_x$1, v92$1, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(p0$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 183} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 183} _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(p0$2, local_id_x$2, v92$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} true;
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][local_id_x$1] := (if p0$1 then v92$1 else $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][local_id_x$1]);
    $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p0$2 then v92$2 else $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 185} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $dEydt.0$1, $dEyds.0$1, $dEydr.0$1, $dExdt.0$1, $dExds.0$1, $dExdr.0$1, $dHzdt.0$1, $dHzds.0$1, $dHzdr.0$1, $dHydt.0$1, $dHyds.0$1, $dHydr.0$1, $dHxdt.0$1, $dHxds.0$1, $dHxdr.0$1, $m.0, $dEzdr.0$1, $dEzds.0$1, $dEzdt.0$1 := 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32;
    $dEydt.0$2, $dEyds.0$2, $dEydr.0$2, $dExdt.0$2, $dExds.0$2, $dExdr.0$2, $dHzdt.0$2, $dHzds.0$2, $dHzdr.0$2, $dHydt.0$2, $dHyds.0$2, $dHydr.0$2, $dHxdt.0$2, $dHxds.0$2, $dHxdr.0$2, $dEzdr.0$2, $dEzds.0$2, $dEzdt.0$2 := 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32, 0bv32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($m.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($m.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($m.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($m.0, 0bv32);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> BV32_AND(BV32_SUB(3bv32, 1bv32), $m.0) == BV32_AND(BV32_SUB(3bv32, 1bv32), 0bv32);
    assert {:block_sourceloc} {:sourceloc_num 186} true;
    v93 := BV32_SUB(84bv32, $m.0) != 0bv32;
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v93;
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 436} true;
    v251$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][0bv32];
    v251$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32];
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 437} true;
    v252$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][1bv32];
    v252$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32];
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 438} true;
    v253$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][2bv32];
    v253$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32];
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 439} true;
    v254$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][4bv32];
    v254$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][4bv32];
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 440} true;
    v255$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][5bv32];
    v255$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][5bv32];
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 441} true;
    v256$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][6bv32];
    v256$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][6bv32];
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 442} true;
    v257$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][8bv32];
    v257$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][8bv32];
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 443} true;
    v258$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][9bv32];
    v258$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][9bv32];
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 444} true;
    v259$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[1bv1][10bv32];
    v259$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][10bv32];
    v260$1 := BV32_ADD(local_id_x$1, BV32_MUL(576bv32, group_id_x$1));
    v260$2 := BV32_ADD(local_id_x$2, BV32_MUL(576bv32, group_id_x$2));
    call {:sourceloc} {:sourceloc_num 445} _LOG_WRITE_$$g_rhsQ(true, v260$1, FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$1, $dEzdr.0$1), FMUL32(v255$1, $dEzds.0$1)), FMUL32(v258$1, $dEzdt.0$1)), FMUL32(v253$1, $dEydr.0$1)), FMUL32(v256$1, $dEyds.0$1)), FMUL32(v259$1, $dEydt.0$1))), $$g_rhsQ[v260$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(true, v260$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 445} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 445} _CHECK_WRITE_$$g_rhsQ(true, v260$2, FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$2, $dEzdr.0$2), FMUL32(v255$2, $dEzds.0$2)), FMUL32(v258$2, $dEzdt.0$2)), FMUL32(v253$2, $dEydr.0$2)), FMUL32(v256$2, $dEyds.0$2)), FMUL32(v259$2, $dEydt.0$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_rhsQ"} true;
    $$g_rhsQ[v260$1] := FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$1, $dEzdr.0$1), FMUL32(v255$1, $dEzds.0$1)), FMUL32(v258$1, $dEzdt.0$1)), FMUL32(v253$1, $dEydr.0$1)), FMUL32(v256$1, $dEyds.0$1)), FMUL32(v259$1, $dEydt.0$1)));
    $$g_rhsQ[v260$2] := FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$2, $dEzdr.0$2), FMUL32(v255$2, $dEzds.0$2)), FMUL32(v258$2, $dEzdt.0$2)), FMUL32(v253$2, $dEydr.0$2)), FMUL32(v256$2, $dEyds.0$2)), FMUL32(v259$2, $dEydt.0$2)));
    call {:sourceloc} {:sourceloc_num 446} _LOG_WRITE_$$g_rhsQ(true, BV32_ADD(v260$1, 96bv32), FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$1, $dExdr.0$1), FMUL32(v256$1, $dExds.0$1)), FMUL32(v259$1, $dExdt.0$1)), FMUL32(v251$1, $dEzdr.0$1)), FMUL32(v254$1, $dEzds.0$1)), FMUL32(v257$1, $dEzdt.0$1))), $$g_rhsQ[BV32_ADD(v260$1, 96bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(true, BV32_ADD(v260$2, 96bv32));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 446} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 446} _CHECK_WRITE_$$g_rhsQ(true, BV32_ADD(v260$2, 96bv32), FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$2, $dExdr.0$2), FMUL32(v256$2, $dExds.0$2)), FMUL32(v259$2, $dExdt.0$2)), FMUL32(v251$2, $dEzdr.0$2)), FMUL32(v254$2, $dEzds.0$2)), FMUL32(v257$2, $dEzdt.0$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_rhsQ"} true;
    $$g_rhsQ[BV32_ADD(v260$1, 96bv32)] := FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$1, $dExdr.0$1), FMUL32(v256$1, $dExds.0$1)), FMUL32(v259$1, $dExdt.0$1)), FMUL32(v251$1, $dEzdr.0$1)), FMUL32(v254$1, $dEzds.0$1)), FMUL32(v257$1, $dEzdt.0$1)));
    $$g_rhsQ[BV32_ADD(v260$2, 96bv32)] := FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$2, $dExdr.0$2), FMUL32(v256$2, $dExds.0$2)), FMUL32(v259$2, $dExdt.0$2)), FMUL32(v251$2, $dEzdr.0$2)), FMUL32(v254$2, $dEzds.0$2)), FMUL32(v257$2, $dEzdt.0$2)));
    call {:sourceloc} {:sourceloc_num 447} _LOG_WRITE_$$g_rhsQ(true, BV32_ADD(v260$1, 192bv32), FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$1, $dEydr.0$1), FMUL32(v254$1, $dEyds.0$1)), FMUL32(v257$1, $dEydt.0$1)), FMUL32(v252$1, $dExdr.0$1)), FMUL32(v255$1, $dExds.0$1)), FMUL32(v258$1, $dExdt.0$1))), $$g_rhsQ[BV32_ADD(v260$1, 192bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(true, BV32_ADD(v260$2, 192bv32));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 447} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 447} _CHECK_WRITE_$$g_rhsQ(true, BV32_ADD(v260$2, 192bv32), FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$2, $dEydr.0$2), FMUL32(v254$2, $dEyds.0$2)), FMUL32(v257$2, $dEydt.0$2)), FMUL32(v252$2, $dExdr.0$2)), FMUL32(v255$2, $dExds.0$2)), FMUL32(v258$2, $dExdt.0$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_rhsQ"} true;
    $$g_rhsQ[BV32_ADD(v260$1, 192bv32)] := FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$1, $dEydr.0$1), FMUL32(v254$1, $dEyds.0$1)), FMUL32(v257$1, $dEydt.0$1)), FMUL32(v252$1, $dExdr.0$1)), FMUL32(v255$1, $dExds.0$1)), FMUL32(v258$1, $dExdt.0$1)));
    $$g_rhsQ[BV32_ADD(v260$2, 192bv32)] := FSUB32(2147483648bv32, FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$2, $dEydr.0$2), FMUL32(v254$2, $dEyds.0$2)), FMUL32(v257$2, $dEydt.0$2)), FMUL32(v252$2, $dExdr.0$2)), FMUL32(v255$2, $dExds.0$2)), FMUL32(v258$2, $dExdt.0$2)));
    call {:sourceloc} {:sourceloc_num 448} _LOG_WRITE_$$g_rhsQ(true, BV32_ADD(v260$1, 288bv32), FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$1, $dHzdr.0$1), FMUL32(v255$1, $dHzds.0$1)), FMUL32(v258$1, $dHzdt.0$1)), FMUL32(v253$1, $dHydr.0$1)), FMUL32(v256$1, $dHyds.0$1)), FMUL32(v259$1, $dHydt.0$1)), $$g_rhsQ[BV32_ADD(v260$1, 288bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(true, BV32_ADD(v260$2, 288bv32));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 448} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 448} _CHECK_WRITE_$$g_rhsQ(true, BV32_ADD(v260$2, 288bv32), FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$2, $dHzdr.0$2), FMUL32(v255$2, $dHzds.0$2)), FMUL32(v258$2, $dHzdt.0$2)), FMUL32(v253$2, $dHydr.0$2)), FMUL32(v256$2, $dHyds.0$2)), FMUL32(v259$2, $dHydt.0$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_rhsQ"} true;
    $$g_rhsQ[BV32_ADD(v260$1, 288bv32)] := FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$1, $dHzdr.0$1), FMUL32(v255$1, $dHzds.0$1)), FMUL32(v258$1, $dHzdt.0$1)), FMUL32(v253$1, $dHydr.0$1)), FMUL32(v256$1, $dHyds.0$1)), FMUL32(v259$1, $dHydt.0$1));
    $$g_rhsQ[BV32_ADD(v260$2, 288bv32)] := FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v252$2, $dHzdr.0$2), FMUL32(v255$2, $dHzds.0$2)), FMUL32(v258$2, $dHzdt.0$2)), FMUL32(v253$2, $dHydr.0$2)), FMUL32(v256$2, $dHyds.0$2)), FMUL32(v259$2, $dHydt.0$2));
    call {:sourceloc} {:sourceloc_num 449} _LOG_WRITE_$$g_rhsQ(true, BV32_ADD(v260$1, 384bv32), FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$1, $dHxdr.0$1), FMUL32(v256$1, $dHxds.0$1)), FMUL32(v259$1, $dHxdt.0$1)), FMUL32(v251$1, $dHzdr.0$1)), FMUL32(v254$1, $dHzds.0$1)), FMUL32(v257$1, $dHzdt.0$1)), $$g_rhsQ[BV32_ADD(v260$1, 384bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(true, BV32_ADD(v260$2, 384bv32));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 449} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 449} _CHECK_WRITE_$$g_rhsQ(true, BV32_ADD(v260$2, 384bv32), FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$2, $dHxdr.0$2), FMUL32(v256$2, $dHxds.0$2)), FMUL32(v259$2, $dHxdt.0$2)), FMUL32(v251$2, $dHzdr.0$2)), FMUL32(v254$2, $dHzds.0$2)), FMUL32(v257$2, $dHzdt.0$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_rhsQ"} true;
    $$g_rhsQ[BV32_ADD(v260$1, 384bv32)] := FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$1, $dHxdr.0$1), FMUL32(v256$1, $dHxds.0$1)), FMUL32(v259$1, $dHxdt.0$1)), FMUL32(v251$1, $dHzdr.0$1)), FMUL32(v254$1, $dHzds.0$1)), FMUL32(v257$1, $dHzdt.0$1));
    $$g_rhsQ[BV32_ADD(v260$2, 384bv32)] := FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v253$2, $dHxdr.0$2), FMUL32(v256$2, $dHxds.0$2)), FMUL32(v259$2, $dHxdt.0$2)), FMUL32(v251$2, $dHzdr.0$2)), FMUL32(v254$2, $dHzds.0$2)), FMUL32(v257$2, $dHzdt.0$2));
    call {:sourceloc} {:sourceloc_num 450} _LOG_WRITE_$$g_rhsQ(true, BV32_ADD(v260$1, 480bv32), FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$1, $dHydr.0$1), FMUL32(v254$1, $dHyds.0$1)), FMUL32(v257$1, $dHydt.0$1)), FMUL32(v252$1, $dHxdr.0$1)), FMUL32(v255$1, $dHxds.0$1)), FMUL32(v258$1, $dHxdt.0$1)), $$g_rhsQ[BV32_ADD(v260$1, 480bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(true, BV32_ADD(v260$2, 480bv32));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 450} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 450} _CHECK_WRITE_$$g_rhsQ(true, BV32_ADD(v260$2, 480bv32), FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$2, $dHydr.0$2), FMUL32(v254$2, $dHyds.0$2)), FMUL32(v257$2, $dHydt.0$2)), FMUL32(v252$2, $dHxdr.0$2)), FMUL32(v255$2, $dHxds.0$2)), FMUL32(v258$2, $dHxdt.0$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_rhsQ"} true;
    $$g_rhsQ[BV32_ADD(v260$1, 480bv32)] := FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$1, $dHydr.0$1), FMUL32(v254$1, $dHyds.0$1)), FMUL32(v257$1, $dHydt.0$1)), FMUL32(v252$1, $dHxdr.0$1)), FMUL32(v255$1, $dHxds.0$1)), FMUL32(v258$1, $dHxdt.0$1));
    $$g_rhsQ[BV32_ADD(v260$2, 480bv32)] := FSUB32(FSUB32(FSUB32(FADD32(FADD32(FMUL32(v251$2, $dHydr.0$2), FMUL32(v254$2, $dHyds.0$2)), FMUL32(v257$2, $dHydt.0$2)), FMUL32(v252$2, $dHxdr.0$2)), FMUL32(v255$2, $dHxds.0$2)), FMUL32(v258$2, $dHxdt.0$2));
    return;

  $truebb0:
    assume {:partition} v93;
    havoc v94$1, v94$2;
    $$agg.tmp32$0bv32$1 := v94$1;
    $$agg.tmp32$0bv32$2 := v94$2;
    havoc v95$1, v95$2;
    $$agg.tmp32$1bv32$1 := v95$1;
    $$agg.tmp32$1bv32$2 := v95$2;
    havoc v96$1, v96$2;
    $$agg.tmp32$2bv32$1 := v96$1;
    $$agg.tmp32$2bv32$2 := v96$2;
    havoc v97$1, v97$2;
    $$agg.tmp32$3bv32$1 := v97$1;
    $$agg.tmp32$3bv32$2 := v97$2;
    havoc v98$1, v98$2;
    $$agg.tmp32$4bv32$1 := v98$1;
    $$agg.tmp32$4bv32$2 := v98$2;
    havoc v99$1, v99$2;
    $$agg.tmp32$5bv32$1 := v99$1;
    $$agg.tmp32$5bv32$2 := v99$2;
    havoc v100$1, v100$2;
    $$agg.tmp32$6bv32$1 := v100$1;
    $$agg.tmp32$6bv32$2 := v100$2;
    havoc v101$1, v101$2;
    $$agg.tmp32$7bv32$1 := v101$1;
    $$agg.tmp32$7bv32$2 := v101$2;
    havoc v102$1, v102$2;
    $$agg.tmp32$8bv32$1 := v102$1;
    $$agg.tmp32$8bv32$2 := v102$2;
    havoc v103$1, v103$2;
    $$agg.tmp32$9bv32$1 := v103$1;
    $$agg.tmp32$9bv32$2 := v103$2;
    havoc v104$1, v104$2;
    $$agg.tmp32$10bv32$1 := v104$1;
    $$agg.tmp32$10bv32$2 := v104$2;
    havoc v105$1, v105$2;
    $$agg.tmp32$11bv32$1 := v105$1;
    $$agg.tmp32$11bv32$2 := v105$2;
    havoc v106$1, v106$2;
    $$agg.tmp32$12bv32$1 := v106$1;
    $$agg.tmp32$12bv32$2 := v106$2;
    havoc v107$1, v107$2;
    $$agg.tmp32$13bv32$1 := v107$1;
    $$agg.tmp32$13bv32$2 := v107$2;
    havoc v108$1, v108$2;
    $$agg.tmp32$14bv32$1 := v108$1;
    $$agg.tmp32$14bv32$2 := v108$2;
    havoc v109$1, v109$2;
    $$agg.tmp32$15bv32$1 := v109$1;
    $$agg.tmp32$15bv32$2 := v109$2;
    havoc v110$1, v110$2;
    $$agg.tmp32$16bv32$1 := v110$1;
    $$agg.tmp32$16bv32$2 := v110$2;
    havoc v111$1, v111$2;
    $$agg.tmp32$17bv32$1 := v111$1;
    $$agg.tmp32$17bv32$2 := v111$2;
    havoc v112$1, v112$2;
    $$agg.tmp32$18bv32$1 := v112$1;
    $$agg.tmp32$18bv32$2 := v112$2;
    havoc v113$1, v113$2;
    $$agg.tmp32$19bv32$1 := v113$1;
    $$agg.tmp32$19bv32$2 := v113$2;
    havoc v114$1, v114$2;
    $$agg.tmp32$20bv32$1 := v114$1;
    $$agg.tmp32$20bv32$2 := v114$2;
    havoc v115$1, v115$2;
    $$agg.tmp32$21bv32$1 := v115$1;
    $$agg.tmp32$21bv32$2 := v115$2;
    havoc v116$1, v116$2;
    $$agg.tmp32$22bv32$1 := v116$1;
    $$agg.tmp32$22bv32$2 := v116$2;
    havoc v117$1, v117$2;
    $$agg.tmp32$23bv32$1 := v117$1;
    $$agg.tmp32$23bv32$2 := v117$2;
    call {:sourceloc_num 236} v118$1, v118$2 := $_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp32, 0bv32), BV32_ADD(local_id_x$1, BV32_MUL($m.0, 96bv32)), BV32_ADD(local_id_x$2, BV32_MUL($m.0, 96bv32)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} true;
    $$D$0bv32$1 := v118$1[32:0];
    $$D$0bv32$2 := v118$2[32:0];
    $$D$1bv32$1 := v118$1[64:32];
    $$D$1bv32$2 := v118$2[64:32];
    $$D$2bv32$1 := v118$1[96:64];
    $$D$2bv32$2 := v118$2[96:64];
    $$D$3bv32$1 := v118$1[128:96];
    $$D$3bv32$2 := v118$2[128:96];
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 241} true;
    v119$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][$m.0];
    v119$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$m.0];
    v120$1 := $$D$0bv32$1;
    v120$2 := $$D$0bv32$2;
    v121$1 := $$D$1bv32$1;
    v121$2 := $$D$1bv32$2;
    v122$1 := $$D$2bv32$1;
    v122$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 245} true;
    v123$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 96bv32)];
    v123$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 96bv32)];
    v124$1 := $$D$0bv32$1;
    v124$2 := $$D$0bv32$2;
    v125$1 := $$D$1bv32$1;
    v125$2 := $$D$1bv32$2;
    v126$1 := $$D$2bv32$1;
    v126$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 249} true;
    v127$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 192bv32)];
    v127$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 192bv32)];
    v128$1 := $$D$0bv32$1;
    v128$2 := $$D$0bv32$2;
    v129$1 := $$D$1bv32$1;
    v129$2 := $$D$1bv32$2;
    v130$1 := $$D$2bv32$1;
    v130$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 253} true;
    v131$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 288bv32)];
    v131$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 288bv32)];
    v132$1 := $$D$0bv32$1;
    v132$2 := $$D$0bv32$2;
    v133$1 := $$D$1bv32$1;
    v133$2 := $$D$1bv32$2;
    v134$1 := $$D$2bv32$1;
    v134$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 257} true;
    v135$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 384bv32)];
    v135$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 384bv32)];
    v136$1 := $$D$0bv32$1;
    v136$2 := $$D$0bv32$2;
    v137$1 := $$D$1bv32$1;
    v137$2 := $$D$1bv32$2;
    v138$1 := $$D$2bv32$1;
    v138$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 261} true;
    v139$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 480bv32)];
    v139$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 480bv32)];
    v140$1 := $$D$0bv32$1;
    v140$2 := $$D$0bv32$2;
    v141$1 := $$D$1bv32$1;
    v141$2 := $$D$1bv32$2;
    v142$1 := $$D$2bv32$1;
    v142$2 := $$D$2bv32$2;
    v143 := BV32_ADD($m.0, 1bv32);
    havoc v144$1, v144$2;
    $$agg.tmp98$0bv32$1 := v144$1;
    $$agg.tmp98$0bv32$2 := v144$2;
    havoc v145$1, v145$2;
    $$agg.tmp98$1bv32$1 := v145$1;
    $$agg.tmp98$1bv32$2 := v145$2;
    havoc v146$1, v146$2;
    $$agg.tmp98$2bv32$1 := v146$1;
    $$agg.tmp98$2bv32$2 := v146$2;
    havoc v147$1, v147$2;
    $$agg.tmp98$3bv32$1 := v147$1;
    $$agg.tmp98$3bv32$2 := v147$2;
    havoc v148$1, v148$2;
    $$agg.tmp98$4bv32$1 := v148$1;
    $$agg.tmp98$4bv32$2 := v148$2;
    havoc v149$1, v149$2;
    $$agg.tmp98$5bv32$1 := v149$1;
    $$agg.tmp98$5bv32$2 := v149$2;
    havoc v150$1, v150$2;
    $$agg.tmp98$6bv32$1 := v150$1;
    $$agg.tmp98$6bv32$2 := v150$2;
    havoc v151$1, v151$2;
    $$agg.tmp98$7bv32$1 := v151$1;
    $$agg.tmp98$7bv32$2 := v151$2;
    havoc v152$1, v152$2;
    $$agg.tmp98$8bv32$1 := v152$1;
    $$agg.tmp98$8bv32$2 := v152$2;
    havoc v153$1, v153$2;
    $$agg.tmp98$9bv32$1 := v153$1;
    $$agg.tmp98$9bv32$2 := v153$2;
    havoc v154$1, v154$2;
    $$agg.tmp98$10bv32$1 := v154$1;
    $$agg.tmp98$10bv32$2 := v154$2;
    havoc v155$1, v155$2;
    $$agg.tmp98$11bv32$1 := v155$1;
    $$agg.tmp98$11bv32$2 := v155$2;
    havoc v156$1, v156$2;
    $$agg.tmp98$12bv32$1 := v156$1;
    $$agg.tmp98$12bv32$2 := v156$2;
    havoc v157$1, v157$2;
    $$agg.tmp98$13bv32$1 := v157$1;
    $$agg.tmp98$13bv32$2 := v157$2;
    havoc v158$1, v158$2;
    $$agg.tmp98$14bv32$1 := v158$1;
    $$agg.tmp98$14bv32$2 := v158$2;
    havoc v159$1, v159$2;
    $$agg.tmp98$15bv32$1 := v159$1;
    $$agg.tmp98$15bv32$2 := v159$2;
    havoc v160$1, v160$2;
    $$agg.tmp98$16bv32$1 := v160$1;
    $$agg.tmp98$16bv32$2 := v160$2;
    havoc v161$1, v161$2;
    $$agg.tmp98$17bv32$1 := v161$1;
    $$agg.tmp98$17bv32$2 := v161$2;
    havoc v162$1, v162$2;
    $$agg.tmp98$18bv32$1 := v162$1;
    $$agg.tmp98$18bv32$2 := v162$2;
    havoc v163$1, v163$2;
    $$agg.tmp98$19bv32$1 := v163$1;
    $$agg.tmp98$19bv32$2 := v163$2;
    havoc v164$1, v164$2;
    $$agg.tmp98$20bv32$1 := v164$1;
    $$agg.tmp98$20bv32$2 := v164$2;
    havoc v165$1, v165$2;
    $$agg.tmp98$21bv32$1 := v165$1;
    $$agg.tmp98$21bv32$2 := v165$2;
    havoc v166$1, v166$2;
    $$agg.tmp98$22bv32$1 := v166$1;
    $$agg.tmp98$22bv32$2 := v166$2;
    havoc v167$1, v167$2;
    $$agg.tmp98$23bv32$1 := v167$1;
    $$agg.tmp98$23bv32$2 := v167$2;
    call {:sourceloc_num 313} v168$1, v168$2 := $_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp98, 0bv32), BV32_ADD(local_id_x$1, BV32_MUL(v143, 96bv32)), BV32_ADD(local_id_x$2, BV32_MUL(v143, 96bv32)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} true;
    $$ref.tmp$0bv32$1 := v168$1[32:0];
    $$ref.tmp$0bv32$2 := v168$2[32:0];
    $$ref.tmp$1bv32$1 := v168$1[64:32];
    $$ref.tmp$1bv32$2 := v168$2[64:32];
    $$ref.tmp$2bv32$1 := v168$1[96:64];
    $$ref.tmp$2bv32$2 := v168$2[96:64];
    $$ref.tmp$3bv32$1 := v168$1[128:96];
    $$ref.tmp$3bv32$2 := v168$2[128:96];
    v169$1 := $$ref.tmp$0bv32$1;
    v169$2 := $$ref.tmp$0bv32$2;
    $$D$0bv32$1 := v169$1;
    $$D$0bv32$2 := v169$2;
    v170$1 := $$ref.tmp$1bv32$1;
    v170$2 := $$ref.tmp$1bv32$2;
    $$D$1bv32$1 := v170$1;
    $$D$1bv32$2 := v170$2;
    v171$1 := $$ref.tmp$2bv32$1;
    v171$2 := $$ref.tmp$2bv32$2;
    $$D$2bv32$1 := v171$1;
    $$D$2bv32$2 := v171$2;
    v172$1 := $$ref.tmp$3bv32$1;
    v172$2 := $$ref.tmp$3bv32$2;
    $$D$3bv32$1 := v172$1;
    $$D$3bv32$2 := v172$2;
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 326} true;
    v173$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][v143];
    v173$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v143];
    v174$1 := $$D$0bv32$1;
    v174$2 := $$D$0bv32$2;
    v175$1 := $$D$1bv32$1;
    v175$2 := $$D$1bv32$2;
    v176$1 := $$D$2bv32$1;
    v176$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 330} true;
    v177$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 97bv32)];
    v177$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 97bv32)];
    v178$1 := $$D$0bv32$1;
    v178$2 := $$D$0bv32$2;
    v179$1 := $$D$1bv32$1;
    v179$2 := $$D$1bv32$2;
    v180$1 := $$D$2bv32$1;
    v180$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 334} true;
    v181$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 193bv32)];
    v181$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 193bv32)];
    v182$1 := $$D$0bv32$1;
    v182$2 := $$D$0bv32$2;
    v183$1 := $$D$1bv32$1;
    v183$2 := $$D$1bv32$2;
    v184$1 := $$D$2bv32$1;
    v184$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 338} true;
    v185$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 289bv32)];
    v185$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 289bv32)];
    v186$1 := $$D$0bv32$1;
    v186$2 := $$D$0bv32$2;
    v187$1 := $$D$1bv32$1;
    v187$2 := $$D$1bv32$2;
    v188$1 := $$D$2bv32$1;
    v188$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 342} true;
    v189$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 385bv32)];
    v189$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 385bv32)];
    v190$1 := $$D$0bv32$1;
    v190$2 := $$D$0bv32$2;
    v191$1 := $$D$1bv32$1;
    v191$2 := $$D$1bv32$2;
    v192$1 := $$D$2bv32$1;
    v192$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 346} true;
    v193$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 481bv32)];
    v193$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 481bv32)];
    v194$1 := $$D$0bv32$1;
    v194$2 := $$D$0bv32$2;
    v195$1 := $$D$1bv32$1;
    v195$2 := $$D$1bv32$2;
    v196$1 := $$D$2bv32$1;
    v196$2 := $$D$2bv32$2;
    v197 := BV32_ADD($m.0, 2bv32);
    havoc v198$1, v198$2;
    $$agg.tmp169$0bv32$1 := v198$1;
    $$agg.tmp169$0bv32$2 := v198$2;
    havoc v199$1, v199$2;
    $$agg.tmp169$1bv32$1 := v199$1;
    $$agg.tmp169$1bv32$2 := v199$2;
    havoc v200$1, v200$2;
    $$agg.tmp169$2bv32$1 := v200$1;
    $$agg.tmp169$2bv32$2 := v200$2;
    havoc v201$1, v201$2;
    $$agg.tmp169$3bv32$1 := v201$1;
    $$agg.tmp169$3bv32$2 := v201$2;
    havoc v202$1, v202$2;
    $$agg.tmp169$4bv32$1 := v202$1;
    $$agg.tmp169$4bv32$2 := v202$2;
    havoc v203$1, v203$2;
    $$agg.tmp169$5bv32$1 := v203$1;
    $$agg.tmp169$5bv32$2 := v203$2;
    havoc v204$1, v204$2;
    $$agg.tmp169$6bv32$1 := v204$1;
    $$agg.tmp169$6bv32$2 := v204$2;
    havoc v205$1, v205$2;
    $$agg.tmp169$7bv32$1 := v205$1;
    $$agg.tmp169$7bv32$2 := v205$2;
    havoc v206$1, v206$2;
    $$agg.tmp169$8bv32$1 := v206$1;
    $$agg.tmp169$8bv32$2 := v206$2;
    havoc v207$1, v207$2;
    $$agg.tmp169$9bv32$1 := v207$1;
    $$agg.tmp169$9bv32$2 := v207$2;
    havoc v208$1, v208$2;
    $$agg.tmp169$10bv32$1 := v208$1;
    $$agg.tmp169$10bv32$2 := v208$2;
    havoc v209$1, v209$2;
    $$agg.tmp169$11bv32$1 := v209$1;
    $$agg.tmp169$11bv32$2 := v209$2;
    havoc v210$1, v210$2;
    $$agg.tmp169$12bv32$1 := v210$1;
    $$agg.tmp169$12bv32$2 := v210$2;
    havoc v211$1, v211$2;
    $$agg.tmp169$13bv32$1 := v211$1;
    $$agg.tmp169$13bv32$2 := v211$2;
    havoc v212$1, v212$2;
    $$agg.tmp169$14bv32$1 := v212$1;
    $$agg.tmp169$14bv32$2 := v212$2;
    havoc v213$1, v213$2;
    $$agg.tmp169$15bv32$1 := v213$1;
    $$agg.tmp169$15bv32$2 := v213$2;
    havoc v214$1, v214$2;
    $$agg.tmp169$16bv32$1 := v214$1;
    $$agg.tmp169$16bv32$2 := v214$2;
    havoc v215$1, v215$2;
    $$agg.tmp169$17bv32$1 := v215$1;
    $$agg.tmp169$17bv32$2 := v215$2;
    havoc v216$1, v216$2;
    $$agg.tmp169$18bv32$1 := v216$1;
    $$agg.tmp169$18bv32$2 := v216$2;
    havoc v217$1, v217$2;
    $$agg.tmp169$19bv32$1 := v217$1;
    $$agg.tmp169$19bv32$2 := v217$2;
    havoc v218$1, v218$2;
    $$agg.tmp169$20bv32$1 := v218$1;
    $$agg.tmp169$20bv32$2 := v218$2;
    havoc v219$1, v219$2;
    $$agg.tmp169$21bv32$1 := v219$1;
    $$agg.tmp169$21bv32$2 := v219$2;
    havoc v220$1, v220$2;
    $$agg.tmp169$22bv32$1 := v220$1;
    $$agg.tmp169$22bv32$2 := v220$2;
    havoc v221$1, v221$2;
    $$agg.tmp169$23bv32$1 := v221$1;
    $$agg.tmp169$23bv32$2 := v221$2;
    call {:sourceloc_num 398} v222$1, v222$2 := $_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp169, 0bv32), BV32_ADD(local_id_x$1, BV32_MUL(v197, 96bv32)), BV32_ADD(local_id_x$2, BV32_MUL(v197, 96bv32)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} true;
    $$ref.tmp168$0bv32$1 := v222$1[32:0];
    $$ref.tmp168$0bv32$2 := v222$2[32:0];
    $$ref.tmp168$1bv32$1 := v222$1[64:32];
    $$ref.tmp168$1bv32$2 := v222$2[64:32];
    $$ref.tmp168$2bv32$1 := v222$1[96:64];
    $$ref.tmp168$2bv32$2 := v222$2[96:64];
    $$ref.tmp168$3bv32$1 := v222$1[128:96];
    $$ref.tmp168$3bv32$2 := v222$2[128:96];
    v223$1 := $$ref.tmp168$0bv32$1;
    v223$2 := $$ref.tmp168$0bv32$2;
    $$D$0bv32$1 := v223$1;
    $$D$0bv32$2 := v223$2;
    v224$1 := $$ref.tmp168$1bv32$1;
    v224$2 := $$ref.tmp168$1bv32$2;
    $$D$1bv32$1 := v224$1;
    $$D$1bv32$2 := v224$2;
    v225$1 := $$ref.tmp168$2bv32$1;
    v225$2 := $$ref.tmp168$2bv32$2;
    $$D$2bv32$1 := v225$1;
    $$D$2bv32$2 := v225$2;
    v226$1 := $$ref.tmp168$3bv32$1;
    v226$2 := $$ref.tmp168$3bv32$2;
    $$D$3bv32$1 := v226$1;
    $$D$3bv32$2 := v226$2;
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 411} true;
    v227$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][v197];
    v227$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v197];
    v228$1 := $$D$0bv32$1;
    v228$2 := $$D$0bv32$2;
    v229$1 := $$D$1bv32$1;
    v229$2 := $$D$1bv32$2;
    v230$1 := $$D$2bv32$1;
    v230$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 415} true;
    v231$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 98bv32)];
    v231$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 98bv32)];
    v232$1 := $$D$0bv32$1;
    v232$2 := $$D$0bv32$2;
    v233$1 := $$D$1bv32$1;
    v233$2 := $$D$1bv32$2;
    v234$1 := $$D$2bv32$1;
    v234$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 419} true;
    v235$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 194bv32)];
    v235$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 194bv32)];
    v236$1 := $$D$0bv32$1;
    v236$2 := $$D$0bv32$2;
    v237$1 := $$D$1bv32$1;
    v237$2 := $$D$1bv32$2;
    v238$1 := $$D$2bv32$1;
    v238$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 423} true;
    v239$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 290bv32)];
    v239$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 290bv32)];
    v240$1 := $$D$0bv32$1;
    v240$2 := $$D$0bv32$2;
    v241$1 := $$D$1bv32$1;
    v241$2 := $$D$1bv32$2;
    v242$1 := $$D$2bv32$1;
    v242$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 427} true;
    v243$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 386bv32)];
    v243$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 386bv32)];
    v244$1 := $$D$0bv32$1;
    v244$2 := $$D$0bv32$2;
    v245$1 := $$D$1bv32$1;
    v245$2 := $$D$1bv32$2;
    v246$1 := $$D$2bv32$1;
    v246$2 := $$D$2bv32$2;
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 431} true;
    v247$1 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[1bv1][BV32_ADD($m.0, 482bv32)];
    v247$2 := $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($m.0, 482bv32)];
    v248$1 := $$D$0bv32$1;
    v248$2 := $$D$0bv32$2;
    v249$1 := $$D$1bv32$1;
    v249$2 := $$D$1bv32$2;
    v250$1 := $$D$2bv32$1;
    v250$2 := $$D$2bv32$2;
    $dEydt.0$1, $dEyds.0$1, $dEydr.0$1, $dExdt.0$1, $dExds.0$1, $dExdr.0$1, $dHzdt.0$1, $dHzds.0$1, $dHzdr.0$1, $dHydt.0$1, $dHyds.0$1, $dHydr.0$1, $dHxdt.0$1, $dHxds.0$1, $dHxdr.0$1, $m.0, $dEzdr.0$1, $dEzds.0$1, $dEzdt.0$1 := FADD32(FADD32(FADD32($dEydt.0$1, FMUL32(v138$1, v135$1)), FMUL32(v192$1, v189$1)), FMUL32(v246$1, v243$1)), FADD32(FADD32(FADD32($dEyds.0$1, FMUL32(v137$1, v135$1)), FMUL32(v191$1, v189$1)), FMUL32(v245$1, v243$1)), FADD32(FADD32(FADD32($dEydr.0$1, FMUL32(v136$1, v135$1)), FMUL32(v190$1, v189$1)), FMUL32(v244$1, v243$1)), FADD32(FADD32(FADD32($dExdt.0$1, FMUL32(v134$1, v131$1)), FMUL32(v188$1, v185$1)), FMUL32(v242$1, v239$1)), FADD32(FADD32(FADD32($dExds.0$1, FMUL32(v133$1, v131$1)), FMUL32(v187$1, v185$1)), FMUL32(v241$1, v239$1)), FADD32(FADD32(FADD32($dExdr.0$1, FMUL32(v132$1, v131$1)), FMUL32(v186$1, v185$1)), FMUL32(v240$1, v239$1)), FADD32(FADD32(FADD32($dHzdt.0$1, FMUL32(v130$1, v127$1)), FMUL32(v184$1, v181$1)), FMUL32(v238$1, v235$1)), FADD32(FADD32(FADD32($dHzds.0$1, FMUL32(v129$1, v127$1)), FMUL32(v183$1, v181$1)), FMUL32(v237$1, v235$1)), FADD32(FADD32(FADD32($dHzdr.0$1, FMUL32(v128$1, v127$1)), FMUL32(v182$1, v181$1)), FMUL32(v236$1, v235$1)), FADD32(FADD32(FADD32($dHydt.0$1, FMUL32(v126$1, v123$1)), FMUL32(v180$1, v177$1)), FMUL32(v234$1, v231$1)), FADD32(FADD32(FADD32($dHyds.0$1, FMUL32(v125$1, v123$1)), FMUL32(v179$1, v177$1)), FMUL32(v233$1, v231$1)), FADD32(FADD32(FADD32($dHydr.0$1, FMUL32(v124$1, v123$1)), FMUL32(v178$1, v177$1)), FMUL32(v232$1, v231$1)), FADD32(FADD32(FADD32($dHxdt.0$1, FMUL32(v122$1, v119$1)), FMUL32(v176$1, v173$1)), FMUL32(v230$1, v227$1)), FADD32(FADD32(FADD32($dHxds.0$1, FMUL32(v121$1, v119$1)), FMUL32(v175$1, v173$1)), FMUL32(v229$1, v227$1)), FADD32(FADD32(FADD32($dHxdr.0$1, FMUL32(v120$1, v119$1)), FMUL32(v174$1, v173$1)), FMUL32(v228$1, v227$1)), BV32_ADD($m.0, 3bv32), FADD32(FADD32(FADD32($dEzdr.0$1, FMUL32(v140$1, v139$1)), FMUL32(v194$1, v193$1)), FMUL32(v248$1, v247$1)), FADD32(FADD32(FADD32($dEzds.0$1, FMUL32(v141$1, v139$1)), FMUL32(v195$1, v193$1)), FMUL32(v249$1, v247$1)), FADD32(FADD32(FADD32($dEzdt.0$1, FMUL32(v142$1, v139$1)), FMUL32(v196$1, v193$1)), FMUL32(v250$1, v247$1));
    $dEydt.0$2, $dEyds.0$2, $dEydr.0$2, $dExdt.0$2, $dExds.0$2, $dExdr.0$2, $dHzdt.0$2, $dHzds.0$2, $dHzdr.0$2, $dHydt.0$2, $dHyds.0$2, $dHydr.0$2, $dHxdt.0$2, $dHxds.0$2, $dHxdr.0$2, $dEzdr.0$2, $dEzds.0$2, $dEzdt.0$2 := FADD32(FADD32(FADD32($dEydt.0$2, FMUL32(v138$2, v135$2)), FMUL32(v192$2, v189$2)), FMUL32(v246$2, v243$2)), FADD32(FADD32(FADD32($dEyds.0$2, FMUL32(v137$2, v135$2)), FMUL32(v191$2, v189$2)), FMUL32(v245$2, v243$2)), FADD32(FADD32(FADD32($dEydr.0$2, FMUL32(v136$2, v135$2)), FMUL32(v190$2, v189$2)), FMUL32(v244$2, v243$2)), FADD32(FADD32(FADD32($dExdt.0$2, FMUL32(v134$2, v131$2)), FMUL32(v188$2, v185$2)), FMUL32(v242$2, v239$2)), FADD32(FADD32(FADD32($dExds.0$2, FMUL32(v133$2, v131$2)), FMUL32(v187$2, v185$2)), FMUL32(v241$2, v239$2)), FADD32(FADD32(FADD32($dExdr.0$2, FMUL32(v132$2, v131$2)), FMUL32(v186$2, v185$2)), FMUL32(v240$2, v239$2)), FADD32(FADD32(FADD32($dHzdt.0$2, FMUL32(v130$2, v127$2)), FMUL32(v184$2, v181$2)), FMUL32(v238$2, v235$2)), FADD32(FADD32(FADD32($dHzds.0$2, FMUL32(v129$2, v127$2)), FMUL32(v183$2, v181$2)), FMUL32(v237$2, v235$2)), FADD32(FADD32(FADD32($dHzdr.0$2, FMUL32(v128$2, v127$2)), FMUL32(v182$2, v181$2)), FMUL32(v236$2, v235$2)), FADD32(FADD32(FADD32($dHydt.0$2, FMUL32(v126$2, v123$2)), FMUL32(v180$2, v177$2)), FMUL32(v234$2, v231$2)), FADD32(FADD32(FADD32($dHyds.0$2, FMUL32(v125$2, v123$2)), FMUL32(v179$2, v177$2)), FMUL32(v233$2, v231$2)), FADD32(FADD32(FADD32($dHydr.0$2, FMUL32(v124$2, v123$2)), FMUL32(v178$2, v177$2)), FMUL32(v232$2, v231$2)), FADD32(FADD32(FADD32($dHxdt.0$2, FMUL32(v122$2, v119$2)), FMUL32(v176$2, v173$2)), FMUL32(v230$2, v227$2)), FADD32(FADD32(FADD32($dHxds.0$2, FMUL32(v121$2, v119$2)), FMUL32(v175$2, v173$2)), FMUL32(v229$2, v227$2)), FADD32(FADD32(FADD32($dHxdr.0$2, FMUL32(v120$2, v119$2)), FMUL32(v174$2, v173$2)), FMUL32(v228$2, v227$2)), FADD32(FADD32(FADD32($dEzdr.0$2, FMUL32(v140$2, v139$2)), FMUL32(v194$2, v193$2)), FMUL32(v248$2, v247$2)), FADD32(FADD32(FADD32($dEzds.0$2, FMUL32(v141$2, v139$2)), FMUL32(v195$2, v193$2)), FMUL32(v249$2, v247$2)), FADD32(FADD32(FADD32($dEzdt.0$2, FMUL32(v142$2, v139$2)), FMUL32(v196$2, v193$2)), FMUL32(v250$2, v247$2));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;
}



procedure {:source_name "_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi($0: ptr, _P$1: bool, $1$1: bv32, _P$2: bool, $1$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



procedure {:source_name "_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchI6float4ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi($0: ptr, $1$1: bv32, $1$2: bv32) returns ($ret$1: bv128, $ret$2: bv128);



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 2bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q, $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs, $$g_rhsQ, _TRACKING;



var $$agg.tmp$0bv32$1: bv8;

var $$agg.tmp$0bv32$2: bv8;

var $$agg.tmp$1bv32$1: bv8;

var $$agg.tmp$1bv32$2: bv8;

var $$agg.tmp$2bv32$1: bv8;

var $$agg.tmp$2bv32$2: bv8;

var $$agg.tmp$3bv32$1: bv8;

var $$agg.tmp$3bv32$2: bv8;

var $$agg.tmp$4bv32$1: bv8;

var $$agg.tmp$4bv32$2: bv8;

var $$agg.tmp$5bv32$1: bv8;

var $$agg.tmp$5bv32$2: bv8;

var $$agg.tmp$6bv32$1: bv8;

var $$agg.tmp$6bv32$2: bv8;

var $$agg.tmp$7bv32$1: bv8;

var $$agg.tmp$7bv32$2: bv8;

var $$agg.tmp$8bv32$1: bv8;

var $$agg.tmp$8bv32$2: bv8;

var $$agg.tmp$9bv32$1: bv8;

var $$agg.tmp$9bv32$2: bv8;

var $$agg.tmp$10bv32$1: bv8;

var $$agg.tmp$10bv32$2: bv8;

var $$agg.tmp$11bv32$1: bv8;

var $$agg.tmp$11bv32$2: bv8;

var $$agg.tmp4$0bv32$1: bv8;

var $$agg.tmp4$0bv32$2: bv8;

var $$agg.tmp4$1bv32$1: bv8;

var $$agg.tmp4$1bv32$2: bv8;

var $$agg.tmp4$2bv32$1: bv8;

var $$agg.tmp4$2bv32$2: bv8;

var $$agg.tmp4$3bv32$1: bv8;

var $$agg.tmp4$3bv32$2: bv8;

var $$agg.tmp4$4bv32$1: bv8;

var $$agg.tmp4$4bv32$2: bv8;

var $$agg.tmp4$5bv32$1: bv8;

var $$agg.tmp4$5bv32$2: bv8;

var $$agg.tmp4$6bv32$1: bv8;

var $$agg.tmp4$6bv32$2: bv8;

var $$agg.tmp4$7bv32$1: bv8;

var $$agg.tmp4$7bv32$2: bv8;

var $$agg.tmp4$8bv32$1: bv8;

var $$agg.tmp4$8bv32$2: bv8;

var $$agg.tmp4$9bv32$1: bv8;

var $$agg.tmp4$9bv32$2: bv8;

var $$agg.tmp4$10bv32$1: bv8;

var $$agg.tmp4$10bv32$2: bv8;

var $$agg.tmp4$11bv32$1: bv8;

var $$agg.tmp4$11bv32$2: bv8;

var $$agg.tmp9$0bv32$1: bv8;

var $$agg.tmp9$0bv32$2: bv8;

var $$agg.tmp9$1bv32$1: bv8;

var $$agg.tmp9$1bv32$2: bv8;

var $$agg.tmp9$2bv32$1: bv8;

var $$agg.tmp9$2bv32$2: bv8;

var $$agg.tmp9$3bv32$1: bv8;

var $$agg.tmp9$3bv32$2: bv8;

var $$agg.tmp9$4bv32$1: bv8;

var $$agg.tmp9$4bv32$2: bv8;

var $$agg.tmp9$5bv32$1: bv8;

var $$agg.tmp9$5bv32$2: bv8;

var $$agg.tmp9$6bv32$1: bv8;

var $$agg.tmp9$6bv32$2: bv8;

var $$agg.tmp9$7bv32$1: bv8;

var $$agg.tmp9$7bv32$2: bv8;

var $$agg.tmp9$8bv32$1: bv8;

var $$agg.tmp9$8bv32$2: bv8;

var $$agg.tmp9$9bv32$1: bv8;

var $$agg.tmp9$9bv32$2: bv8;

var $$agg.tmp9$10bv32$1: bv8;

var $$agg.tmp9$10bv32$2: bv8;

var $$agg.tmp9$11bv32$1: bv8;

var $$agg.tmp9$11bv32$2: bv8;

var $$agg.tmp14$0bv32$1: bv8;

var $$agg.tmp14$0bv32$2: bv8;

var $$agg.tmp14$1bv32$1: bv8;

var $$agg.tmp14$1bv32$2: bv8;

var $$agg.tmp14$2bv32$1: bv8;

var $$agg.tmp14$2bv32$2: bv8;

var $$agg.tmp14$3bv32$1: bv8;

var $$agg.tmp14$3bv32$2: bv8;

var $$agg.tmp14$4bv32$1: bv8;

var $$agg.tmp14$4bv32$2: bv8;

var $$agg.tmp14$5bv32$1: bv8;

var $$agg.tmp14$5bv32$2: bv8;

var $$agg.tmp14$6bv32$1: bv8;

var $$agg.tmp14$6bv32$2: bv8;

var $$agg.tmp14$7bv32$1: bv8;

var $$agg.tmp14$7bv32$2: bv8;

var $$agg.tmp14$8bv32$1: bv8;

var $$agg.tmp14$8bv32$2: bv8;

var $$agg.tmp14$9bv32$1: bv8;

var $$agg.tmp14$9bv32$2: bv8;

var $$agg.tmp14$10bv32$1: bv8;

var $$agg.tmp14$10bv32$2: bv8;

var $$agg.tmp14$11bv32$1: bv8;

var $$agg.tmp14$11bv32$2: bv8;

var $$agg.tmp19$0bv32$1: bv8;

var $$agg.tmp19$0bv32$2: bv8;

var $$agg.tmp19$1bv32$1: bv8;

var $$agg.tmp19$1bv32$2: bv8;

var $$agg.tmp19$2bv32$1: bv8;

var $$agg.tmp19$2bv32$2: bv8;

var $$agg.tmp19$3bv32$1: bv8;

var $$agg.tmp19$3bv32$2: bv8;

var $$agg.tmp19$4bv32$1: bv8;

var $$agg.tmp19$4bv32$2: bv8;

var $$agg.tmp19$5bv32$1: bv8;

var $$agg.tmp19$5bv32$2: bv8;

var $$agg.tmp19$6bv32$1: bv8;

var $$agg.tmp19$6bv32$2: bv8;

var $$agg.tmp19$7bv32$1: bv8;

var $$agg.tmp19$7bv32$2: bv8;

var $$agg.tmp19$8bv32$1: bv8;

var $$agg.tmp19$8bv32$2: bv8;

var $$agg.tmp19$9bv32$1: bv8;

var $$agg.tmp19$9bv32$2: bv8;

var $$agg.tmp19$10bv32$1: bv8;

var $$agg.tmp19$10bv32$2: bv8;

var $$agg.tmp19$11bv32$1: bv8;

var $$agg.tmp19$11bv32$2: bv8;

var $$agg.tmp24$0bv32$1: bv8;

var $$agg.tmp24$0bv32$2: bv8;

var $$agg.tmp24$1bv32$1: bv8;

var $$agg.tmp24$1bv32$2: bv8;

var $$agg.tmp24$2bv32$1: bv8;

var $$agg.tmp24$2bv32$2: bv8;

var $$agg.tmp24$3bv32$1: bv8;

var $$agg.tmp24$3bv32$2: bv8;

var $$agg.tmp24$4bv32$1: bv8;

var $$agg.tmp24$4bv32$2: bv8;

var $$agg.tmp24$5bv32$1: bv8;

var $$agg.tmp24$5bv32$2: bv8;

var $$agg.tmp24$6bv32$1: bv8;

var $$agg.tmp24$6bv32$2: bv8;

var $$agg.tmp24$7bv32$1: bv8;

var $$agg.tmp24$7bv32$2: bv8;

var $$agg.tmp24$8bv32$1: bv8;

var $$agg.tmp24$8bv32$2: bv8;

var $$agg.tmp24$9bv32$1: bv8;

var $$agg.tmp24$9bv32$2: bv8;

var $$agg.tmp24$10bv32$1: bv8;

var $$agg.tmp24$10bv32$2: bv8;

var $$agg.tmp24$11bv32$1: bv8;

var $$agg.tmp24$11bv32$2: bv8;

var $$agg.tmp27$0bv32$1: bv8;

var $$agg.tmp27$0bv32$2: bv8;

var $$agg.tmp27$1bv32$1: bv8;

var $$agg.tmp27$1bv32$2: bv8;

var $$agg.tmp27$2bv32$1: bv8;

var $$agg.tmp27$2bv32$2: bv8;

var $$agg.tmp27$3bv32$1: bv8;

var $$agg.tmp27$3bv32$2: bv8;

var $$agg.tmp27$4bv32$1: bv8;

var $$agg.tmp27$4bv32$2: bv8;

var $$agg.tmp27$5bv32$1: bv8;

var $$agg.tmp27$5bv32$2: bv8;

var $$agg.tmp27$6bv32$1: bv8;

var $$agg.tmp27$6bv32$2: bv8;

var $$agg.tmp27$7bv32$1: bv8;

var $$agg.tmp27$7bv32$2: bv8;

var $$agg.tmp27$8bv32$1: bv8;

var $$agg.tmp27$8bv32$2: bv8;

var $$agg.tmp27$9bv32$1: bv8;

var $$agg.tmp27$9bv32$2: bv8;

var $$agg.tmp27$10bv32$1: bv8;

var $$agg.tmp27$10bv32$2: bv8;

var $$agg.tmp27$11bv32$1: bv8;

var $$agg.tmp27$11bv32$2: bv8;

var $$D$0bv32$1: bv32;

var $$D$0bv32$2: bv32;

var $$D$1bv32$1: bv32;

var $$D$1bv32$2: bv32;

var $$D$2bv32$1: bv32;

var $$D$2bv32$2: bv32;

var $$D$3bv32$1: bv32;

var $$D$3bv32$2: bv32;

var $$agg.tmp32$0bv32$1: bv8;

var $$agg.tmp32$0bv32$2: bv8;

var $$agg.tmp32$1bv32$1: bv8;

var $$agg.tmp32$1bv32$2: bv8;

var $$agg.tmp32$2bv32$1: bv8;

var $$agg.tmp32$2bv32$2: bv8;

var $$agg.tmp32$3bv32$1: bv8;

var $$agg.tmp32$3bv32$2: bv8;

var $$agg.tmp32$4bv32$1: bv8;

var $$agg.tmp32$4bv32$2: bv8;

var $$agg.tmp32$5bv32$1: bv8;

var $$agg.tmp32$5bv32$2: bv8;

var $$agg.tmp32$6bv32$1: bv8;

var $$agg.tmp32$6bv32$2: bv8;

var $$agg.tmp32$7bv32$1: bv8;

var $$agg.tmp32$7bv32$2: bv8;

var $$agg.tmp32$8bv32$1: bv8;

var $$agg.tmp32$8bv32$2: bv8;

var $$agg.tmp32$9bv32$1: bv8;

var $$agg.tmp32$9bv32$2: bv8;

var $$agg.tmp32$10bv32$1: bv8;

var $$agg.tmp32$10bv32$2: bv8;

var $$agg.tmp32$11bv32$1: bv8;

var $$agg.tmp32$11bv32$2: bv8;

var $$agg.tmp32$12bv32$1: bv8;

var $$agg.tmp32$12bv32$2: bv8;

var $$agg.tmp32$13bv32$1: bv8;

var $$agg.tmp32$13bv32$2: bv8;

var $$agg.tmp32$14bv32$1: bv8;

var $$agg.tmp32$14bv32$2: bv8;

var $$agg.tmp32$15bv32$1: bv8;

var $$agg.tmp32$15bv32$2: bv8;

var $$agg.tmp32$16bv32$1: bv8;

var $$agg.tmp32$16bv32$2: bv8;

var $$agg.tmp32$17bv32$1: bv8;

var $$agg.tmp32$17bv32$2: bv8;

var $$agg.tmp32$18bv32$1: bv8;

var $$agg.tmp32$18bv32$2: bv8;

var $$agg.tmp32$19bv32$1: bv8;

var $$agg.tmp32$19bv32$2: bv8;

var $$agg.tmp32$20bv32$1: bv8;

var $$agg.tmp32$20bv32$2: bv8;

var $$agg.tmp32$21bv32$1: bv8;

var $$agg.tmp32$21bv32$2: bv8;

var $$agg.tmp32$22bv32$1: bv8;

var $$agg.tmp32$22bv32$2: bv8;

var $$agg.tmp32$23bv32$1: bv8;

var $$agg.tmp32$23bv32$2: bv8;

var $$ref.tmp$0bv32$1: bv32;

var $$ref.tmp$0bv32$2: bv32;

var $$ref.tmp$1bv32$1: bv32;

var $$ref.tmp$1bv32$2: bv32;

var $$ref.tmp$2bv32$1: bv32;

var $$ref.tmp$2bv32$2: bv32;

var $$ref.tmp$3bv32$1: bv32;

var $$ref.tmp$3bv32$2: bv32;

var $$agg.tmp98$0bv32$1: bv8;

var $$agg.tmp98$0bv32$2: bv8;

var $$agg.tmp98$1bv32$1: bv8;

var $$agg.tmp98$1bv32$2: bv8;

var $$agg.tmp98$2bv32$1: bv8;

var $$agg.tmp98$2bv32$2: bv8;

var $$agg.tmp98$3bv32$1: bv8;

var $$agg.tmp98$3bv32$2: bv8;

var $$agg.tmp98$4bv32$1: bv8;

var $$agg.tmp98$4bv32$2: bv8;

var $$agg.tmp98$5bv32$1: bv8;

var $$agg.tmp98$5bv32$2: bv8;

var $$agg.tmp98$6bv32$1: bv8;

var $$agg.tmp98$6bv32$2: bv8;

var $$agg.tmp98$7bv32$1: bv8;

var $$agg.tmp98$7bv32$2: bv8;

var $$agg.tmp98$8bv32$1: bv8;

var $$agg.tmp98$8bv32$2: bv8;

var $$agg.tmp98$9bv32$1: bv8;

var $$agg.tmp98$9bv32$2: bv8;

var $$agg.tmp98$10bv32$1: bv8;

var $$agg.tmp98$10bv32$2: bv8;

var $$agg.tmp98$11bv32$1: bv8;

var $$agg.tmp98$11bv32$2: bv8;

var $$agg.tmp98$12bv32$1: bv8;

var $$agg.tmp98$12bv32$2: bv8;

var $$agg.tmp98$13bv32$1: bv8;

var $$agg.tmp98$13bv32$2: bv8;

var $$agg.tmp98$14bv32$1: bv8;

var $$agg.tmp98$14bv32$2: bv8;

var $$agg.tmp98$15bv32$1: bv8;

var $$agg.tmp98$15bv32$2: bv8;

var $$agg.tmp98$16bv32$1: bv8;

var $$agg.tmp98$16bv32$2: bv8;

var $$agg.tmp98$17bv32$1: bv8;

var $$agg.tmp98$17bv32$2: bv8;

var $$agg.tmp98$18bv32$1: bv8;

var $$agg.tmp98$18bv32$2: bv8;

var $$agg.tmp98$19bv32$1: bv8;

var $$agg.tmp98$19bv32$2: bv8;

var $$agg.tmp98$20bv32$1: bv8;

var $$agg.tmp98$20bv32$2: bv8;

var $$agg.tmp98$21bv32$1: bv8;

var $$agg.tmp98$21bv32$2: bv8;

var $$agg.tmp98$22bv32$1: bv8;

var $$agg.tmp98$22bv32$2: bv8;

var $$agg.tmp98$23bv32$1: bv8;

var $$agg.tmp98$23bv32$2: bv8;

var $$ref.tmp168$0bv32$1: bv32;

var $$ref.tmp168$0bv32$2: bv32;

var $$ref.tmp168$1bv32$1: bv32;

var $$ref.tmp168$1bv32$2: bv32;

var $$ref.tmp168$2bv32$1: bv32;

var $$ref.tmp168$2bv32$2: bv32;

var $$ref.tmp168$3bv32$1: bv32;

var $$ref.tmp168$3bv32$2: bv32;

var $$agg.tmp169$0bv32$1: bv8;

var $$agg.tmp169$0bv32$2: bv8;

var $$agg.tmp169$1bv32$1: bv8;

var $$agg.tmp169$1bv32$2: bv8;

var $$agg.tmp169$2bv32$1: bv8;

var $$agg.tmp169$2bv32$2: bv8;

var $$agg.tmp169$3bv32$1: bv8;

var $$agg.tmp169$3bv32$2: bv8;

var $$agg.tmp169$4bv32$1: bv8;

var $$agg.tmp169$4bv32$2: bv8;

var $$agg.tmp169$5bv32$1: bv8;

var $$agg.tmp169$5bv32$2: bv8;

var $$agg.tmp169$6bv32$1: bv8;

var $$agg.tmp169$6bv32$2: bv8;

var $$agg.tmp169$7bv32$1: bv8;

var $$agg.tmp169$7bv32$2: bv8;

var $$agg.tmp169$8bv32$1: bv8;

var $$agg.tmp169$8bv32$2: bv8;

var $$agg.tmp169$9bv32$1: bv8;

var $$agg.tmp169$9bv32$2: bv8;

var $$agg.tmp169$10bv32$1: bv8;

var $$agg.tmp169$10bv32$2: bv8;

var $$agg.tmp169$11bv32$1: bv8;

var $$agg.tmp169$11bv32$2: bv8;

var $$agg.tmp169$12bv32$1: bv8;

var $$agg.tmp169$12bv32$2: bv8;

var $$agg.tmp169$13bv32$1: bv8;

var $$agg.tmp169$13bv32$2: bv8;

var $$agg.tmp169$14bv32$1: bv8;

var $$agg.tmp169$14bv32$2: bv8;

var $$agg.tmp169$15bv32$1: bv8;

var $$agg.tmp169$15bv32$2: bv8;

var $$agg.tmp169$16bv32$1: bv8;

var $$agg.tmp169$16bv32$2: bv8;

var $$agg.tmp169$17bv32$1: bv8;

var $$agg.tmp169$17bv32$2: bv8;

var $$agg.tmp169$18bv32$1: bv8;

var $$agg.tmp169$18bv32$2: bv8;

var $$agg.tmp169$19bv32$1: bv8;

var $$agg.tmp169$19bv32$2: bv8;

var $$agg.tmp169$20bv32$1: bv8;

var $$agg.tmp169$20bv32$2: bv8;

var $$agg.tmp169$21bv32$1: bv8;

var $$agg.tmp169$21bv32$2: bv8;

var $$agg.tmp169$22bv32$1: bv8;

var $$agg.tmp169$22bv32$2: bv8;

var $$agg.tmp169$23bv32$1: bv8;

var $$agg.tmp169$23bv32$2: bv8;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

const {:existential true} _b0: bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

const _WATCHED_VALUE_$$g_rhsQ: bv32;

procedure {:inline 1} _LOG_READ_$$g_rhsQ(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_rhsQ;



implementation {:inline 1} _LOG_READ_$$g_rhsQ(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_rhsQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_rhsQ == _value then true else _READ_HAS_OCCURRED_$$g_rhsQ);
    return;
}



procedure _CHECK_READ_$$g_rhsQ(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_rhsQ"} {:array "$$g_rhsQ"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_rhsQ);
  requires {:source_name "g_rhsQ"} {:array "$$g_rhsQ"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_rhsQ: bool;

procedure {:inline 1} _LOG_WRITE_$$g_rhsQ(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_rhsQ, _WRITE_READ_BENIGN_FLAG_$$g_rhsQ;



implementation {:inline 1} _LOG_WRITE_$$g_rhsQ(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_rhsQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_rhsQ == _value then true else _WRITE_HAS_OCCURRED_$$g_rhsQ);
    _WRITE_READ_BENIGN_FLAG_$$g_rhsQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_rhsQ == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_rhsQ);
    return;
}



procedure _CHECK_WRITE_$$g_rhsQ(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_rhsQ"} {:array "$$g_rhsQ"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_rhsQ != _value);
  requires {:source_name "g_rhsQ"} {:array "$$g_rhsQ"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_rhsQ != _value);
  requires {:source_name "g_rhsQ"} {:array "$$g_rhsQ"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_rhsQ(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_rhsQ;



implementation {:inline 1} _LOG_ATOMIC_$$g_rhsQ(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_rhsQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_rhsQ);
    return;
}



procedure _CHECK_ATOMIC_$$g_rhsQ(_P: bool, _offset: bv32);
  requires {:source_name "g_rhsQ"} {:array "$$g_rhsQ"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_rhsQ"} {:array "$$g_rhsQ"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_rhsQ;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_rhsQ(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_rhsQ := (if _P && _WRITE_HAS_OCCURRED_$$g_rhsQ && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_rhsQ);
    return;
}



const _WATCHED_VALUE_$$t_Q: bv8;

procedure {:inline 1} _LOG_READ_$$t_Q(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$t_Q;



implementation {:inline 1} _LOG_READ_$$t_Q(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q == _value then true else _READ_HAS_OCCURRED_$$t_Q);
    return;
}



procedure _CHECK_READ_$$t_Q(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$t_Q);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$t_Q: bool;

procedure {:inline 1} _LOG_WRITE_$$t_Q(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$t_Q, _WRITE_READ_BENIGN_FLAG_$$t_Q;



implementation {:inline 1} _LOG_WRITE_$$t_Q(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q == _value then true else _WRITE_HAS_OCCURRED_$$t_Q);
    _WRITE_READ_BENIGN_FLAG_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$t_Q);
    return;
}



procedure _CHECK_WRITE_$$t_Q(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q != _value);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q != _value);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$t_Q(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$t_Q;



implementation {:inline 1} _LOG_ATOMIC_$$t_Q(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$t_Q);
    return;
}



procedure _CHECK_ATOMIC_$$t_Q(_P: bool, _offset: bv32);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_Q(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$t_Q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_Q(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$t_Q := (if _P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$t_Q);
    return;
}



const _WATCHED_VALUE_$$t_vgeo: bv8;

procedure {:inline 1} _LOG_READ_$$t_vgeo(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$t_vgeo;



implementation {:inline 1} _LOG_READ_$$t_vgeo(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$t_vgeo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_vgeo == _value then true else _READ_HAS_OCCURRED_$$t_vgeo);
    return;
}



procedure _CHECK_READ_$$t_vgeo(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "t_vgeo"} {:array "$$t_vgeo"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$t_vgeo);
  requires {:source_name "t_vgeo"} {:array "$$t_vgeo"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$t_vgeo: bool;

procedure {:inline 1} _LOG_WRITE_$$t_vgeo(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$t_vgeo, _WRITE_READ_BENIGN_FLAG_$$t_vgeo;



implementation {:inline 1} _LOG_WRITE_$$t_vgeo(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$t_vgeo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_vgeo == _value then true else _WRITE_HAS_OCCURRED_$$t_vgeo);
    _WRITE_READ_BENIGN_FLAG_$$t_vgeo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_vgeo == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$t_vgeo);
    return;
}



procedure _CHECK_WRITE_$$t_vgeo(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "t_vgeo"} {:array "$$t_vgeo"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_vgeo != _value);
  requires {:source_name "t_vgeo"} {:array "$$t_vgeo"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_vgeo != _value);
  requires {:source_name "t_vgeo"} {:array "$$t_vgeo"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$t_vgeo(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$t_vgeo;



implementation {:inline 1} _LOG_ATOMIC_$$t_vgeo(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$t_vgeo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$t_vgeo);
    return;
}



procedure _CHECK_ATOMIC_$$t_vgeo(_P: bool, _offset: bv32);
  requires {:source_name "t_vgeo"} {:array "$$t_vgeo"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset);
  requires {:source_name "t_vgeo"} {:array "$$t_vgeo"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_vgeo(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$t_vgeo;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_vgeo(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$t_vgeo := (if _P && _WRITE_HAS_OCCURRED_$$t_vgeo && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$t_vgeo);
    return;
}



const _WATCHED_VALUE_$$t_DrDsDt: bv8;

procedure {:inline 1} _LOG_READ_$$t_DrDsDt(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$t_DrDsDt;



implementation {:inline 1} _LOG_READ_$$t_DrDsDt(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$t_DrDsDt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_DrDsDt == _value then true else _READ_HAS_OCCURRED_$$t_DrDsDt);
    return;
}



procedure _CHECK_READ_$$t_DrDsDt(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "t_DrDsDt"} {:array "$$t_DrDsDt"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt);
  requires {:source_name "t_DrDsDt"} {:array "$$t_DrDsDt"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt: bool;

procedure {:inline 1} _LOG_WRITE_$$t_DrDsDt(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$t_DrDsDt, _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt;



implementation {:inline 1} _LOG_WRITE_$$t_DrDsDt(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$t_DrDsDt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_DrDsDt == _value then true else _WRITE_HAS_OCCURRED_$$t_DrDsDt);
    _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_DrDsDt == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt);
    return;
}



procedure _CHECK_WRITE_$$t_DrDsDt(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "t_DrDsDt"} {:array "$$t_DrDsDt"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_DrDsDt != _value);
  requires {:source_name "t_DrDsDt"} {:array "$$t_DrDsDt"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_DrDsDt != _value);
  requires {:source_name "t_DrDsDt"} {:array "$$t_DrDsDt"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$t_DrDsDt(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$t_DrDsDt;



implementation {:inline 1} _LOG_ATOMIC_$$t_DrDsDt(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$t_DrDsDt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$t_DrDsDt);
    return;
}



procedure _CHECK_ATOMIC_$$t_DrDsDt(_P: bool, _offset: bv32);
  requires {:source_name "t_DrDsDt"} {:array "$$t_DrDsDt"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset);
  requires {:source_name "t_DrDsDt"} {:array "$$t_DrDsDt"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_DrDsDt(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_DrDsDt(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt := (if _P && _WRITE_HAS_OCCURRED_$$t_DrDsDt && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$t_DrDsDt);
    return;
}



const _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;



implementation {:inline 1} _LOG_READ_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q == _value then true else _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q);
    return;
}



procedure _CHECK_READ_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_Q"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Q"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q, _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;



implementation {:inline 1} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q);
    return;
}



procedure _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_Q"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Q"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Q"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32);
  requires {:source_name "s_Q"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Q"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q);
    return;
}



const _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;



implementation {:inline 1} _LOG_READ_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs == _value then true else _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs);
    return;
}



procedure _CHECK_READ_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_facs"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_facs"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs, _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;



implementation {:inline 1} _LOG_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs);
    return;
}



procedure _CHECK_WRITE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_facs"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_facs"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_facs"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32);
  requires {:source_name "s_facs"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_facs"} {:array "$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_rhsQ;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_rhsQ;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_rhsQ;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_rhsQ;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE3s_Q;
    goto anon4;

  anon4:
    havoc $$_ZZ24MaxwellsGPU_VOL_Kernel3DPfE6s_facs;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;
