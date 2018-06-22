type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "elements_surrounding_elements"} {:global} $$elements_surrounding_elements: [int]int;

axiom {:array_info "$$elements_surrounding_elements"} {:global} {:elem_width 32} {:source_name "elements_surrounding_elements"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$elements_surrounding_elements: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$elements_surrounding_elements: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$elements_surrounding_elements: bool;

axiom {:array_info "$$normals"} {:global} {:elem_width 32} {:source_name "normals"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$normals: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$normals: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$normals: bool;

axiom {:array_info "$$variables"} {:global} {:elem_width 32} {:source_name "variables"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$variables: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$variables: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$variables: bool;

var {:source_name "ff_variable"} {:constant} $$ff_variable$1: [int]int;

var {:source_name "ff_variable"} {:constant} $$ff_variable$2: [int]int;

axiom {:array_info "$$ff_variable"} {:constant} {:elem_width 32} {:source_name "ff_variable"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "fluxes"} {:global} $$fluxes: [int]int;

axiom {:array_info "$$fluxes"} {:global} {:elem_width 32} {:source_name "fluxes"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$fluxes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$fluxes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$fluxes: bool;

var {:source_name "ff_flux_contribution_density_energy"} {:constant} $$ff_flux_contribution_density_energy$1: [int]int;

var {:source_name "ff_flux_contribution_density_energy"} {:constant} $$ff_flux_contribution_density_energy$2: [int]int;

axiom {:array_info "$$ff_flux_contribution_density_energy"} {:constant} {:elem_width 32} {:source_name "ff_flux_contribution_density_energy"} {:source_elem_width 96} {:source_dimensions "*"} true;

var {:source_name "ff_flux_contribution_momentum_x"} {:constant} $$ff_flux_contribution_momentum_x$1: [int]int;

var {:source_name "ff_flux_contribution_momentum_x"} {:constant} $$ff_flux_contribution_momentum_x$2: [int]int;

axiom {:array_info "$$ff_flux_contribution_momentum_x"} {:constant} {:elem_width 32} {:source_name "ff_flux_contribution_momentum_x"} {:source_elem_width 96} {:source_dimensions "*"} true;

var {:source_name "ff_flux_contribution_momentum_y"} {:constant} $$ff_flux_contribution_momentum_y$1: [int]int;

var {:source_name "ff_flux_contribution_momentum_y"} {:constant} $$ff_flux_contribution_momentum_y$2: [int]int;

axiom {:array_info "$$ff_flux_contribution_momentum_y"} {:constant} {:elem_width 32} {:source_name "ff_flux_contribution_momentum_y"} {:source_elem_width 96} {:source_dimensions "*"} true;

var {:source_name "ff_flux_contribution_momentum_z"} {:constant} $$ff_flux_contribution_momentum_z$1: [int]int;

var {:source_name "ff_flux_contribution_momentum_z"} {:constant} $$ff_flux_contribution_momentum_z$2: [int]int;

axiom {:array_info "$$ff_flux_contribution_momentum_z"} {:constant} {:elem_width 32} {:source_name "ff_flux_contribution_momentum_z"} {:source_elem_width 96} {:source_dimensions "*"} true;

axiom {:array_info "$$momentum.i5"} {:elem_width 32} {:source_name "momentum.i5"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$velocity.i6"} {:elem_width 32} {:source_name "velocity.i6"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$momentum.i4"} {:elem_width 32} {:source_name "momentum.i4"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$velocity.i3"} {:elem_width 32} {:source_name "velocity.i3"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$momentum.i1"} {:elem_width 32} {:source_name "momentum.i1"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$velocity.i2"} {:elem_width 32} {:source_name "velocity.i2"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$velocity.i"} {:elem_width 32} {:source_name "velocity.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$momentum.i"} {:elem_width 32} {:source_name "momentum.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$normal"} {:elem_width 32} {:source_name "normal"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$momentum_i"} {:elem_width 32} {:source_name "momentum_i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$velocity_i"} {:elem_width 32} {:source_name "velocity_i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_i_momentum_x"} {:elem_width 32} {:source_name "flux_contribution_i_momentum_x"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_i_momentum_y"} {:elem_width 32} {:source_name "flux_contribution_i_momentum_y"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_i_momentum_z"} {:elem_width 32} {:source_name "flux_contribution_i_momentum_z"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_i_density_energy"} {:elem_width 32} {:source_name "flux_contribution_i_density_energy"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_i_momentum"} {:elem_width 32} {:source_name "flux_i_momentum"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$velocity_nb"} {:elem_width 32} {:source_name "velocity_nb"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$momentum_nb"} {:elem_width 32} {:source_name "momentum_nb"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_nb_momentum_x"} {:elem_width 32} {:source_name "flux_contribution_nb_momentum_x"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_nb_momentum_y"} {:elem_width 32} {:source_name "flux_contribution_nb_momentum_y"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_nb_momentum_z"} {:elem_width 32} {:source_name "flux_contribution_nb_momentum_z"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$flux_contribution_nb_density_energy"} {:elem_width 32} {:source_name "flux_contribution_nb_density_energy"} {:source_elem_width 96} {:source_dimensions "1"} true;

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

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "compute_flux"} {:kernel} $compute_flux($nelr: int);
  requires {:sourceloc_num 0} {:thread 1} (if $nelr == 97152 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$elements_surrounding_elements && !_WRITE_HAS_OCCURRED_$$elements_surrounding_elements && !_ATOMIC_HAS_OCCURRED_$$elements_surrounding_elements;
  requires !_READ_HAS_OCCURRED_$$normals && !_WRITE_HAS_OCCURRED_$$normals && !_ATOMIC_HAS_OCCURRED_$$normals;
  requires !_READ_HAS_OCCURRED_$$variables && !_WRITE_HAS_OCCURRED_$$variables && !_ATOMIC_HAS_OCCURRED_$$variables;
  requires !_READ_HAS_OCCURRED_$$fluxes && !_WRITE_HAS_OCCURRED_$$fluxes && !_ATOMIC_HAS_OCCURRED_$$fluxes;
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
  modifies _WRITE_HAS_OCCURRED_$$fluxes, _WRITE_READ_BENIGN_FLAG_$$fluxes, _WRITE_READ_BENIGN_FLAG_$$fluxes;



implementation {:source_name "compute_flux"} {:kernel} $compute_flux($nelr: int)
{
  var $j.0: int;
  var $flux_i_density.0$1: int;
  var $flux_i_density.0$2: int;
  var $flux_i_density_energy.0$1: int;
  var $flux_i_density_energy.0$2: int;
  var $flux_i_density.3$1: int;
  var $flux_i_density.3$2: int;
  var $flux_i_density_energy.3$1: int;
  var $flux_i_density_energy.3$2: int;
  var $flux_i_density.2$1: int;
  var $flux_i_density.2$2: int;
  var $flux_i_density_energy.2$1: int;
  var $flux_i_density_energy.2$2: int;
  var $flux_i_density.1$1: int;
  var $flux_i_density.1$2: int;
  var $flux_i_density_energy.1$1: int;
  var $flux_i_density_energy.1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v185$1: int;
  var v185$2: int;
  var v186$1: int;
  var v186$2: int;
  var v187$1: int;
  var v187$2: int;
  var v188$1: int;
  var v188$2: int;
  var v189$1: int;
  var v189$2: int;
  var v208$1: int;
  var v208$2: int;
  var v6$1: int;
  var v6$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
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
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48: bool;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
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
  var v59$1: bool;
  var v59$2: bool;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
  var v73$1: int;
  var v73$2: int;
  var v74$1: int;
  var v74$2: int;
  var v75$1: int;
  var v75$2: int;
  var v76$1: int;
  var v76$2: int;
  var v77$1: int;
  var v77$2: int;
  var v78$1: int;
  var v78$2: int;
  var v79$1: int;
  var v79$2: int;
  var v80$1: int;
  var v80$2: int;
  var v81$1: int;
  var v81$2: int;
  var v82$1: int;
  var v82$2: int;
  var v83$1: int;
  var v83$2: int;
  var v84$1: int;
  var v84$2: int;
  var v85$1: int;
  var v85$2: int;
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
  var v128$1: int;
  var v128$2: int;
  var v94$1: int;
  var v94$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: int;
  var v97$2: int;
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
  var v103$1: int;
  var v103$2: int;
  var v104$1: int;
  var v104$2: int;
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v107$1: int;
  var v107$2: int;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
  var v110$1: int;
  var v110$2: int;
  var v111$1: int;
  var v111$2: int;
  var v112$1: int;
  var v112$2: int;
  var v113$1: int;
  var v113$2: int;
  var v114$1: int;
  var v114$2: int;
  var v115$1: int;
  var v115$2: int;
  var v116$1: int;
  var v116$2: int;
  var v117$1: int;
  var v117$2: int;
  var v118$1: int;
  var v118$2: int;
  var v119$1: int;
  var v119$2: int;
  var v120$1: int;
  var v120$2: int;
  var v121$1: int;
  var v121$2: int;
  var v122$1: int;
  var v122$2: int;
  var v123$1: int;
  var v123$2: int;
  var v124$1: int;
  var v124$2: int;
  var v125$1: int;
  var v125$2: int;
  var v126$1: int;
  var v126$2: int;
  var v127$1: int;
  var v127$2: int;
  var v129$1: int;
  var v129$2: int;
  var v130$1: int;
  var v130$2: int;
  var v131$1: int;
  var v131$2: int;
  var v132$1: int;
  var v132$2: int;
  var v133$1: int;
  var v133$2: int;
  var v134$1: int;
  var v134$2: int;
  var v135$1: int;
  var v135$2: int;
  var v136$1: int;
  var v136$2: int;
  var v137$1: int;
  var v137$2: int;
  var v138$1: int;
  var v138$2: int;
  var v139$1: int;
  var v139$2: int;
  var v140$1: int;
  var v140$2: int;
  var v141$1: int;
  var v141$2: int;
  var v142$1: int;
  var v142$2: int;
  var v143$1: int;
  var v143$2: int;
  var v144$1: int;
  var v144$2: int;
  var v145$1: int;
  var v145$2: int;
  var v146$1: int;
  var v146$2: int;
  var v147$1: int;
  var v147$2: int;
  var v148$1: int;
  var v148$2: int;
  var v149$1: int;
  var v149$2: int;
  var v150$1: int;
  var v150$2: int;
  var v151$1: int;
  var v151$2: int;
  var v152$1: int;
  var v152$2: int;
  var v153$1: int;
  var v153$2: int;
  var v154$1: int;
  var v154$2: int;
  var v155$1: int;
  var v155$2: int;
  var v156$1: int;
  var v156$2: int;
  var v157$1: int;
  var v157$2: int;
  var v158$1: int;
  var v158$2: int;
  var v159$1: int;
  var v159$2: int;
  var v160$1: int;
  var v160$2: int;
  var v161$1: int;
  var v161$2: int;
  var v162$1: bool;
  var v162$2: bool;
  var v163$1: int;
  var v163$2: int;
  var v164$1: int;
  var v164$2: int;
  var v165$1: int;
  var v165$2: int;
  var v166$1: int;
  var v166$2: int;
  var v167$1: int;
  var v167$2: int;
  var v168$1: int;
  var v168$2: int;
  var v169$1: bool;
  var v169$2: bool;
  var v170$1: int;
  var v170$2: int;
  var v171$1: int;
  var v171$2: int;
  var v172$1: int;
  var v172$2: int;
  var v173$1: int;
  var v173$2: int;
  var v174$1: int;
  var v174$2: int;
  var v175$1: int;
  var v175$2: int;
  var v176$1: int;
  var v176$2: int;
  var v177$1: int;
  var v177$2: int;
  var v178$1: int;
  var v178$2: int;
  var v179$1: int;
  var v179$2: int;
  var v180$1: int;
  var v180$2: int;
  var v181$1: int;
  var v181$2: int;
  var v182$1: int;
  var v182$2: int;
  var v183$1: int;
  var v183$2: int;
  var v184$1: int;
  var v184$2: int;
  var v190$1: int;
  var v190$2: int;
  var v191$1: int;
  var v191$2: int;
  var v192$1: int;
  var v192$2: int;
  var v193$1: int;
  var v193$2: int;
  var v194$1: int;
  var v194$2: int;
  var v195$1: int;
  var v195$2: int;
  var v196$1: int;
  var v196$2: int;
  var v197$1: int;
  var v197$2: int;
  var v198$1: int;
  var v198$2: int;
  var v199$1: int;
  var v199$2: int;
  var v200$1: int;
  var v200$2: int;
  var v201$1: int;
  var v201$2: int;
  var v202$1: int;
  var v202$2: int;
  var v203$1: int;
  var v203$2: int;
  var v204$1: int;
  var v204$2: int;
  var v205$1: int;
  var v205$2: int;
  var v206$1: int;
  var v206$2: int;
  var v207$1: int;
  var v207$2: int;
  var v209$1: int;
  var v209$2: int;
  var v210$1: int;
  var v210$2: int;
  var v211$1: int;
  var v211$2: int;
  var v212$1: int;
  var v212$2: int;
  var v213$1: int;
  var v213$2: int;
  var v214$1: int;
  var v214$2: int;
  var v215$1: int;
  var v215$2: int;
  var v216$1: int;
  var v216$2: int;
  var v217$1: int;
  var v217$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    havoc v1$1, v1$2;
    havoc v2$1, v2$2;
    $$momentum_i$0$1 := v2$1;
    $$momentum_i$0$2 := v2$2;
    havoc v3$1, v3$2;
    $$momentum_i$1$1 := v3$1;
    $$momentum_i$1$2 := v3$2;
    havoc v4$1, v4$2;
    $$momentum_i$2$1 := v4$1;
    $$momentum_i$2$2 := v4$2;
    havoc v5$1, v5$2;
    v6$1 := $$momentum_i$0$1;
    v6$2 := $$momentum_i$0$2;
    v7$1 := $$momentum_i$1$1;
    v7$2 := $$momentum_i$1$2;
    v8$1 := $$momentum_i$2$1;
    v8$2 := $$momentum_i$2$2;
    $$momentum.i$0$1 := v6$1;
    $$momentum.i$0$2 := v6$2;
    $$momentum.i$1$1 := v7$1;
    $$momentum.i$1$2 := v7$2;
    $$momentum.i$2$1 := v8$1;
    $$momentum.i$2$2 := v8$2;
    v9$1 := $$momentum.i$0$1;
    v9$2 := $$momentum.i$0$2;
    $$velocity_i$0$1 := FDIV32(v9$1, v1$1);
    $$velocity_i$0$2 := FDIV32(v9$2, v1$2);
    v10$1 := $$momentum.i$1$1;
    v10$2 := $$momentum.i$1$2;
    $$velocity_i$1$1 := FDIV32(v10$1, v1$1);
    $$velocity_i$1$2 := FDIV32(v10$2, v1$2);
    v11$1 := $$momentum.i$2$1;
    v11$2 := $$momentum.i$2$2;
    $$velocity_i$2$1 := FDIV32(v11$1, v1$1);
    $$velocity_i$2$2 := FDIV32(v11$2, v1$2);
    v12$1 := $$velocity_i$0$1;
    v12$2 := $$velocity_i$0$2;
    v13$1 := $$velocity_i$1$1;
    v13$2 := $$velocity_i$1$2;
    v14$1 := $$velocity_i$2$1;
    v14$2 := $$velocity_i$2$2;
    $$velocity.i$0$1 := v12$1;
    $$velocity.i$0$2 := v12$2;
    $$velocity.i$1$1 := v13$1;
    $$velocity.i$1$2 := v13$2;
    $$velocity.i$2$1 := v14$1;
    $$velocity.i$2$2 := v14$2;
    v15$1 := $$velocity.i$0$1;
    v15$2 := $$velocity.i$0$2;
    v16$1 := $$velocity.i$0$1;
    v16$2 := $$velocity.i$0$2;
    v17$1 := $$velocity.i$1$1;
    v17$2 := $$velocity.i$1$2;
    v18$1 := $$velocity.i$1$1;
    v18$2 := $$velocity.i$1$2;
    v19$1 := $$velocity.i$2$1;
    v19$2 := $$velocity.i$2$2;
    v20$1 := $$velocity.i$2$1;
    v20$2 := $$velocity.i$2$2;
    v21$1 := FADD32(FMUL32(v19$1, v20$1), FADD32(FMUL32(v15$1, v16$1), FMUL32(v17$1, v18$1)));
    v21$2 := FADD32(FMUL32(v19$2, v20$2), FADD32(FMUL32(v15$2, v16$2), FMUL32(v17$2, v18$2)));
    v22$1 := FMUL32(1053609164, FADD32(FMUL32(FSUB32(-2147483648, FMUL32(1056964608, v1$1)), v21$1), v5$1));
    v22$2 := FMUL32(1053609164, FADD32(FMUL32(FSUB32(-2147483648, FMUL32(1056964608, v1$2)), v21$2), v5$2));
    v23$1 := $$momentum_i$0$1;
    v23$2 := $$momentum_i$0$2;
    v24$1 := $$momentum_i$1$1;
    v24$2 := $$momentum_i$1$2;
    v25$1 := $$momentum_i$2$1;
    v25$2 := $$momentum_i$2$2;
    v26$1 := $$velocity_i$0$1;
    v26$2 := $$velocity_i$0$2;
    v27$1 := $$velocity_i$1$1;
    v27$2 := $$velocity_i$1$2;
    v28$1 := $$velocity_i$2$1;
    v28$2 := $$velocity_i$2$2;
    $$momentum.i5$0$1 := v23$1;
    $$momentum.i5$0$2 := v23$2;
    $$momentum.i5$1$1 := v24$1;
    $$momentum.i5$1$2 := v24$2;
    $$momentum.i5$2$1 := v25$1;
    $$momentum.i5$2$2 := v25$2;
    $$velocity.i6$0$1 := v26$1;
    $$velocity.i6$0$2 := v26$2;
    $$velocity.i6$1$1 := v27$1;
    $$velocity.i6$1$2 := v27$2;
    $$velocity.i6$2$1 := v28$1;
    $$velocity.i6$2$2 := v28$2;
    v29$1 := $$velocity.i6$0$1;
    v29$2 := $$velocity.i6$0$2;
    v30$1 := $$momentum.i5$0$1;
    v30$2 := $$momentum.i5$0$2;
    $$flux_contribution_i_momentum_x$0$1 := FADD32(FMUL32(v29$1, v30$1), v22$1);
    $$flux_contribution_i_momentum_x$0$2 := FADD32(FMUL32(v29$2, v30$2), v22$2);
    v31$1 := $$velocity.i6$0$1;
    v31$2 := $$velocity.i6$0$2;
    v32$1 := $$momentum.i5$1$1;
    v32$2 := $$momentum.i5$1$2;
    $$flux_contribution_i_momentum_x$1$1 := FMUL32(v31$1, v32$1);
    $$flux_contribution_i_momentum_x$1$2 := FMUL32(v31$2, v32$2);
    v33$1 := $$velocity.i6$0$1;
    v33$2 := $$velocity.i6$0$2;
    v34$1 := $$momentum.i5$2$1;
    v34$2 := $$momentum.i5$2$2;
    $$flux_contribution_i_momentum_x$2$1 := FMUL32(v33$1, v34$1);
    $$flux_contribution_i_momentum_x$2$2 := FMUL32(v33$2, v34$2);
    v35$1 := $$flux_contribution_i_momentum_x$1$1;
    v35$2 := $$flux_contribution_i_momentum_x$1$2;
    $$flux_contribution_i_momentum_y$0$1 := v35$1;
    $$flux_contribution_i_momentum_y$0$2 := v35$2;
    v36$1 := $$velocity.i6$1$1;
    v36$2 := $$velocity.i6$1$2;
    v37$1 := $$momentum.i5$1$1;
    v37$2 := $$momentum.i5$1$2;
    $$flux_contribution_i_momentum_y$1$1 := FADD32(FMUL32(v36$1, v37$1), v22$1);
    $$flux_contribution_i_momentum_y$1$2 := FADD32(FMUL32(v36$2, v37$2), v22$2);
    v38$1 := $$velocity.i6$1$1;
    v38$2 := $$velocity.i6$1$2;
    v39$1 := $$momentum.i5$2$1;
    v39$2 := $$momentum.i5$2$2;
    $$flux_contribution_i_momentum_y$2$1 := FMUL32(v38$1, v39$1);
    $$flux_contribution_i_momentum_y$2$2 := FMUL32(v38$2, v39$2);
    v40$1 := $$flux_contribution_i_momentum_x$2$1;
    v40$2 := $$flux_contribution_i_momentum_x$2$2;
    $$flux_contribution_i_momentum_z$0$1 := v40$1;
    $$flux_contribution_i_momentum_z$0$2 := v40$2;
    v41$1 := $$flux_contribution_i_momentum_y$2$1;
    v41$2 := $$flux_contribution_i_momentum_y$2$2;
    $$flux_contribution_i_momentum_z$1$1 := v41$1;
    $$flux_contribution_i_momentum_z$1$2 := v41$2;
    v42$1 := $$velocity.i6$2$1;
    v42$2 := $$velocity.i6$2$2;
    v43$1 := $$momentum.i5$2$1;
    v43$2 := $$momentum.i5$2$2;
    $$flux_contribution_i_momentum_z$2$1 := FADD32(FMUL32(v42$1, v43$1), v22$1);
    $$flux_contribution_i_momentum_z$2$2 := FADD32(FMUL32(v42$2, v43$2), v22$2);
    v44$1 := FADD32(v5$1, v22$1);
    v44$2 := FADD32(v5$2, v22$2);
    v45$1 := $$velocity.i6$0$1;
    v45$2 := $$velocity.i6$0$2;
    $$flux_contribution_i_density_energy$0$1 := FMUL32(v45$1, v44$1);
    $$flux_contribution_i_density_energy$0$2 := FMUL32(v45$2, v44$2);
    v46$1 := $$velocity.i6$1$1;
    v46$2 := $$velocity.i6$1$2;
    $$flux_contribution_i_density_energy$1$1 := FMUL32(v46$1, v44$1);
    $$flux_contribution_i_density_energy$1$2 := FMUL32(v46$2, v44$2);
    v47$1 := $$velocity.i6$2$1;
    v47$2 := $$velocity.i6$2$2;
    $$flux_contribution_i_density_energy$2$1 := FMUL32(v47$1, v44$1);
    $$flux_contribution_i_density_energy$2$2 := FMUL32(v47$2, v44$2);
    $$flux_i_momentum$0$1 := 0;
    $$flux_i_momentum$0$2 := 0;
    $$flux_i_momentum$1$1 := 0;
    $$flux_i_momentum$1$2 := 0;
    $$flux_i_momentum$2$1 := 0;
    $$flux_i_momentum$2$2 := 0;
    $j.0, $flux_i_density.0$1, $flux_i_density_energy.0$1 := 0, 0, 0;
    $flux_i_density.0$2, $flux_i_density_energy.0$2 := 0, 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 79} true;
    v48 := BV32_SLT($j.0, 4);
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
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v48;
    call {:sourceloc} {:sourceloc_num 299} _LOG_WRITE_$$fluxes(true, BV32_ADD(v0$1, BV32_MUL(0, $nelr)), $flux_i_density.0$1, $$fluxes[BV32_ADD(v0$1, BV32_MUL(0, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(0, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 299} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 299} _CHECK_WRITE_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(0, $nelr)), $flux_i_density.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$fluxes"} true;
    $$fluxes[BV32_ADD(v0$1, BV32_MUL(0, $nelr))] := $flux_i_density.0$1;
    $$fluxes[BV32_ADD(v0$2, BV32_MUL(0, $nelr))] := $flux_i_density.0$2;
    v215$1 := $$flux_i_momentum$0$1;
    v215$2 := $$flux_i_momentum$0$2;
    call {:sourceloc} {:sourceloc_num 301} _LOG_WRITE_$$fluxes(true, BV32_ADD(v0$1, $nelr), v215$1, $$fluxes[BV32_ADD(v0$1, $nelr)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(true, BV32_ADD(v0$2, $nelr));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 301} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 301} _CHECK_WRITE_$$fluxes(true, BV32_ADD(v0$2, $nelr), v215$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$fluxes"} true;
    $$fluxes[BV32_ADD(v0$1, $nelr)] := v215$1;
    $$fluxes[BV32_ADD(v0$2, $nelr)] := v215$2;
    v216$1 := $$flux_i_momentum$1$1;
    v216$2 := $$flux_i_momentum$1$2;
    call {:sourceloc} {:sourceloc_num 303} _LOG_WRITE_$$fluxes(true, BV32_ADD(v0$1, BV32_MUL(2, $nelr)), v216$1, $$fluxes[BV32_ADD(v0$1, BV32_MUL(2, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(2, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 303} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 303} _CHECK_WRITE_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(2, $nelr)), v216$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$fluxes"} true;
    $$fluxes[BV32_ADD(v0$1, BV32_MUL(2, $nelr))] := v216$1;
    $$fluxes[BV32_ADD(v0$2, BV32_MUL(2, $nelr))] := v216$2;
    v217$1 := $$flux_i_momentum$2$1;
    v217$2 := $$flux_i_momentum$2$2;
    call {:sourceloc} {:sourceloc_num 305} _LOG_WRITE_$$fluxes(true, BV32_ADD(v0$1, BV32_MUL(3, $nelr)), v217$1, $$fluxes[BV32_ADD(v0$1, BV32_MUL(3, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(3, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 305} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 305} _CHECK_WRITE_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(3, $nelr)), v217$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$fluxes"} true;
    $$fluxes[BV32_ADD(v0$1, BV32_MUL(3, $nelr))] := v217$1;
    $$fluxes[BV32_ADD(v0$2, BV32_MUL(3, $nelr))] := v217$2;
    call {:sourceloc} {:sourceloc_num 306} _LOG_WRITE_$$fluxes(true, BV32_ADD(v0$1, BV32_MUL(4, $nelr)), $flux_i_density_energy.0$1, $$fluxes[BV32_ADD(v0$1, BV32_MUL(4, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(4, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 306} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 306} _CHECK_WRITE_$$fluxes(true, BV32_ADD(v0$2, BV32_MUL(4, $nelr)), $flux_i_density_energy.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$fluxes"} true;
    $$fluxes[BV32_ADD(v0$1, BV32_MUL(4, $nelr))] := $flux_i_density_energy.0$1;
    $$fluxes[BV32_ADD(v0$2, BV32_MUL(4, $nelr))] := $flux_i_density_energy.0$2;
    return;

  $truebb:
    assume {:partition} v48;
    v49$1 := $$elements_surrounding_elements[BV32_ADD(v0$1, BV32_MUL($j.0, $nelr))];
    v49$2 := $$elements_surrounding_elements[BV32_ADD(v0$2, BV32_MUL($j.0, $nelr))];
    havoc v50$1, v50$2;
    $$normal$0$1 := v50$1;
    $$normal$0$2 := v50$2;
    havoc v51$1, v51$2;
    $$normal$1$1 := v51$1;
    $$normal$1$2 := v51$2;
    havoc v52$1, v52$2;
    $$normal$2$1 := v52$1;
    $$normal$2$2 := v52$2;
    v53$1 := $$normal$0$1;
    v53$2 := $$normal$0$2;
    v54$1 := $$normal$0$1;
    v54$2 := $$normal$0$2;
    v55$1 := $$normal$1$1;
    v55$2 := $$normal$1$2;
    v56$1 := $$normal$1$1;
    v56$2 := $$normal$1$2;
    v57$1 := $$normal$2$1;
    v57$2 := $$normal$2$2;
    v58$1 := $$normal$2$1;
    v58$2 := $$normal$2$2;
    v59$1 := BV32_SGE(v49$1, 0);
    v59$2 := BV32_SGE(v49$2, 0);
    p0$1 := (if v59$1 then v59$1 else p0$1);
    p0$2 := (if v59$2 then v59$2 else p0$2);
    p1$1 := (if !v59$1 then !v59$1 else p1$1);
    p1$2 := (if !v59$2 then !v59$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v60$1 := (if p0$1 then _HAVOC_int$1 else v60$1);
    v60$2 := (if p0$2 then _HAVOC_int$2 else v60$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v61$1 := (if p0$1 then _HAVOC_int$1 else v61$1);
    v61$2 := (if p0$2 then _HAVOC_int$2 else v61$2);
    $$momentum_nb$0$1 := (if p0$1 then v61$1 else $$momentum_nb$0$1);
    $$momentum_nb$0$2 := (if p0$2 then v61$2 else $$momentum_nb$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v62$1 := (if p0$1 then _HAVOC_int$1 else v62$1);
    v62$2 := (if p0$2 then _HAVOC_int$2 else v62$2);
    $$momentum_nb$1$1 := (if p0$1 then v62$1 else $$momentum_nb$1$1);
    $$momentum_nb$1$2 := (if p0$2 then v62$2 else $$momentum_nb$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v63$1 := (if p0$1 then _HAVOC_int$1 else v63$1);
    v63$2 := (if p0$2 then _HAVOC_int$2 else v63$2);
    $$momentum_nb$2$1 := (if p0$1 then v63$1 else $$momentum_nb$2$1);
    $$momentum_nb$2$2 := (if p0$2 then v63$2 else $$momentum_nb$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v64$1 := (if p0$1 then _HAVOC_int$1 else v64$1);
    v64$2 := (if p0$2 then _HAVOC_int$2 else v64$2);
    v65$1 := (if p0$1 then $$momentum_nb$0$1 else v65$1);
    v65$2 := (if p0$2 then $$momentum_nb$0$2 else v65$2);
    v66$1 := (if p0$1 then $$momentum_nb$1$1 else v66$1);
    v66$2 := (if p0$2 then $$momentum_nb$1$2 else v66$2);
    v67$1 := (if p0$1 then $$momentum_nb$2$1 else v67$1);
    v67$2 := (if p0$2 then $$momentum_nb$2$2 else v67$2);
    $$momentum.i4$0$1 := (if p0$1 then v65$1 else $$momentum.i4$0$1);
    $$momentum.i4$0$2 := (if p0$2 then v65$2 else $$momentum.i4$0$2);
    $$momentum.i4$1$1 := (if p0$1 then v66$1 else $$momentum.i4$1$1);
    $$momentum.i4$1$2 := (if p0$2 then v66$2 else $$momentum.i4$1$2);
    $$momentum.i4$2$1 := (if p0$1 then v67$1 else $$momentum.i4$2$1);
    $$momentum.i4$2$2 := (if p0$2 then v67$2 else $$momentum.i4$2$2);
    v68$1 := (if p0$1 then $$momentum.i4$0$1 else v68$1);
    v68$2 := (if p0$2 then $$momentum.i4$0$2 else v68$2);
    $$velocity_nb$0$1 := (if p0$1 then FDIV32(v68$1, v60$1) else $$velocity_nb$0$1);
    $$velocity_nb$0$2 := (if p0$2 then FDIV32(v68$2, v60$2) else $$velocity_nb$0$2);
    v69$1 := (if p0$1 then $$momentum.i4$1$1 else v69$1);
    v69$2 := (if p0$2 then $$momentum.i4$1$2 else v69$2);
    $$velocity_nb$1$1 := (if p0$1 then FDIV32(v69$1, v60$1) else $$velocity_nb$1$1);
    $$velocity_nb$1$2 := (if p0$2 then FDIV32(v69$2, v60$2) else $$velocity_nb$1$2);
    v70$1 := (if p0$1 then $$momentum.i4$2$1 else v70$1);
    v70$2 := (if p0$2 then $$momentum.i4$2$2 else v70$2);
    $$velocity_nb$2$1 := (if p0$1 then FDIV32(v70$1, v60$1) else $$velocity_nb$2$1);
    $$velocity_nb$2$2 := (if p0$2 then FDIV32(v70$2, v60$2) else $$velocity_nb$2$2);
    v71$1 := (if p0$1 then $$velocity_nb$0$1 else v71$1);
    v71$2 := (if p0$2 then $$velocity_nb$0$2 else v71$2);
    v72$1 := (if p0$1 then $$velocity_nb$1$1 else v72$1);
    v72$2 := (if p0$2 then $$velocity_nb$1$2 else v72$2);
    v73$1 := (if p0$1 then $$velocity_nb$2$1 else v73$1);
    v73$2 := (if p0$2 then $$velocity_nb$2$2 else v73$2);
    $$velocity.i3$0$1 := (if p0$1 then v71$1 else $$velocity.i3$0$1);
    $$velocity.i3$0$2 := (if p0$2 then v71$2 else $$velocity.i3$0$2);
    $$velocity.i3$1$1 := (if p0$1 then v72$1 else $$velocity.i3$1$1);
    $$velocity.i3$1$2 := (if p0$2 then v72$2 else $$velocity.i3$1$2);
    $$velocity.i3$2$1 := (if p0$1 then v73$1 else $$velocity.i3$2$1);
    $$velocity.i3$2$2 := (if p0$2 then v73$2 else $$velocity.i3$2$2);
    v74$1 := (if p0$1 then $$velocity.i3$0$1 else v74$1);
    v74$2 := (if p0$2 then $$velocity.i3$0$2 else v74$2);
    v75$1 := (if p0$1 then $$velocity.i3$0$1 else v75$1);
    v75$2 := (if p0$2 then $$velocity.i3$0$2 else v75$2);
    v76$1 := (if p0$1 then $$velocity.i3$1$1 else v76$1);
    v76$2 := (if p0$2 then $$velocity.i3$1$2 else v76$2);
    v77$1 := (if p0$1 then $$velocity.i3$1$1 else v77$1);
    v77$2 := (if p0$2 then $$velocity.i3$1$2 else v77$2);
    v78$1 := (if p0$1 then $$velocity.i3$2$1 else v78$1);
    v78$2 := (if p0$2 then $$velocity.i3$2$2 else v78$2);
    v79$1 := (if p0$1 then $$velocity.i3$2$1 else v79$1);
    v79$2 := (if p0$2 then $$velocity.i3$2$2 else v79$2);
    v80$1 := (if p0$1 then FADD32(FMUL32(v78$1, v79$1), FADD32(FMUL32(v74$1, v75$1), FMUL32(v76$1, v77$1))) else v80$1);
    v80$2 := (if p0$2 then FADD32(FMUL32(v78$2, v79$2), FADD32(FMUL32(v74$2, v75$2), FMUL32(v76$2, v77$2))) else v80$2);
    v81$1 := (if p0$1 then FMUL32(1053609164, FADD32(FMUL32(FSUB32(-2147483648, FMUL32(1056964608, v60$1)), v80$1), v64$1)) else v81$1);
    v81$2 := (if p0$2 then FMUL32(1053609164, FADD32(FMUL32(FSUB32(-2147483648, FMUL32(1056964608, v60$2)), v80$2), v64$2)) else v81$2);
    v82$1 := (if p0$1 then $$momentum_nb$0$1 else v82$1);
    v82$2 := (if p0$2 then $$momentum_nb$0$2 else v82$2);
    v83$1 := (if p0$1 then $$momentum_nb$1$1 else v83$1);
    v83$2 := (if p0$2 then $$momentum_nb$1$2 else v83$2);
    v84$1 := (if p0$1 then $$momentum_nb$2$1 else v84$1);
    v84$2 := (if p0$2 then $$momentum_nb$2$2 else v84$2);
    v85$1 := (if p0$1 then $$velocity_nb$0$1 else v85$1);
    v85$2 := (if p0$2 then $$velocity_nb$0$2 else v85$2);
    v86$1 := (if p0$1 then $$velocity_nb$1$1 else v86$1);
    v86$2 := (if p0$2 then $$velocity_nb$1$2 else v86$2);
    v87$1 := (if p0$1 then $$velocity_nb$2$1 else v87$1);
    v87$2 := (if p0$2 then $$velocity_nb$2$2 else v87$2);
    $$momentum.i1$0$1 := (if p0$1 then v82$1 else $$momentum.i1$0$1);
    $$momentum.i1$0$2 := (if p0$2 then v82$2 else $$momentum.i1$0$2);
    $$momentum.i1$1$1 := (if p0$1 then v83$1 else $$momentum.i1$1$1);
    $$momentum.i1$1$2 := (if p0$2 then v83$2 else $$momentum.i1$1$2);
    $$momentum.i1$2$1 := (if p0$1 then v84$1 else $$momentum.i1$2$1);
    $$momentum.i1$2$2 := (if p0$2 then v84$2 else $$momentum.i1$2$2);
    $$velocity.i2$0$1 := (if p0$1 then v85$1 else $$velocity.i2$0$1);
    $$velocity.i2$0$2 := (if p0$2 then v85$2 else $$velocity.i2$0$2);
    $$velocity.i2$1$1 := (if p0$1 then v86$1 else $$velocity.i2$1$1);
    $$velocity.i2$1$2 := (if p0$2 then v86$2 else $$velocity.i2$1$2);
    $$velocity.i2$2$1 := (if p0$1 then v87$1 else $$velocity.i2$2$1);
    $$velocity.i2$2$2 := (if p0$2 then v87$2 else $$velocity.i2$2$2);
    v88$1 := (if p0$1 then $$velocity.i2$0$1 else v88$1);
    v88$2 := (if p0$2 then $$velocity.i2$0$2 else v88$2);
    v89$1 := (if p0$1 then $$momentum.i1$0$1 else v89$1);
    v89$2 := (if p0$2 then $$momentum.i1$0$2 else v89$2);
    $$flux_contribution_nb_momentum_x$0$1 := (if p0$1 then FADD32(FMUL32(v88$1, v89$1), v81$1) else $$flux_contribution_nb_momentum_x$0$1);
    $$flux_contribution_nb_momentum_x$0$2 := (if p0$2 then FADD32(FMUL32(v88$2, v89$2), v81$2) else $$flux_contribution_nb_momentum_x$0$2);
    v90$1 := (if p0$1 then $$velocity.i2$0$1 else v90$1);
    v90$2 := (if p0$2 then $$velocity.i2$0$2 else v90$2);
    v91$1 := (if p0$1 then $$momentum.i1$1$1 else v91$1);
    v91$2 := (if p0$2 then $$momentum.i1$1$2 else v91$2);
    $$flux_contribution_nb_momentum_x$1$1 := (if p0$1 then FMUL32(v90$1, v91$1) else $$flux_contribution_nb_momentum_x$1$1);
    $$flux_contribution_nb_momentum_x$1$2 := (if p0$2 then FMUL32(v90$2, v91$2) else $$flux_contribution_nb_momentum_x$1$2);
    v92$1 := (if p0$1 then $$velocity.i2$0$1 else v92$1);
    v92$2 := (if p0$2 then $$velocity.i2$0$2 else v92$2);
    v93$1 := (if p0$1 then $$momentum.i1$2$1 else v93$1);
    v93$2 := (if p0$2 then $$momentum.i1$2$2 else v93$2);
    $$flux_contribution_nb_momentum_x$2$1 := (if p0$1 then FMUL32(v92$1, v93$1) else $$flux_contribution_nb_momentum_x$2$1);
    $$flux_contribution_nb_momentum_x$2$2 := (if p0$2 then FMUL32(v92$2, v93$2) else $$flux_contribution_nb_momentum_x$2$2);
    v94$1 := (if p0$1 then $$flux_contribution_nb_momentum_x$1$1 else v94$1);
    v94$2 := (if p0$2 then $$flux_contribution_nb_momentum_x$1$2 else v94$2);
    $$flux_contribution_nb_momentum_y$0$1 := (if p0$1 then v94$1 else $$flux_contribution_nb_momentum_y$0$1);
    $$flux_contribution_nb_momentum_y$0$2 := (if p0$2 then v94$2 else $$flux_contribution_nb_momentum_y$0$2);
    v95$1 := (if p0$1 then $$velocity.i2$1$1 else v95$1);
    v95$2 := (if p0$2 then $$velocity.i2$1$2 else v95$2);
    v96$1 := (if p0$1 then $$momentum.i1$1$1 else v96$1);
    v96$2 := (if p0$2 then $$momentum.i1$1$2 else v96$2);
    $$flux_contribution_nb_momentum_y$1$1 := (if p0$1 then FADD32(FMUL32(v95$1, v96$1), v81$1) else $$flux_contribution_nb_momentum_y$1$1);
    $$flux_contribution_nb_momentum_y$1$2 := (if p0$2 then FADD32(FMUL32(v95$2, v96$2), v81$2) else $$flux_contribution_nb_momentum_y$1$2);
    v97$1 := (if p0$1 then $$velocity.i2$1$1 else v97$1);
    v97$2 := (if p0$2 then $$velocity.i2$1$2 else v97$2);
    v98$1 := (if p0$1 then $$momentum.i1$2$1 else v98$1);
    v98$2 := (if p0$2 then $$momentum.i1$2$2 else v98$2);
    $$flux_contribution_nb_momentum_y$2$1 := (if p0$1 then FMUL32(v97$1, v98$1) else $$flux_contribution_nb_momentum_y$2$1);
    $$flux_contribution_nb_momentum_y$2$2 := (if p0$2 then FMUL32(v97$2, v98$2) else $$flux_contribution_nb_momentum_y$2$2);
    v99$1 := (if p0$1 then $$flux_contribution_nb_momentum_x$2$1 else v99$1);
    v99$2 := (if p0$2 then $$flux_contribution_nb_momentum_x$2$2 else v99$2);
    $$flux_contribution_nb_momentum_z$0$1 := (if p0$1 then v99$1 else $$flux_contribution_nb_momentum_z$0$1);
    $$flux_contribution_nb_momentum_z$0$2 := (if p0$2 then v99$2 else $$flux_contribution_nb_momentum_z$0$2);
    v100$1 := (if p0$1 then $$flux_contribution_nb_momentum_y$2$1 else v100$1);
    v100$2 := (if p0$2 then $$flux_contribution_nb_momentum_y$2$2 else v100$2);
    $$flux_contribution_nb_momentum_z$1$1 := (if p0$1 then v100$1 else $$flux_contribution_nb_momentum_z$1$1);
    $$flux_contribution_nb_momentum_z$1$2 := (if p0$2 then v100$2 else $$flux_contribution_nb_momentum_z$1$2);
    v101$1 := (if p0$1 then $$velocity.i2$2$1 else v101$1);
    v101$2 := (if p0$2 then $$velocity.i2$2$2 else v101$2);
    v102$1 := (if p0$1 then $$momentum.i1$2$1 else v102$1);
    v102$2 := (if p0$2 then $$momentum.i1$2$2 else v102$2);
    $$flux_contribution_nb_momentum_z$2$1 := (if p0$1 then FADD32(FMUL32(v101$1, v102$1), v81$1) else $$flux_contribution_nb_momentum_z$2$1);
    $$flux_contribution_nb_momentum_z$2$2 := (if p0$2 then FADD32(FMUL32(v101$2, v102$2), v81$2) else $$flux_contribution_nb_momentum_z$2$2);
    v103$1 := (if p0$1 then FADD32(v64$1, v81$1) else v103$1);
    v103$2 := (if p0$2 then FADD32(v64$2, v81$2) else v103$2);
    v104$1 := (if p0$1 then $$velocity.i2$0$1 else v104$1);
    v104$2 := (if p0$2 then $$velocity.i2$0$2 else v104$2);
    $$flux_contribution_nb_density_energy$0$1 := (if p0$1 then FMUL32(v104$1, v103$1) else $$flux_contribution_nb_density_energy$0$1);
    $$flux_contribution_nb_density_energy$0$2 := (if p0$2 then FMUL32(v104$2, v103$2) else $$flux_contribution_nb_density_energy$0$2);
    v105$1 := (if p0$1 then $$velocity.i2$1$1 else v105$1);
    v105$2 := (if p0$2 then $$velocity.i2$1$2 else v105$2);
    $$flux_contribution_nb_density_energy$1$1 := (if p0$1 then FMUL32(v105$1, v103$1) else $$flux_contribution_nb_density_energy$1$1);
    $$flux_contribution_nb_density_energy$1$2 := (if p0$2 then FMUL32(v105$2, v103$2) else $$flux_contribution_nb_density_energy$1$2);
    v106$1 := (if p0$1 then $$velocity.i2$2$1 else v106$1);
    v106$2 := (if p0$2 then $$velocity.i2$2$2 else v106$2);
    $$flux_contribution_nb_density_energy$2$1 := (if p0$1 then FMUL32(v106$1, v103$1) else $$flux_contribution_nb_density_energy$2$1);
    $$flux_contribution_nb_density_energy$2$2 := (if p0$2 then FMUL32(v106$2, v103$2) else $$flux_contribution_nb_density_energy$2$2);
    v107$1 := (if p0$1 then FMUL32(FMUL32(FMUL32(FSUB32(-2147483648, FSQRT32(FADD32(FMUL32(v57$1, v58$1), FADD32(FMUL32(v53$1, v54$1), FMUL32(v55$1, v56$1))))), 1045220557), 1056964608), FADD32(FADD32(FADD32(FSQRT32(v21$1), FSQRT32(v80$1)), FSQRT32(FDIV32(FMUL32(1068708659, v22$1), v1$1))), FSQRT32(FDIV32(FMUL32(1068708659, v81$1), v60$1)))) else v107$1);
    v107$2 := (if p0$2 then FMUL32(FMUL32(FMUL32(FSUB32(-2147483648, FSQRT32(FADD32(FMUL32(v57$2, v58$2), FADD32(FMUL32(v53$2, v54$2), FMUL32(v55$2, v56$2))))), 1045220557), 1056964608), FADD32(FADD32(FADD32(FSQRT32(v21$2), FSQRT32(v80$2)), FSQRT32(FDIV32(FMUL32(1068708659, v22$2), v1$2))), FSQRT32(FDIV32(FMUL32(1068708659, v81$2), v60$2)))) else v107$2);
    v108$1 := (if p0$1 then $$momentum_i$0$1 else v108$1);
    v108$2 := (if p0$2 then $$momentum_i$0$2 else v108$2);
    v109$1 := (if p0$1 then $$momentum_nb$0$1 else v109$1);
    v109$2 := (if p0$2 then $$momentum_nb$0$2 else v109$2);
    v110$1 := (if p0$1 then $$flux_i_momentum$0$1 else v110$1);
    v110$2 := (if p0$2 then $$flux_i_momentum$0$2 else v110$2);
    $$flux_i_momentum$0$1 := (if p0$1 then FADD32(v110$1, FMUL32(v107$1, FSUB32(v108$1, v109$1))) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p0$2 then FADD32(v110$2, FMUL32(v107$2, FSUB32(v108$2, v109$2))) else $$flux_i_momentum$0$2);
    v111$1 := (if p0$1 then $$momentum_i$1$1 else v111$1);
    v111$2 := (if p0$2 then $$momentum_i$1$2 else v111$2);
    v112$1 := (if p0$1 then $$momentum_nb$1$1 else v112$1);
    v112$2 := (if p0$2 then $$momentum_nb$1$2 else v112$2);
    v113$1 := (if p0$1 then $$flux_i_momentum$1$1 else v113$1);
    v113$2 := (if p0$2 then $$flux_i_momentum$1$2 else v113$2);
    $$flux_i_momentum$1$1 := (if p0$1 then FADD32(v113$1, FMUL32(v107$1, FSUB32(v111$1, v112$1))) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p0$2 then FADD32(v113$2, FMUL32(v107$2, FSUB32(v111$2, v112$2))) else $$flux_i_momentum$1$2);
    v114$1 := (if p0$1 then $$momentum_i$2$1 else v114$1);
    v114$2 := (if p0$2 then $$momentum_i$2$2 else v114$2);
    v115$1 := (if p0$1 then $$momentum_nb$2$1 else v115$1);
    v115$2 := (if p0$2 then $$momentum_nb$2$2 else v115$2);
    v116$1 := (if p0$1 then $$flux_i_momentum$2$1 else v116$1);
    v116$2 := (if p0$2 then $$flux_i_momentum$2$2 else v116$2);
    $$flux_i_momentum$2$1 := (if p0$1 then FADD32(v116$1, FMUL32(v107$1, FSUB32(v114$1, v115$1))) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p0$2 then FADD32(v116$2, FMUL32(v107$2, FSUB32(v114$2, v115$2))) else $$flux_i_momentum$2$2);
    v117$1 := (if p0$1 then $$normal$0$1 else v117$1);
    v117$2 := (if p0$2 then $$normal$0$2 else v117$2);
    v118$1 := (if p0$1 then FMUL32(1056964608, v117$1) else v118$1);
    v118$2 := (if p0$2 then FMUL32(1056964608, v117$2) else v118$2);
    v119$1 := (if p0$1 then $$momentum_nb$0$1 else v119$1);
    v119$2 := (if p0$2 then $$momentum_nb$0$2 else v119$2);
    v120$1 := (if p0$1 then $$momentum_i$0$1 else v120$1);
    v120$2 := (if p0$2 then $$momentum_i$0$2 else v120$2);
    v121$1 := (if p0$1 then $$flux_contribution_nb_density_energy$0$1 else v121$1);
    v121$2 := (if p0$2 then $$flux_contribution_nb_density_energy$0$2 else v121$2);
    v122$1 := (if p0$1 then $$flux_contribution_i_density_energy$0$1 else v122$1);
    v122$2 := (if p0$2 then $$flux_contribution_i_density_energy$0$2 else v122$2);
    v123$1 := (if p0$1 then $$flux_contribution_nb_momentum_x$0$1 else v123$1);
    v123$2 := (if p0$2 then $$flux_contribution_nb_momentum_x$0$2 else v123$2);
    v124$1 := (if p0$1 then $$flux_contribution_i_momentum_x$0$1 else v124$1);
    v124$2 := (if p0$2 then $$flux_contribution_i_momentum_x$0$2 else v124$2);
    v125$1 := (if p0$1 then $$flux_i_momentum$0$1 else v125$1);
    v125$2 := (if p0$2 then $$flux_i_momentum$0$2 else v125$2);
    $$flux_i_momentum$0$1 := (if p0$1 then FADD32(v125$1, FMUL32(v118$1, FADD32(v123$1, v124$1))) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p0$2 then FADD32(v125$2, FMUL32(v118$2, FADD32(v123$2, v124$2))) else $$flux_i_momentum$0$2);
    v126$1 := (if p0$1 then $$flux_contribution_nb_momentum_y$0$1 else v126$1);
    v126$2 := (if p0$2 then $$flux_contribution_nb_momentum_y$0$2 else v126$2);
    v127$1 := (if p0$1 then $$flux_contribution_i_momentum_y$0$1 else v127$1);
    v127$2 := (if p0$2 then $$flux_contribution_i_momentum_y$0$2 else v127$2);
    v128$1 := (if p0$1 then $$flux_i_momentum$1$1 else v128$1);
    v128$2 := (if p0$2 then $$flux_i_momentum$1$2 else v128$2);
    $$flux_i_momentum$1$1 := (if p0$1 then FADD32(v128$1, FMUL32(v118$1, FADD32(v126$1, v127$1))) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p0$2 then FADD32(v128$2, FMUL32(v118$2, FADD32(v126$2, v127$2))) else $$flux_i_momentum$1$2);
    v129$1 := (if p0$1 then $$flux_contribution_nb_momentum_z$0$1 else v129$1);
    v129$2 := (if p0$2 then $$flux_contribution_nb_momentum_z$0$2 else v129$2);
    v130$1 := (if p0$1 then $$flux_contribution_i_momentum_z$0$1 else v130$1);
    v130$2 := (if p0$2 then $$flux_contribution_i_momentum_z$0$2 else v130$2);
    v131$1 := (if p0$1 then $$flux_i_momentum$2$1 else v131$1);
    v131$2 := (if p0$2 then $$flux_i_momentum$2$2 else v131$2);
    $$flux_i_momentum$2$1 := (if p0$1 then FADD32(v131$1, FMUL32(v118$1, FADD32(v129$1, v130$1))) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p0$2 then FADD32(v131$2, FMUL32(v118$2, FADD32(v129$2, v130$2))) else $$flux_i_momentum$2$2);
    v132$1 := (if p0$1 then $$normal$1$1 else v132$1);
    v132$2 := (if p0$2 then $$normal$1$2 else v132$2);
    v133$1 := (if p0$1 then FMUL32(1056964608, v132$1) else v133$1);
    v133$2 := (if p0$2 then FMUL32(1056964608, v132$2) else v133$2);
    v134$1 := (if p0$1 then $$momentum_nb$1$1 else v134$1);
    v134$2 := (if p0$2 then $$momentum_nb$1$2 else v134$2);
    v135$1 := (if p0$1 then $$momentum_i$1$1 else v135$1);
    v135$2 := (if p0$2 then $$momentum_i$1$2 else v135$2);
    v136$1 := (if p0$1 then $$flux_contribution_nb_density_energy$1$1 else v136$1);
    v136$2 := (if p0$2 then $$flux_contribution_nb_density_energy$1$2 else v136$2);
    v137$1 := (if p0$1 then $$flux_contribution_i_density_energy$1$1 else v137$1);
    v137$2 := (if p0$2 then $$flux_contribution_i_density_energy$1$2 else v137$2);
    v138$1 := (if p0$1 then $$flux_contribution_nb_momentum_x$1$1 else v138$1);
    v138$2 := (if p0$2 then $$flux_contribution_nb_momentum_x$1$2 else v138$2);
    v139$1 := (if p0$1 then $$flux_contribution_i_momentum_x$1$1 else v139$1);
    v139$2 := (if p0$2 then $$flux_contribution_i_momentum_x$1$2 else v139$2);
    v140$1 := (if p0$1 then $$flux_i_momentum$0$1 else v140$1);
    v140$2 := (if p0$2 then $$flux_i_momentum$0$2 else v140$2);
    $$flux_i_momentum$0$1 := (if p0$1 then FADD32(v140$1, FMUL32(v133$1, FADD32(v138$1, v139$1))) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p0$2 then FADD32(v140$2, FMUL32(v133$2, FADD32(v138$2, v139$2))) else $$flux_i_momentum$0$2);
    v141$1 := (if p0$1 then $$flux_contribution_nb_momentum_y$1$1 else v141$1);
    v141$2 := (if p0$2 then $$flux_contribution_nb_momentum_y$1$2 else v141$2);
    v142$1 := (if p0$1 then $$flux_contribution_i_momentum_y$1$1 else v142$1);
    v142$2 := (if p0$2 then $$flux_contribution_i_momentum_y$1$2 else v142$2);
    v143$1 := (if p0$1 then $$flux_i_momentum$1$1 else v143$1);
    v143$2 := (if p0$2 then $$flux_i_momentum$1$2 else v143$2);
    $$flux_i_momentum$1$1 := (if p0$1 then FADD32(v143$1, FMUL32(v133$1, FADD32(v141$1, v142$1))) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p0$2 then FADD32(v143$2, FMUL32(v133$2, FADD32(v141$2, v142$2))) else $$flux_i_momentum$1$2);
    v144$1 := (if p0$1 then $$flux_contribution_nb_momentum_z$1$1 else v144$1);
    v144$2 := (if p0$2 then $$flux_contribution_nb_momentum_z$1$2 else v144$2);
    v145$1 := (if p0$1 then $$flux_contribution_i_momentum_z$1$1 else v145$1);
    v145$2 := (if p0$2 then $$flux_contribution_i_momentum_z$1$2 else v145$2);
    v146$1 := (if p0$1 then $$flux_i_momentum$2$1 else v146$1);
    v146$2 := (if p0$2 then $$flux_i_momentum$2$2 else v146$2);
    $$flux_i_momentum$2$1 := (if p0$1 then FADD32(v146$1, FMUL32(v133$1, FADD32(v144$1, v145$1))) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p0$2 then FADD32(v146$2, FMUL32(v133$2, FADD32(v144$2, v145$2))) else $$flux_i_momentum$2$2);
    v147$1 := (if p0$1 then $$normal$2$1 else v147$1);
    v147$2 := (if p0$2 then $$normal$2$2 else v147$2);
    v148$1 := (if p0$1 then FMUL32(1056964608, v147$1) else v148$1);
    v148$2 := (if p0$2 then FMUL32(1056964608, v147$2) else v148$2);
    v149$1 := (if p0$1 then $$momentum_nb$2$1 else v149$1);
    v149$2 := (if p0$2 then $$momentum_nb$2$2 else v149$2);
    v150$1 := (if p0$1 then $$momentum_i$2$1 else v150$1);
    v150$2 := (if p0$2 then $$momentum_i$2$2 else v150$2);
    v151$1 := (if p0$1 then $$flux_contribution_nb_density_energy$2$1 else v151$1);
    v151$2 := (if p0$2 then $$flux_contribution_nb_density_energy$2$2 else v151$2);
    v152$1 := (if p0$1 then $$flux_contribution_i_density_energy$2$1 else v152$1);
    v152$2 := (if p0$2 then $$flux_contribution_i_density_energy$2$2 else v152$2);
    v153$1 := (if p0$1 then $$flux_contribution_nb_momentum_x$2$1 else v153$1);
    v153$2 := (if p0$2 then $$flux_contribution_nb_momentum_x$2$2 else v153$2);
    v154$1 := (if p0$1 then $$flux_contribution_i_momentum_x$2$1 else v154$1);
    v154$2 := (if p0$2 then $$flux_contribution_i_momentum_x$2$2 else v154$2);
    v155$1 := (if p0$1 then $$flux_i_momentum$0$1 else v155$1);
    v155$2 := (if p0$2 then $$flux_i_momentum$0$2 else v155$2);
    $$flux_i_momentum$0$1 := (if p0$1 then FADD32(v155$1, FMUL32(v148$1, FADD32(v153$1, v154$1))) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p0$2 then FADD32(v155$2, FMUL32(v148$2, FADD32(v153$2, v154$2))) else $$flux_i_momentum$0$2);
    v156$1 := (if p0$1 then $$flux_contribution_nb_momentum_y$2$1 else v156$1);
    v156$2 := (if p0$2 then $$flux_contribution_nb_momentum_y$2$2 else v156$2);
    v157$1 := (if p0$1 then $$flux_contribution_i_momentum_y$2$1 else v157$1);
    v157$2 := (if p0$2 then $$flux_contribution_i_momentum_y$2$2 else v157$2);
    v158$1 := (if p0$1 then $$flux_i_momentum$1$1 else v158$1);
    v158$2 := (if p0$2 then $$flux_i_momentum$1$2 else v158$2);
    $$flux_i_momentum$1$1 := (if p0$1 then FADD32(v158$1, FMUL32(v148$1, FADD32(v156$1, v157$1))) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p0$2 then FADD32(v158$2, FMUL32(v148$2, FADD32(v156$2, v157$2))) else $$flux_i_momentum$1$2);
    v159$1 := (if p0$1 then $$flux_contribution_nb_momentum_z$2$1 else v159$1);
    v159$2 := (if p0$2 then $$flux_contribution_nb_momentum_z$2$2 else v159$2);
    v160$1 := (if p0$1 then $$flux_contribution_i_momentum_z$2$1 else v160$1);
    v160$2 := (if p0$2 then $$flux_contribution_i_momentum_z$2$2 else v160$2);
    v161$1 := (if p0$1 then $$flux_i_momentum$2$1 else v161$1);
    v161$2 := (if p0$2 then $$flux_i_momentum$2$2 else v161$2);
    $$flux_i_momentum$2$1 := (if p0$1 then FADD32(v161$1, FMUL32(v148$1, FADD32(v159$1, v160$1))) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p0$2 then FADD32(v161$2, FMUL32(v148$2, FADD32(v159$2, v160$2))) else $$flux_i_momentum$2$2);
    $flux_i_density.3$1, $flux_i_density_energy.3$1 := (if p0$1 then FADD32(FADD32(FADD32(FADD32($flux_i_density.0$1, FMUL32(v107$1, FSUB32(v1$1, v60$1))), FMUL32(v118$1, FADD32(v119$1, v120$1))), FMUL32(v133$1, FADD32(v134$1, v135$1))), FMUL32(v148$1, FADD32(v149$1, v150$1))) else $flux_i_density.3$1), (if p0$1 then FADD32(FADD32(FADD32(FADD32($flux_i_density_energy.0$1, FMUL32(v107$1, FSUB32(v5$1, v64$1))), FMUL32(v118$1, FADD32(v121$1, v122$1))), FMUL32(v133$1, FADD32(v136$1, v137$1))), FMUL32(v148$1, FADD32(v151$1, v152$1))) else $flux_i_density_energy.3$1);
    $flux_i_density.3$2, $flux_i_density_energy.3$2 := (if p0$2 then FADD32(FADD32(FADD32(FADD32($flux_i_density.0$2, FMUL32(v107$2, FSUB32(v1$2, v60$2))), FMUL32(v118$2, FADD32(v119$2, v120$2))), FMUL32(v133$2, FADD32(v134$2, v135$2))), FMUL32(v148$2, FADD32(v149$2, v150$2))) else $flux_i_density.3$2), (if p0$2 then FADD32(FADD32(FADD32(FADD32($flux_i_density_energy.0$2, FMUL32(v107$2, FSUB32(v5$2, v64$2))), FMUL32(v118$2, FADD32(v121$2, v122$2))), FMUL32(v133$2, FADD32(v136$2, v137$2))), FMUL32(v148$2, FADD32(v151$2, v152$2))) else $flux_i_density_energy.3$2);
    v162$1 := (if p1$1 then v49$1 == -1 else v162$1);
    v162$2 := (if p1$2 then v49$2 == -1 else v162$2);
    p2$1 := (if p1$1 && v162$1 then v162$1 else p2$1);
    p2$2 := (if p1$2 && v162$2 then v162$2 else p2$2);
    p3$1 := (if p1$1 && !v162$1 then !v162$1 else p3$1);
    p3$2 := (if p1$2 && !v162$2 then !v162$2 else p3$2);
    v163$1 := (if p2$1 then $$normal$0$1 else v163$1);
    v163$2 := (if p2$2 then $$normal$0$2 else v163$2);
    v164$1 := (if p2$1 then $$flux_i_momentum$0$1 else v164$1);
    v164$2 := (if p2$2 then $$flux_i_momentum$0$2 else v164$2);
    $$flux_i_momentum$0$1 := (if p2$1 then FADD32(v164$1, FMUL32(v163$1, v22$1)) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p2$2 then FADD32(v164$2, FMUL32(v163$2, v22$2)) else $$flux_i_momentum$0$2);
    v165$1 := (if p2$1 then $$normal$1$1 else v165$1);
    v165$2 := (if p2$2 then $$normal$1$2 else v165$2);
    v166$1 := (if p2$1 then $$flux_i_momentum$1$1 else v166$1);
    v166$2 := (if p2$2 then $$flux_i_momentum$1$2 else v166$2);
    $$flux_i_momentum$1$1 := (if p2$1 then FADD32(v166$1, FMUL32(v165$1, v22$1)) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p2$2 then FADD32(v166$2, FMUL32(v165$2, v22$2)) else $$flux_i_momentum$1$2);
    v167$1 := (if p2$1 then $$normal$2$1 else v167$1);
    v167$2 := (if p2$2 then $$normal$2$2 else v167$2);
    v168$1 := (if p2$1 then $$flux_i_momentum$2$1 else v168$1);
    v168$2 := (if p2$2 then $$flux_i_momentum$2$2 else v168$2);
    $$flux_i_momentum$2$1 := (if p2$1 then FADD32(v168$1, FMUL32(v167$1, v22$1)) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p2$2 then FADD32(v168$2, FMUL32(v167$2, v22$2)) else $$flux_i_momentum$2$2);
    $flux_i_density.2$1, $flux_i_density_energy.2$1 := (if p2$1 then $flux_i_density.0$1 else $flux_i_density.2$1), (if p2$1 then $flux_i_density_energy.0$1 else $flux_i_density_energy.2$1);
    $flux_i_density.2$2, $flux_i_density_energy.2$2 := (if p2$2 then $flux_i_density.0$2 else $flux_i_density.2$2), (if p2$2 then $flux_i_density_energy.0$2 else $flux_i_density_energy.2$2);
    v169$1 := (if p3$1 then v49$1 == -2 else v169$1);
    v169$2 := (if p3$2 then v49$2 == -2 else v169$2);
    p5$1 := (if p3$1 && v169$1 then v169$1 else p5$1);
    p5$2 := (if p3$2 && v169$2 then v169$2 else p5$2);
    p4$1 := (if p3$1 && !v169$1 then !v169$1 else p4$1);
    p4$2 := (if p3$2 && !v169$2 then !v169$2 else p4$2);
    $flux_i_density.1$1, $flux_i_density_energy.1$1 := (if p4$1 then $flux_i_density.0$1 else $flux_i_density.1$1), (if p4$1 then $flux_i_density_energy.0$1 else $flux_i_density_energy.1$1);
    $flux_i_density.1$2, $flux_i_density_energy.1$2 := (if p4$2 then $flux_i_density.0$2 else $flux_i_density.1$2), (if p4$2 then $flux_i_density_energy.0$2 else $flux_i_density_energy.1$2);
    v170$1 := (if p5$1 then $$normal$0$1 else v170$1);
    v170$2 := (if p5$2 then $$normal$0$2 else v170$2);
    v171$1 := (if p5$1 then FMUL32(1056964608, v170$1) else v171$1);
    v171$2 := (if p5$2 then FMUL32(1056964608, v170$2) else v171$2);
    v172$1 := (if p5$1 then $$ff_variable$1[1] else v172$1);
    v172$2 := (if p5$2 then $$ff_variable$2[1] else v172$2);
    v173$1 := (if p5$1 then $$momentum_i$0$1 else v173$1);
    v173$2 := (if p5$2 then $$momentum_i$0$2 else v173$2);
    v174$1 := (if p5$1 then $$ff_flux_contribution_density_energy$1[0] else v174$1);
    v174$2 := (if p5$2 then $$ff_flux_contribution_density_energy$2[0] else v174$2);
    v175$1 := (if p5$1 then $$flux_contribution_i_density_energy$0$1 else v175$1);
    v175$2 := (if p5$2 then $$flux_contribution_i_density_energy$0$2 else v175$2);
    v176$1 := (if p5$1 then $$ff_flux_contribution_momentum_x$1[0] else v176$1);
    v176$2 := (if p5$2 then $$ff_flux_contribution_momentum_x$2[0] else v176$2);
    v177$1 := (if p5$1 then $$flux_contribution_i_momentum_x$0$1 else v177$1);
    v177$2 := (if p5$2 then $$flux_contribution_i_momentum_x$0$2 else v177$2);
    v178$1 := (if p5$1 then $$flux_i_momentum$0$1 else v178$1);
    v178$2 := (if p5$2 then $$flux_i_momentum$0$2 else v178$2);
    $$flux_i_momentum$0$1 := (if p5$1 then FADD32(v178$1, FMUL32(v171$1, FADD32(v176$1, v177$1))) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p5$2 then FADD32(v178$2, FMUL32(v171$2, FADD32(v176$2, v177$2))) else $$flux_i_momentum$0$2);
    v179$1 := (if p5$1 then $$ff_flux_contribution_momentum_y$1[0] else v179$1);
    v179$2 := (if p5$2 then $$ff_flux_contribution_momentum_y$2[0] else v179$2);
    v180$1 := (if p5$1 then $$flux_contribution_i_momentum_y$0$1 else v180$1);
    v180$2 := (if p5$2 then $$flux_contribution_i_momentum_y$0$2 else v180$2);
    v181$1 := (if p5$1 then $$flux_i_momentum$1$1 else v181$1);
    v181$2 := (if p5$2 then $$flux_i_momentum$1$2 else v181$2);
    $$flux_i_momentum$1$1 := (if p5$1 then FADD32(v181$1, FMUL32(v171$1, FADD32(v179$1, v180$1))) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p5$2 then FADD32(v181$2, FMUL32(v171$2, FADD32(v179$2, v180$2))) else $$flux_i_momentum$1$2);
    v182$1 := (if p5$1 then $$ff_flux_contribution_momentum_z$1[0] else v182$1);
    v182$2 := (if p5$2 then $$ff_flux_contribution_momentum_z$2[0] else v182$2);
    v183$1 := (if p5$1 then $$flux_contribution_i_momentum_z$0$1 else v183$1);
    v183$2 := (if p5$2 then $$flux_contribution_i_momentum_z$0$2 else v183$2);
    v184$1 := (if p5$1 then $$flux_i_momentum$2$1 else v184$1);
    v184$2 := (if p5$2 then $$flux_i_momentum$2$2 else v184$2);
    $$flux_i_momentum$2$1 := (if p5$1 then FADD32(v184$1, FMUL32(v171$1, FADD32(v182$1, v183$1))) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p5$2 then FADD32(v184$2, FMUL32(v171$2, FADD32(v182$2, v183$2))) else $$flux_i_momentum$2$2);
    v185$1 := (if p5$1 then $$normal$1$1 else v185$1);
    v185$2 := (if p5$2 then $$normal$1$2 else v185$2);
    v186$1 := (if p5$1 then FMUL32(1056964608, v185$1) else v186$1);
    v186$2 := (if p5$2 then FMUL32(1056964608, v185$2) else v186$2);
    v187$1 := (if p5$1 then $$ff_variable$1[2] else v187$1);
    v187$2 := (if p5$2 then $$ff_variable$2[2] else v187$2);
    v188$1 := (if p5$1 then $$momentum_i$1$1 else v188$1);
    v188$2 := (if p5$2 then $$momentum_i$1$2 else v188$2);
    v189$1 := (if p5$1 then $$ff_flux_contribution_density_energy$1[1] else v189$1);
    v189$2 := (if p5$2 then $$ff_flux_contribution_density_energy$2[1] else v189$2);
    v190$1 := (if p5$1 then $$flux_contribution_i_density_energy$1$1 else v190$1);
    v190$2 := (if p5$2 then $$flux_contribution_i_density_energy$1$2 else v190$2);
    v191$1 := (if p5$1 then $$ff_flux_contribution_momentum_x$1[1] else v191$1);
    v191$2 := (if p5$2 then $$ff_flux_contribution_momentum_x$2[1] else v191$2);
    v192$1 := (if p5$1 then $$flux_contribution_i_momentum_x$1$1 else v192$1);
    v192$2 := (if p5$2 then $$flux_contribution_i_momentum_x$1$2 else v192$2);
    v193$1 := (if p5$1 then $$flux_i_momentum$0$1 else v193$1);
    v193$2 := (if p5$2 then $$flux_i_momentum$0$2 else v193$2);
    $$flux_i_momentum$0$1 := (if p5$1 then FADD32(v193$1, FMUL32(v186$1, FADD32(v191$1, v192$1))) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p5$2 then FADD32(v193$2, FMUL32(v186$2, FADD32(v191$2, v192$2))) else $$flux_i_momentum$0$2);
    v194$1 := (if p5$1 then $$ff_flux_contribution_momentum_y$1[1] else v194$1);
    v194$2 := (if p5$2 then $$ff_flux_contribution_momentum_y$2[1] else v194$2);
    v195$1 := (if p5$1 then $$flux_contribution_i_momentum_y$1$1 else v195$1);
    v195$2 := (if p5$2 then $$flux_contribution_i_momentum_y$1$2 else v195$2);
    v196$1 := (if p5$1 then $$flux_i_momentum$1$1 else v196$1);
    v196$2 := (if p5$2 then $$flux_i_momentum$1$2 else v196$2);
    $$flux_i_momentum$1$1 := (if p5$1 then FADD32(v196$1, FMUL32(v186$1, FADD32(v194$1, v195$1))) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p5$2 then FADD32(v196$2, FMUL32(v186$2, FADD32(v194$2, v195$2))) else $$flux_i_momentum$1$2);
    v197$1 := (if p5$1 then $$ff_flux_contribution_momentum_z$1[1] else v197$1);
    v197$2 := (if p5$2 then $$ff_flux_contribution_momentum_z$2[1] else v197$2);
    v198$1 := (if p5$1 then $$flux_contribution_i_momentum_z$1$1 else v198$1);
    v198$2 := (if p5$2 then $$flux_contribution_i_momentum_z$1$2 else v198$2);
    v199$1 := (if p5$1 then $$flux_i_momentum$2$1 else v199$1);
    v199$2 := (if p5$2 then $$flux_i_momentum$2$2 else v199$2);
    $$flux_i_momentum$2$1 := (if p5$1 then FADD32(v199$1, FMUL32(v186$1, FADD32(v197$1, v198$1))) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p5$2 then FADD32(v199$2, FMUL32(v186$2, FADD32(v197$2, v198$2))) else $$flux_i_momentum$2$2);
    v200$1 := (if p5$1 then $$normal$2$1 else v200$1);
    v200$2 := (if p5$2 then $$normal$2$2 else v200$2);
    v201$1 := (if p5$1 then FMUL32(1056964608, v200$1) else v201$1);
    v201$2 := (if p5$2 then FMUL32(1056964608, v200$2) else v201$2);
    v202$1 := (if p5$1 then $$ff_variable$1[3] else v202$1);
    v202$2 := (if p5$2 then $$ff_variable$2[3] else v202$2);
    v203$1 := (if p5$1 then $$momentum_i$2$1 else v203$1);
    v203$2 := (if p5$2 then $$momentum_i$2$2 else v203$2);
    v204$1 := (if p5$1 then $$ff_flux_contribution_density_energy$1[2] else v204$1);
    v204$2 := (if p5$2 then $$ff_flux_contribution_density_energy$2[2] else v204$2);
    v205$1 := (if p5$1 then $$flux_contribution_i_density_energy$2$1 else v205$1);
    v205$2 := (if p5$2 then $$flux_contribution_i_density_energy$2$2 else v205$2);
    v206$1 := (if p5$1 then $$ff_flux_contribution_momentum_x$1[2] else v206$1);
    v206$2 := (if p5$2 then $$ff_flux_contribution_momentum_x$2[2] else v206$2);
    v207$1 := (if p5$1 then $$flux_contribution_i_momentum_x$2$1 else v207$1);
    v207$2 := (if p5$2 then $$flux_contribution_i_momentum_x$2$2 else v207$2);
    v208$1 := (if p5$1 then $$flux_i_momentum$0$1 else v208$1);
    v208$2 := (if p5$2 then $$flux_i_momentum$0$2 else v208$2);
    $$flux_i_momentum$0$1 := (if p5$1 then FADD32(v208$1, FMUL32(v201$1, FADD32(v206$1, v207$1))) else $$flux_i_momentum$0$1);
    $$flux_i_momentum$0$2 := (if p5$2 then FADD32(v208$2, FMUL32(v201$2, FADD32(v206$2, v207$2))) else $$flux_i_momentum$0$2);
    v209$1 := (if p5$1 then $$ff_flux_contribution_momentum_y$1[2] else v209$1);
    v209$2 := (if p5$2 then $$ff_flux_contribution_momentum_y$2[2] else v209$2);
    v210$1 := (if p5$1 then $$flux_contribution_i_momentum_y$2$1 else v210$1);
    v210$2 := (if p5$2 then $$flux_contribution_i_momentum_y$2$2 else v210$2);
    v211$1 := (if p5$1 then $$flux_i_momentum$1$1 else v211$1);
    v211$2 := (if p5$2 then $$flux_i_momentum$1$2 else v211$2);
    $$flux_i_momentum$1$1 := (if p5$1 then FADD32(v211$1, FMUL32(v201$1, FADD32(v209$1, v210$1))) else $$flux_i_momentum$1$1);
    $$flux_i_momentum$1$2 := (if p5$2 then FADD32(v211$2, FMUL32(v201$2, FADD32(v209$2, v210$2))) else $$flux_i_momentum$1$2);
    v212$1 := (if p5$1 then $$ff_flux_contribution_momentum_z$1[2] else v212$1);
    v212$2 := (if p5$2 then $$ff_flux_contribution_momentum_z$2[2] else v212$2);
    v213$1 := (if p5$1 then $$flux_contribution_i_momentum_z$2$1 else v213$1);
    v213$2 := (if p5$2 then $$flux_contribution_i_momentum_z$2$2 else v213$2);
    v214$1 := (if p5$1 then $$flux_i_momentum$2$1 else v214$1);
    v214$2 := (if p5$2 then $$flux_i_momentum$2$2 else v214$2);
    $$flux_i_momentum$2$1 := (if p5$1 then FADD32(v214$1, FMUL32(v201$1, FADD32(v212$1, v213$1))) else $$flux_i_momentum$2$1);
    $$flux_i_momentum$2$2 := (if p5$2 then FADD32(v214$2, FMUL32(v201$2, FADD32(v212$2, v213$2))) else $$flux_i_momentum$2$2);
    $flux_i_density.1$1, $flux_i_density_energy.1$1 := (if p5$1 then FADD32(FADD32(FADD32($flux_i_density.0$1, FMUL32(v171$1, FADD32(v172$1, v173$1))), FMUL32(v186$1, FADD32(v187$1, v188$1))), FMUL32(v201$1, FADD32(v202$1, v203$1))) else $flux_i_density.1$1), (if p5$1 then FADD32(FADD32(FADD32($flux_i_density_energy.0$1, FMUL32(v171$1, FADD32(v174$1, v175$1))), FMUL32(v186$1, FADD32(v189$1, v190$1))), FMUL32(v201$1, FADD32(v204$1, v205$1))) else $flux_i_density_energy.1$1);
    $flux_i_density.1$2, $flux_i_density_energy.1$2 := (if p5$2 then FADD32(FADD32(FADD32($flux_i_density.0$2, FMUL32(v171$2, FADD32(v172$2, v173$2))), FMUL32(v186$2, FADD32(v187$2, v188$2))), FMUL32(v201$2, FADD32(v202$2, v203$2))) else $flux_i_density.1$2), (if p5$2 then FADD32(FADD32(FADD32($flux_i_density_energy.0$2, FMUL32(v171$2, FADD32(v174$2, v175$2))), FMUL32(v186$2, FADD32(v189$2, v190$2))), FMUL32(v201$2, FADD32(v204$2, v205$2))) else $flux_i_density_energy.1$2);
    $flux_i_density.2$1, $flux_i_density_energy.2$1 := (if p3$1 then $flux_i_density.1$1 else $flux_i_density.2$1), (if p3$1 then $flux_i_density_energy.1$1 else $flux_i_density_energy.2$1);
    $flux_i_density.2$2, $flux_i_density_energy.2$2 := (if p3$2 then $flux_i_density.1$2 else $flux_i_density.2$2), (if p3$2 then $flux_i_density_energy.1$2 else $flux_i_density_energy.2$2);
    $flux_i_density.3$1, $flux_i_density_energy.3$1 := (if p1$1 then $flux_i_density.2$1 else $flux_i_density.3$1), (if p1$1 then $flux_i_density_energy.2$1 else $flux_i_density_energy.3$1);
    $flux_i_density.3$2, $flux_i_density_energy.3$2 := (if p1$2 then $flux_i_density.2$2 else $flux_i_density.3$2), (if p1$2 then $flux_i_density_energy.2$2 else $flux_i_density_energy.3$2);
    $j.0, $flux_i_density.0$1, $flux_i_density_energy.0$1 := BV32_ADD($j.0, 1), $flux_i_density.3$1, $flux_i_density_energy.3$1;
    $flux_i_density.0$2, $flux_i_density_energy.0$2 := $flux_i_density.3$2, $flux_i_density_energy.3$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 192 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 506 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

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

var $$momentum.i5$0$1: int;

var $$momentum.i5$0$2: int;

var $$momentum.i5$1$1: int;

var $$momentum.i5$1$2: int;

var $$momentum.i5$2$1: int;

var $$momentum.i5$2$2: int;

var $$velocity.i6$0$1: int;

var $$velocity.i6$0$2: int;

var $$velocity.i6$1$1: int;

var $$velocity.i6$1$2: int;

var $$velocity.i6$2$1: int;

var $$velocity.i6$2$2: int;

var $$momentum.i4$0$1: int;

var $$momentum.i4$0$2: int;

var $$momentum.i4$1$1: int;

var $$momentum.i4$1$2: int;

var $$momentum.i4$2$1: int;

var $$momentum.i4$2$2: int;

var $$velocity.i3$0$1: int;

var $$velocity.i3$0$2: int;

var $$velocity.i3$1$1: int;

var $$velocity.i3$1$2: int;

var $$velocity.i3$2$1: int;

var $$velocity.i3$2$2: int;

var $$momentum.i1$0$1: int;

var $$momentum.i1$0$2: int;

var $$momentum.i1$1$1: int;

var $$momentum.i1$1$2: int;

var $$momentum.i1$2$1: int;

var $$momentum.i1$2$2: int;

var $$velocity.i2$0$1: int;

var $$velocity.i2$0$2: int;

var $$velocity.i2$1$1: int;

var $$velocity.i2$1$2: int;

var $$velocity.i2$2$1: int;

var $$velocity.i2$2$2: int;

var $$velocity.i$0$1: int;

var $$velocity.i$0$2: int;

var $$velocity.i$1$1: int;

var $$velocity.i$1$2: int;

var $$velocity.i$2$1: int;

var $$velocity.i$2$2: int;

var $$momentum.i$0$1: int;

var $$momentum.i$0$2: int;

var $$momentum.i$1$1: int;

var $$momentum.i$1$2: int;

var $$momentum.i$2$1: int;

var $$momentum.i$2$2: int;

var $$normal$0$1: int;

var $$normal$0$2: int;

var $$normal$1$1: int;

var $$normal$1$2: int;

var $$normal$2$1: int;

var $$normal$2$2: int;

var $$momentum_i$0$1: int;

var $$momentum_i$0$2: int;

var $$momentum_i$1$1: int;

var $$momentum_i$1$2: int;

var $$momentum_i$2$1: int;

var $$momentum_i$2$2: int;

var $$velocity_i$0$1: int;

var $$velocity_i$0$2: int;

var $$velocity_i$1$1: int;

var $$velocity_i$1$2: int;

var $$velocity_i$2$1: int;

var $$velocity_i$2$2: int;

var $$flux_contribution_i_momentum_x$0$1: int;

var $$flux_contribution_i_momentum_x$0$2: int;

var $$flux_contribution_i_momentum_x$1$1: int;

var $$flux_contribution_i_momentum_x$1$2: int;

var $$flux_contribution_i_momentum_x$2$1: int;

var $$flux_contribution_i_momentum_x$2$2: int;

var $$flux_contribution_i_momentum_y$0$1: int;

var $$flux_contribution_i_momentum_y$0$2: int;

var $$flux_contribution_i_momentum_y$1$1: int;

var $$flux_contribution_i_momentum_y$1$2: int;

var $$flux_contribution_i_momentum_y$2$1: int;

var $$flux_contribution_i_momentum_y$2$2: int;

var $$flux_contribution_i_momentum_z$0$1: int;

var $$flux_contribution_i_momentum_z$0$2: int;

var $$flux_contribution_i_momentum_z$1$1: int;

var $$flux_contribution_i_momentum_z$1$2: int;

var $$flux_contribution_i_momentum_z$2$1: int;

var $$flux_contribution_i_momentum_z$2$2: int;

var $$flux_contribution_i_density_energy$0$1: int;

var $$flux_contribution_i_density_energy$0$2: int;

var $$flux_contribution_i_density_energy$1$1: int;

var $$flux_contribution_i_density_energy$1$2: int;

var $$flux_contribution_i_density_energy$2$1: int;

var $$flux_contribution_i_density_energy$2$2: int;

var $$flux_i_momentum$0$1: int;

var $$flux_i_momentum$0$2: int;

var $$flux_i_momentum$1$1: int;

var $$flux_i_momentum$1$2: int;

var $$flux_i_momentum$2$1: int;

var $$flux_i_momentum$2$2: int;

var $$velocity_nb$0$1: int;

var $$velocity_nb$0$2: int;

var $$velocity_nb$1$1: int;

var $$velocity_nb$1$2: int;

var $$velocity_nb$2$1: int;

var $$velocity_nb$2$2: int;

var $$momentum_nb$0$1: int;

var $$momentum_nb$0$2: int;

var $$momentum_nb$1$1: int;

var $$momentum_nb$1$2: int;

var $$momentum_nb$2$1: int;

var $$momentum_nb$2$2: int;

var $$flux_contribution_nb_momentum_x$0$1: int;

var $$flux_contribution_nb_momentum_x$0$2: int;

var $$flux_contribution_nb_momentum_x$1$1: int;

var $$flux_contribution_nb_momentum_x$1$2: int;

var $$flux_contribution_nb_momentum_x$2$1: int;

var $$flux_contribution_nb_momentum_x$2$2: int;

var $$flux_contribution_nb_momentum_y$0$1: int;

var $$flux_contribution_nb_momentum_y$0$2: int;

var $$flux_contribution_nb_momentum_y$1$1: int;

var $$flux_contribution_nb_momentum_y$1$2: int;

var $$flux_contribution_nb_momentum_y$2$1: int;

var $$flux_contribution_nb_momentum_y$2$2: int;

var $$flux_contribution_nb_momentum_z$0$1: int;

var $$flux_contribution_nb_momentum_z$0$2: int;

var $$flux_contribution_nb_momentum_z$1$1: int;

var $$flux_contribution_nb_momentum_z$1$2: int;

var $$flux_contribution_nb_momentum_z$2$1: int;

var $$flux_contribution_nb_momentum_z$2$2: int;

var $$flux_contribution_nb_density_energy$0$1: int;

var $$flux_contribution_nb_density_energy$0$2: int;

var $$flux_contribution_nb_density_energy$1$1: int;

var $$flux_contribution_nb_density_energy$1$2: int;

var $$flux_contribution_nb_density_energy$2$1: int;

var $$flux_contribution_nb_density_energy$2$2: int;

const _WATCHED_VALUE_$$elements_surrounding_elements: int;

procedure {:inline 1} _LOG_READ_$$elements_surrounding_elements(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$elements_surrounding_elements;



implementation {:inline 1} _LOG_READ_$$elements_surrounding_elements(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$elements_surrounding_elements := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$elements_surrounding_elements == _value then true else _READ_HAS_OCCURRED_$$elements_surrounding_elements);
    return;
}



procedure _CHECK_READ_$$elements_surrounding_elements(_P: bool, _offset: int, _value: int);
  requires {:source_name "elements_surrounding_elements"} {:array "$$elements_surrounding_elements"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements);
  requires {:source_name "elements_surrounding_elements"} {:array "$$elements_surrounding_elements"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements: bool;

procedure {:inline 1} _LOG_WRITE_$$elements_surrounding_elements(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$elements_surrounding_elements, _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements;



implementation {:inline 1} _LOG_WRITE_$$elements_surrounding_elements(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$elements_surrounding_elements := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$elements_surrounding_elements == _value then true else _WRITE_HAS_OCCURRED_$$elements_surrounding_elements);
    _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$elements_surrounding_elements == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements);
    return;
}



procedure _CHECK_WRITE_$$elements_surrounding_elements(_P: bool, _offset: int, _value: int);
  requires {:source_name "elements_surrounding_elements"} {:array "$$elements_surrounding_elements"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$elements_surrounding_elements != _value);
  requires {:source_name "elements_surrounding_elements"} {:array "$$elements_surrounding_elements"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$elements_surrounding_elements != _value);
  requires {:source_name "elements_surrounding_elements"} {:array "$$elements_surrounding_elements"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$elements_surrounding_elements(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$elements_surrounding_elements;



implementation {:inline 1} _LOG_ATOMIC_$$elements_surrounding_elements(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$elements_surrounding_elements := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$elements_surrounding_elements);
    return;
}



procedure _CHECK_ATOMIC_$$elements_surrounding_elements(_P: bool, _offset: int);
  requires {:source_name "elements_surrounding_elements"} {:array "$$elements_surrounding_elements"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset);
  requires {:source_name "elements_surrounding_elements"} {:array "$$elements_surrounding_elements"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements := (if _P && _WRITE_HAS_OCCURRED_$$elements_surrounding_elements && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$elements_surrounding_elements);
    return;
}



const _WATCHED_VALUE_$$normals: int;

procedure {:inline 1} _LOG_READ_$$normals(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$normals;



implementation {:inline 1} _LOG_READ_$$normals(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$normals := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normals == _value then true else _READ_HAS_OCCURRED_$$normals);
    return;
}



procedure _CHECK_READ_$$normals(_P: bool, _offset: int, _value: int);
  requires {:source_name "normals"} {:array "$$normals"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$normals);
  requires {:source_name "normals"} {:array "$$normals"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$normals: bool;

procedure {:inline 1} _LOG_WRITE_$$normals(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$normals, _WRITE_READ_BENIGN_FLAG_$$normals;



implementation {:inline 1} _LOG_WRITE_$$normals(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$normals := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normals == _value then true else _WRITE_HAS_OCCURRED_$$normals);
    _WRITE_READ_BENIGN_FLAG_$$normals := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normals == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$normals);
    return;
}



procedure _CHECK_WRITE_$$normals(_P: bool, _offset: int, _value: int);
  requires {:source_name "normals"} {:array "$$normals"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normals != _value);
  requires {:source_name "normals"} {:array "$$normals"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normals != _value);
  requires {:source_name "normals"} {:array "$$normals"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$normals(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$normals;



implementation {:inline 1} _LOG_ATOMIC_$$normals(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$normals := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$normals);
    return;
}



procedure _CHECK_ATOMIC_$$normals(_P: bool, _offset: int);
  requires {:source_name "normals"} {:array "$$normals"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset);
  requires {:source_name "normals"} {:array "$$normals"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$normals(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$normals;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$normals(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$normals := (if _P && _WRITE_HAS_OCCURRED_$$normals && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$normals);
    return;
}



const _WATCHED_VALUE_$$variables: int;

procedure {:inline 1} _LOG_READ_$$variables(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$variables;



implementation {:inline 1} _LOG_READ_$$variables(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables == _value then true else _READ_HAS_OCCURRED_$$variables);
    return;
}



procedure _CHECK_READ_$$variables(_P: bool, _offset: int, _value: int);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$variables);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$variables: bool;

procedure {:inline 1} _LOG_WRITE_$$variables(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$variables, _WRITE_READ_BENIGN_FLAG_$$variables;



implementation {:inline 1} _LOG_WRITE_$$variables(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables == _value then true else _WRITE_HAS_OCCURRED_$$variables);
    _WRITE_READ_BENIGN_FLAG_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$variables);
    return;
}



procedure _CHECK_WRITE_$$variables(_P: bool, _offset: int, _value: int);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables != _value);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables != _value);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$variables(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$variables;



implementation {:inline 1} _LOG_ATOMIC_$$variables(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$variables);
    return;
}



procedure _CHECK_ATOMIC_$$variables(_P: bool, _offset: int);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$variables;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$variables := (if _P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$variables);
    return;
}



const _WATCHED_VALUE_$$fluxes: int;

procedure {:inline 1} _LOG_READ_$$fluxes(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$fluxes;



implementation {:inline 1} _LOG_READ_$$fluxes(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes == _value then true else _READ_HAS_OCCURRED_$$fluxes);
    return;
}



procedure _CHECK_READ_$$fluxes(_P: bool, _offset: int, _value: int);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$fluxes);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$fluxes: bool;

procedure {:inline 1} _LOG_WRITE_$$fluxes(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$fluxes, _WRITE_READ_BENIGN_FLAG_$$fluxes;



implementation {:inline 1} _LOG_WRITE_$$fluxes(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes == _value then true else _WRITE_HAS_OCCURRED_$$fluxes);
    _WRITE_READ_BENIGN_FLAG_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$fluxes);
    return;
}



procedure _CHECK_WRITE_$$fluxes(_P: bool, _offset: int, _value: int);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes != _value);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes != _value);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$fluxes(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$fluxes;



implementation {:inline 1} _LOG_ATOMIC_$$fluxes(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$fluxes);
    return;
}



procedure _CHECK_ATOMIC_$$fluxes(_P: bool, _offset: int);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$fluxes;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$fluxes := (if _P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$fluxes);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}
