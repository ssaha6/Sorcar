type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$T"} {:global} {:elem_width 32} {:source_name "T"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$T: bool;

axiom {:array_info "$$RF"} {:global} {:elem_width 32} {:source_name "RF"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RF: bool;

var {:source_name "RB"} {:global} $$RB: [int]int;

axiom {:array_info "$$RB"} {:global} {:elem_width 32} {:source_name "RB"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RB: bool;

axiom {:array_info "$$EG"} {:global} {:elem_width 32} {:source_name "EG"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$EG: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$EG: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$EG: bool;

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

function FDIV32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "ratt8_kernel"} {:kernel} $ratt8_kernel($TCONV: int);
  requires !_READ_HAS_OCCURRED_$$T && !_WRITE_HAS_OCCURRED_$$T && !_ATOMIC_HAS_OCCURRED_$$T;
  requires !_READ_HAS_OCCURRED_$$RF && !_WRITE_HAS_OCCURRED_$$RF && !_ATOMIC_HAS_OCCURRED_$$RF;
  requires !_READ_HAS_OCCURRED_$$RB && !_WRITE_HAS_OCCURRED_$$RB && !_ATOMIC_HAS_OCCURRED_$$RB;
  requires !_READ_HAS_OCCURRED_$$EG && !_WRITE_HAS_OCCURRED_$$EG && !_ATOMIC_HAS_OCCURRED_$$EG;
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
  modifies _WRITE_HAS_OCCURRED_$$RB, _WRITE_READ_BENIGN_FLAG_$$RB, _WRITE_READ_BENIGN_FLAG_$$RB;



implementation {:source_name "ratt8_kernel"} {:kernel} $ratt8_kernel($TCONV: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
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
  var v55$1: int;
  var v55$2: int;
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
  var v48$1: int;
  var v48$2: int;
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
  var v110$1: int;
  var v110$2: int;
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
  var v128$1: int;
  var v128$2: int;
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


  $0:
    havoc v0$1, v0$2;
    v1$1 := FMUL32(1232560160, FDIV32(1065353216, FMUL32(1285461554, FMUL32(v0$1, $TCONV))));
    v1$2 := FMUL32(1232560160, FDIV32(1065353216, FMUL32(1285461554, FMUL32(v0$2, $TCONV))));
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    v6$1 := FMUL32(FMUL32(v2$1, v3$1), FDIV32(1065353216, FMUL32(v4$1, v5$1)));
    v6$2 := FMUL32(FMUL32(v2$2, v3$2), FDIV32(1065353216, FMUL32(v4$2, v5$2)));
    havoc v7$1, v7$2;
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$RB(true, BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v7$1, (if FLT32(1621981420, v6$1) then 1621981420 else v6$1)), $$RB[BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$RB(true, BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v7$2, (if FLT32(1621981420, v6$2) then 1621981420 else v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v7$1, (if FLT32(1621981420, v6$1) then 1621981420 else v6$1));
    $$RB[BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v7$2, (if FLT32(1621981420, v6$2) then 1621981420 else v6$2));
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    v12$1 := FMUL32(FMUL32(v8$1, v9$1), FDIV32(1065353216, FMUL32(v10$1, v11$1)));
    v12$2 := FMUL32(FMUL32(v8$2, v9$2), FDIV32(1065353216, FMUL32(v10$2, v11$2)));
    havoc v13$1, v13$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$RB(true, BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v13$1, (if FLT32(1621981420, v12$1) then 1621981420 else v12$1)), $$RB[BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$RB(true, BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v13$2, (if FLT32(1621981420, v12$2) then 1621981420 else v12$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v13$1, (if FLT32(1621981420, v12$1) then 1621981420 else v12$1));
    $$RB[BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v13$2, (if FLT32(1621981420, v12$2) then 1621981420 else v12$2));
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    havoc v17$1, v17$2;
    v18$1 := FMUL32(FMUL32(v14$1, v15$1), FDIV32(1065353216, FMUL32(v16$1, v17$1)));
    v18$2 := FMUL32(FMUL32(v14$2, v15$2), FDIV32(1065353216, FMUL32(v16$2, v17$2)));
    havoc v19$1, v19$2;
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$RB(true, BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v19$1, (if FLT32(1621981420, v18$1) then 1621981420 else v18$1)), $$RB[BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$RB(true, BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v19$2, (if FLT32(1621981420, v18$2) then 1621981420 else v18$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v19$1, (if FLT32(1621981420, v18$1) then 1621981420 else v18$1));
    $$RB[BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v19$2, (if FLT32(1621981420, v18$2) then 1621981420 else v18$2));
    havoc v20$1, v20$2;
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    v25$1 := FMUL32(FMUL32(v20$1, v21$1), FDIV32(1065353216, FMUL32(FMUL32(FMUL32(v22$1, v23$1), v24$1), v1$1)));
    v25$2 := FMUL32(FMUL32(v20$2, v21$2), FDIV32(1065353216, FMUL32(FMUL32(FMUL32(v22$2, v23$2), v24$2), v1$2)));
    havoc v26$1, v26$2;
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$RB(true, BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v26$1, (if FLT32(1621981420, v25$1) then 1621981420 else v25$1)), $$RB[BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$RB(true, BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v26$2, (if FLT32(1621981420, v25$2) then 1621981420 else v25$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v26$1, (if FLT32(1621981420, v25$1) then 1621981420 else v25$1));
    $$RB[BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v26$2, (if FLT32(1621981420, v25$2) then 1621981420 else v25$2));
    havoc v27$1, v27$2;
    havoc v28$1, v28$2;
    havoc v29$1, v29$2;
    v30$1 := FMUL32(v27$1, FDIV32(1065353216, FMUL32(FMUL32(v28$1, v29$1), v1$1)));
    v30$2 := FMUL32(v27$2, FDIV32(1065353216, FMUL32(FMUL32(v28$2, v29$2), v1$2)));
    havoc v31$1, v31$2;
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v31$1, (if FLT32(1621981420, v30$1) then 1621981420 else v30$1)), $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v31$2, (if FLT32(1621981420, v30$2) then 1621981420 else v30$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v31$1, (if FLT32(1621981420, v30$1) then 1621981420 else v30$1));
    $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v31$2, (if FLT32(1621981420, v30$2) then 1621981420 else v30$2));
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    havoc v34$1, v34$2;
    v35$1 := FMUL32(FMUL32(FMUL32(v32$1, v33$1), v1$1), FDIV32(1065353216, v34$1));
    v35$2 := FMUL32(FMUL32(FMUL32(v32$2, v33$2), v1$2), FDIV32(1065353216, v34$2));
    havoc v36$1, v36$2;
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v36$1, (if FLT32(1621981420, v35$1) then 1621981420 else v35$1)), $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v36$2, (if FLT32(1621981420, v35$2) then 1621981420 else v35$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v36$1, (if FLT32(1621981420, v35$1) then 1621981420 else v35$1));
    $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v36$2, (if FLT32(1621981420, v35$2) then 1621981420 else v35$2));
    havoc v37$1, v37$2;
    havoc v38$1, v38$2;
    havoc v39$1, v39$2;
    havoc v40$1, v40$2;
    v41$1 := FMUL32(FMUL32(v37$1, v38$1), FDIV32(1065353216, FMUL32(v39$1, v40$1)));
    v41$2 := FMUL32(FMUL32(v37$2, v38$2), FDIV32(1065353216, FMUL32(v39$2, v40$2)));
    havoc v42$1, v42$2;
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$RB(true, BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v42$1, (if FLT32(1621981420, v41$1) then 1621981420 else v41$1)), $$RB[BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$RB(true, BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v42$2, (if FLT32(1621981420, v41$2) then 1621981420 else v41$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v42$1, (if FLT32(1621981420, v41$1) then 1621981420 else v41$1));
    $$RB[BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v42$2, (if FLT32(1621981420, v41$2) then 1621981420 else v41$2));
    havoc v43$1, v43$2;
    havoc v44$1, v44$2;
    havoc v45$1, v45$2;
    havoc v46$1, v46$2;
    v47$1 := FMUL32(FMUL32(v43$1, v44$1), FDIV32(1065353216, FMUL32(v45$1, v46$1)));
    v47$2 := FMUL32(FMUL32(v43$2, v44$2), FDIV32(1065353216, FMUL32(v45$2, v46$2)));
    havoc v48$1, v48$2;
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$RB(true, BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v48$1, (if FLT32(1621981420, v47$1) then 1621981420 else v47$1)), $$RB[BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$RB(true, BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v48$2, (if FLT32(1621981420, v47$2) then 1621981420 else v47$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v48$1, (if FLT32(1621981420, v47$1) then 1621981420 else v47$1));
    $$RB[BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v48$2, (if FLT32(1621981420, v47$2) then 1621981420 else v47$2));
    havoc v49$1, v49$2;
    havoc v50$1, v50$2;
    havoc v51$1, v51$2;
    havoc v52$1, v52$2;
    v53$1 := FMUL32(FMUL32(v49$1, v50$1), FDIV32(1065353216, FMUL32(v51$1, v52$1)));
    v53$2 := FMUL32(FMUL32(v49$2, v50$2), FDIV32(1065353216, FMUL32(v51$2, v52$2)));
    havoc v54$1, v54$2;
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$RB(true, BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v54$1, (if FLT32(1621981420, v53$1) then 1621981420 else v53$1)), $$RB[BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$RB(true, BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v54$2, (if FLT32(1621981420, v53$2) then 1621981420 else v53$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v54$1, (if FLT32(1621981420, v53$1) then 1621981420 else v53$1));
    $$RB[BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v54$2, (if FLT32(1621981420, v53$2) then 1621981420 else v53$2));
    havoc v55$1, v55$2;
    havoc v56$1, v56$2;
    havoc v57$1, v57$2;
    havoc v58$1, v58$2;
    v59$1 := FMUL32(FMUL32(v55$1, v56$1), FDIV32(1065353216, FMUL32(v57$1, v58$1)));
    v59$2 := FMUL32(FMUL32(v55$2, v56$2), FDIV32(1065353216, FMUL32(v57$2, v58$2)));
    havoc v60$1, v60$2;
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$RB(true, BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v60$1, (if FLT32(1621981420, v59$1) then 1621981420 else v59$1)), $$RB[BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$RB(true, BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v60$2, (if FLT32(1621981420, v59$2) then 1621981420 else v59$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v60$1, (if FLT32(1621981420, v59$1) then 1621981420 else v59$1));
    $$RB[BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v60$2, (if FLT32(1621981420, v59$2) then 1621981420 else v59$2));
    havoc v61$1, v61$2;
    havoc v62$1, v62$2;
    havoc v63$1, v63$2;
    havoc v64$1, v64$2;
    v65$1 := FMUL32(FMUL32(v61$1, v62$1), FDIV32(1065353216, FMUL32(v63$1, v64$1)));
    v65$2 := FMUL32(FMUL32(v61$2, v62$2), FDIV32(1065353216, FMUL32(v63$2, v64$2)));
    havoc v66$1, v66$2;
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$RB(true, BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v66$1, (if FLT32(1621981420, v65$1) then 1621981420 else v65$1)), $$RB[BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$RB(true, BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v66$2, (if FLT32(1621981420, v65$2) then 1621981420 else v65$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v66$1, (if FLT32(1621981420, v65$1) then 1621981420 else v65$1));
    $$RB[BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v66$2, (if FLT32(1621981420, v65$2) then 1621981420 else v65$2));
    havoc v67$1, v67$2;
    havoc v68$1, v68$2;
    havoc v69$1, v69$2;
    havoc v70$1, v70$2;
    v71$1 := FMUL32(FMUL32(v67$1, v68$1), FDIV32(1065353216, FMUL32(v69$1, v70$1)));
    v71$2 := FMUL32(FMUL32(v67$2, v68$2), FDIV32(1065353216, FMUL32(v69$2, v70$2)));
    havoc v72$1, v72$2;
    call {:sourceloc} {:sourceloc_num 72} _LOG_WRITE_$$RB(true, BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v72$1, (if FLT32(1621981420, v71$1) then 1621981420 else v71$1)), $$RB[BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 72} _CHECK_WRITE_$$RB(true, BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v72$2, (if FLT32(1621981420, v71$2) then 1621981420 else v71$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v72$1, (if FLT32(1621981420, v71$1) then 1621981420 else v71$1));
    $$RB[BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v72$2, (if FLT32(1621981420, v71$2) then 1621981420 else v71$2));
    havoc v73$1, v73$2;
    havoc v74$1, v74$2;
    havoc v75$1, v75$2;
    havoc v76$1, v76$2;
    v77$1 := FMUL32(FMUL32(v73$1, v74$1), FDIV32(1065353216, FMUL32(v75$1, v76$1)));
    v77$2 := FMUL32(FMUL32(v73$2, v74$2), FDIV32(1065353216, FMUL32(v75$2, v76$2)));
    havoc v78$1, v78$2;
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$RB(true, BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v78$1, (if FLT32(1621981420, v77$1) then 1621981420 else v77$1)), $$RB[BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$RB(true, BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v78$2, (if FLT32(1621981420, v77$2) then 1621981420 else v77$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v78$1, (if FLT32(1621981420, v77$1) then 1621981420 else v77$1));
    $$RB[BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v78$2, (if FLT32(1621981420, v77$2) then 1621981420 else v77$2));
    havoc v79$1, v79$2;
    havoc v80$1, v80$2;
    havoc v81$1, v81$2;
    havoc v82$1, v82$2;
    v83$1 := FMUL32(FMUL32(v79$1, v80$1), FDIV32(1065353216, FMUL32(v81$1, v82$1)));
    v83$2 := FMUL32(FMUL32(v79$2, v80$2), FDIV32(1065353216, FMUL32(v81$2, v82$2)));
    havoc v84$1, v84$2;
    call {:sourceloc} {:sourceloc_num 84} _LOG_WRITE_$$RB(true, BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v84$1, (if FLT32(1621981420, v83$1) then 1621981420 else v83$1)), $$RB[BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 84} _CHECK_WRITE_$$RB(true, BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v84$2, (if FLT32(1621981420, v83$2) then 1621981420 else v83$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v84$1, (if FLT32(1621981420, v83$1) then 1621981420 else v83$1));
    $$RB[BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v84$2, (if FLT32(1621981420, v83$2) then 1621981420 else v83$2));
    havoc v85$1, v85$2;
    havoc v86$1, v86$2;
    havoc v87$1, v87$2;
    havoc v88$1, v88$2;
    v89$1 := FMUL32(FMUL32(v85$1, v86$1), FDIV32(1065353216, FMUL32(v87$1, v88$1)));
    v89$2 := FMUL32(FMUL32(v85$2, v86$2), FDIV32(1065353216, FMUL32(v87$2, v88$2)));
    havoc v90$1, v90$2;
    call {:sourceloc} {:sourceloc_num 90} _LOG_WRITE_$$RB(true, BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v90$1, (if FLT32(1621981420, v89$1) then 1621981420 else v89$1)), $$RB[BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 90} _CHECK_WRITE_$$RB(true, BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v90$2, (if FLT32(1621981420, v89$2) then 1621981420 else v89$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v90$1, (if FLT32(1621981420, v89$1) then 1621981420 else v89$1));
    $$RB[BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v90$2, (if FLT32(1621981420, v89$2) then 1621981420 else v89$2));
    havoc v91$1, v91$2;
    havoc v92$1, v92$2;
    havoc v93$1, v93$2;
    havoc v94$1, v94$2;
    v95$1 := FMUL32(FMUL32(v91$1, v92$1), FDIV32(1065353216, FMUL32(v93$1, v94$1)));
    v95$2 := FMUL32(FMUL32(v91$2, v92$2), FDIV32(1065353216, FMUL32(v93$2, v94$2)));
    havoc v96$1, v96$2;
    call {:sourceloc} {:sourceloc_num 96} _LOG_WRITE_$$RB(true, BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v96$1, (if FLT32(1621981420, v95$1) then 1621981420 else v95$1)), $$RB[BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 96} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 96} _CHECK_WRITE_$$RB(true, BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v96$2, (if FLT32(1621981420, v95$2) then 1621981420 else v95$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v96$1, (if FLT32(1621981420, v95$1) then 1621981420 else v95$1));
    $$RB[BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v96$2, (if FLT32(1621981420, v95$2) then 1621981420 else v95$2));
    havoc v97$1, v97$2;
    havoc v98$1, v98$2;
    havoc v99$1, v99$2;
    havoc v100$1, v100$2;
    v101$1 := FMUL32(FMUL32(v97$1, v98$1), FDIV32(1065353216, FMUL32(v99$1, v100$1)));
    v101$2 := FMUL32(FMUL32(v97$2, v98$2), FDIV32(1065353216, FMUL32(v99$2, v100$2)));
    havoc v102$1, v102$2;
    call {:sourceloc} {:sourceloc_num 102} _LOG_WRITE_$$RB(true, BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v102$1, (if FLT32(1621981420, v101$1) then 1621981420 else v101$1)), $$RB[BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 102} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 102} _CHECK_WRITE_$$RB(true, BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v102$2, (if FLT32(1621981420, v101$2) then 1621981420 else v101$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v102$1, (if FLT32(1621981420, v101$1) then 1621981420 else v101$1));
    $$RB[BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v102$2, (if FLT32(1621981420, v101$2) then 1621981420 else v101$2));
    havoc v103$1, v103$2;
    havoc v104$1, v104$2;
    havoc v105$1, v105$2;
    havoc v106$1, v106$2;
    v107$1 := FMUL32(FMUL32(v103$1, v104$1), FDIV32(1065353216, FMUL32(v105$1, v106$1)));
    v107$2 := FMUL32(FMUL32(v103$2, v104$2), FDIV32(1065353216, FMUL32(v105$2, v106$2)));
    havoc v108$1, v108$2;
    call {:sourceloc} {:sourceloc_num 108} _LOG_WRITE_$$RB(true, BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v108$1, (if FLT32(1621981420, v107$1) then 1621981420 else v107$1)), $$RB[BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 108} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 108} _CHECK_WRITE_$$RB(true, BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v108$2, (if FLT32(1621981420, v107$2) then 1621981420 else v107$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v108$1, (if FLT32(1621981420, v107$1) then 1621981420 else v107$1));
    $$RB[BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v108$2, (if FLT32(1621981420, v107$2) then 1621981420 else v107$2));
    havoc v109$1, v109$2;
    havoc v110$1, v110$2;
    havoc v111$1, v111$2;
    v112$1 := FMUL32(FMUL32(FMUL32(v109$1, v110$1), v1$1), FDIV32(1065353216, v111$1));
    v112$2 := FMUL32(FMUL32(FMUL32(v109$2, v110$2), v1$2), FDIV32(1065353216, v111$2));
    havoc v113$1, v113$2;
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$RB(true, BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v113$1, (if FLT32(1621981420, v112$1) then 1621981420 else v112$1)), $$RB[BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$RB(true, BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v113$2, (if FLT32(1621981420, v112$2) then 1621981420 else v112$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v113$1, (if FLT32(1621981420, v112$1) then 1621981420 else v112$1));
    $$RB[BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v113$2, (if FLT32(1621981420, v112$2) then 1621981420 else v112$2));
    havoc v114$1, v114$2;
    havoc v115$1, v115$2;
    havoc v116$1, v116$2;
    v117$1 := FMUL32(FMUL32(FMUL32(v114$1, v115$1), v1$1), FDIV32(1065353216, v116$1));
    v117$2 := FMUL32(FMUL32(FMUL32(v114$2, v115$2), v1$2), FDIV32(1065353216, v116$2));
    havoc v118$1, v118$2;
    call {:sourceloc} {:sourceloc_num 118} _LOG_WRITE_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v118$1, (if FLT32(1621981420, v117$1) then 1621981420 else v117$1)), $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 118} _CHECK_WRITE_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v118$2, (if FLT32(1621981420, v117$2) then 1621981420 else v117$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v118$1, (if FLT32(1621981420, v117$1) then 1621981420 else v117$1));
    $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v118$2, (if FLT32(1621981420, v117$2) then 1621981420 else v117$2));
    havoc v119$1, v119$2;
    havoc v120$1, v120$2;
    havoc v121$1, v121$2;
    havoc v122$1, v122$2;
    v123$1 := FMUL32(FMUL32(v119$1, v120$1), FDIV32(1065353216, FMUL32(v121$1, v122$1)));
    v123$2 := FMUL32(FMUL32(v119$2, v120$2), FDIV32(1065353216, FMUL32(v121$2, v122$2)));
    havoc v124$1, v124$2;
    call {:sourceloc} {:sourceloc_num 124} _LOG_WRITE_$$RB(true, BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v124$1, (if FLT32(1621981420, v123$1) then 1621981420 else v123$1)), $$RB[BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 124} _CHECK_WRITE_$$RB(true, BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v124$2, (if FLT32(1621981420, v123$2) then 1621981420 else v123$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v124$1, (if FLT32(1621981420, v123$1) then 1621981420 else v123$1));
    $$RB[BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v124$2, (if FLT32(1621981420, v123$2) then 1621981420 else v123$2));
    havoc v125$1, v125$2;
    havoc v126$1, v126$2;
    havoc v127$1, v127$2;
    havoc v128$1, v128$2;
    v129$1 := FMUL32(FMUL32(v125$1, v126$1), FDIV32(1065353216, FMUL32(v127$1, v128$1)));
    v129$2 := FMUL32(FMUL32(v125$2, v126$2), FDIV32(1065353216, FMUL32(v127$2, v128$2)));
    havoc v130$1, v130$2;
    call {:sourceloc} {:sourceloc_num 130} _LOG_WRITE_$$RB(true, BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v130$1, (if FLT32(1621981420, v129$1) then 1621981420 else v129$1)), $$RB[BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 130} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 130} _CHECK_WRITE_$$RB(true, BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v130$2, (if FLT32(1621981420, v129$2) then 1621981420 else v129$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v130$1, (if FLT32(1621981420, v129$1) then 1621981420 else v129$1));
    $$RB[BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v130$2, (if FLT32(1621981420, v129$2) then 1621981420 else v129$2));
    havoc v131$1, v131$2;
    havoc v132$1, v132$2;
    havoc v133$1, v133$2;
    havoc v134$1, v134$2;
    v135$1 := FMUL32(FMUL32(v131$1, v132$1), FDIV32(1065353216, FMUL32(v133$1, v134$1)));
    v135$2 := FMUL32(FMUL32(v131$2, v132$2), FDIV32(1065353216, FMUL32(v133$2, v134$2)));
    havoc v136$1, v136$2;
    call {:sourceloc} {:sourceloc_num 136} _LOG_WRITE_$$RB(true, BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v136$1, (if FLT32(1621981420, v135$1) then 1621981420 else v135$1)), $$RB[BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 136} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 136} _CHECK_WRITE_$$RB(true, BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v136$2, (if FLT32(1621981420, v135$2) then 1621981420 else v135$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v136$1, (if FLT32(1621981420, v135$1) then 1621981420 else v135$1));
    $$RB[BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v136$2, (if FLT32(1621981420, v135$2) then 1621981420 else v135$2));
    havoc v137$1, v137$2;
    havoc v138$1, v138$2;
    havoc v139$1, v139$2;
    havoc v140$1, v140$2;
    v141$1 := FMUL32(FMUL32(v137$1, v138$1), FDIV32(1065353216, FMUL32(v139$1, v140$1)));
    v141$2 := FMUL32(FMUL32(v137$2, v138$2), FDIV32(1065353216, FMUL32(v139$2, v140$2)));
    havoc v142$1, v142$2;
    call {:sourceloc} {:sourceloc_num 142} _LOG_WRITE_$$RB(true, BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v142$1, (if FLT32(1621981420, v141$1) then 1621981420 else v141$1)), $$RB[BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 142} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 142} _CHECK_WRITE_$$RB(true, BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v142$2, (if FLT32(1621981420, v141$2) then 1621981420 else v141$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v142$1, (if FLT32(1621981420, v141$1) then 1621981420 else v141$1));
    $$RB[BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v142$2, (if FLT32(1621981420, v141$2) then 1621981420 else v141$2));
    havoc v143$1, v143$2;
    havoc v144$1, v144$2;
    havoc v145$1, v145$2;
    havoc v146$1, v146$2;
    v147$1 := FMUL32(FMUL32(v143$1, v144$1), FDIV32(1065353216, FMUL32(v145$1, v146$1)));
    v147$2 := FMUL32(FMUL32(v143$2, v144$2), FDIV32(1065353216, FMUL32(v145$2, v146$2)));
    havoc v148$1, v148$2;
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$RB(true, BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v148$1, (if FLT32(1621981420, v147$1) then 1621981420 else v147$1)), $$RB[BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$RB(true, BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v148$2, (if FLT32(1621981420, v147$2) then 1621981420 else v147$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v148$1, (if FLT32(1621981420, v147$1) then 1621981420 else v147$1));
    $$RB[BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v148$2, (if FLT32(1621981420, v147$2) then 1621981420 else v147$2));
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 108 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$T: int;

procedure {:inline 1} _LOG_READ_$$T(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$T;



implementation {:inline 1} _LOG_READ_$$T(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T == _value then true else _READ_HAS_OCCURRED_$$T);
    return;
}



procedure _CHECK_READ_$$T(_P: bool, _offset: int, _value: int);
  requires {:source_name "T"} {:array "$$T"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$T);
  requires {:source_name "T"} {:array "$$T"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$T: bool;

procedure {:inline 1} _LOG_WRITE_$$T(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$T, _WRITE_READ_BENIGN_FLAG_$$T;



implementation {:inline 1} _LOG_WRITE_$$T(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T == _value then true else _WRITE_HAS_OCCURRED_$$T);
    _WRITE_READ_BENIGN_FLAG_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$T);
    return;
}



procedure _CHECK_WRITE_$$T(_P: bool, _offset: int, _value: int);
  requires {:source_name "T"} {:array "$$T"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T != _value);
  requires {:source_name "T"} {:array "$$T"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T != _value);
  requires {:source_name "T"} {:array "$$T"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$T(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$T;



implementation {:inline 1} _LOG_ATOMIC_$$T(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$T);
    return;
}



procedure _CHECK_ATOMIC_$$T(_P: bool, _offset: int);
  requires {:source_name "T"} {:array "$$T"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);
  requires {:source_name "T"} {:array "$$T"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$T(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$T;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$T(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$T := (if _P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$T);
    return;
}



const _WATCHED_VALUE_$$RF: int;

procedure {:inline 1} _LOG_READ_$$RF(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RF;



implementation {:inline 1} _LOG_READ_$$RF(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF == _value then true else _READ_HAS_OCCURRED_$$RF);
    return;
}



procedure _CHECK_READ_$$RF(_P: bool, _offset: int, _value: int);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RF);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RF: bool;

procedure {:inline 1} _LOG_WRITE_$$RF(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RF, _WRITE_READ_BENIGN_FLAG_$$RF;



implementation {:inline 1} _LOG_WRITE_$$RF(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF == _value then true else _WRITE_HAS_OCCURRED_$$RF);
    _WRITE_READ_BENIGN_FLAG_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RF);
    return;
}



procedure _CHECK_WRITE_$$RF(_P: bool, _offset: int, _value: int);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF != _value);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF != _value);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RF(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RF;



implementation {:inline 1} _LOG_ATOMIC_$$RF(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RF);
    return;
}



procedure _CHECK_ATOMIC_$$RF(_P: bool, _offset: int);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RF;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RF := (if _P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RF);
    return;
}



const _WATCHED_VALUE_$$RB: int;

procedure {:inline 1} _LOG_READ_$$RB(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RB;



implementation {:inline 1} _LOG_READ_$$RB(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB == _value then true else _READ_HAS_OCCURRED_$$RB);
    return;
}



procedure _CHECK_READ_$$RB(_P: bool, _offset: int, _value: int);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RB);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RB: bool;

procedure {:inline 1} _LOG_WRITE_$$RB(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RB, _WRITE_READ_BENIGN_FLAG_$$RB;



implementation {:inline 1} _LOG_WRITE_$$RB(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB == _value then true else _WRITE_HAS_OCCURRED_$$RB);
    _WRITE_READ_BENIGN_FLAG_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RB);
    return;
}



procedure _CHECK_WRITE_$$RB(_P: bool, _offset: int, _value: int);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB != _value);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB != _value);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RB(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RB;



implementation {:inline 1} _LOG_ATOMIC_$$RB(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RB);
    return;
}



procedure _CHECK_ATOMIC_$$RB(_P: bool, _offset: int);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RB := (if _P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RB);
    return;
}



const _WATCHED_VALUE_$$EG: int;

procedure {:inline 1} _LOG_READ_$$EG(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$EG;



implementation {:inline 1} _LOG_READ_$$EG(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$EG := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$EG == _value then true else _READ_HAS_OCCURRED_$$EG);
    return;
}



procedure _CHECK_READ_$$EG(_P: bool, _offset: int, _value: int);
  requires {:source_name "EG"} {:array "$$EG"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$EG);
  requires {:source_name "EG"} {:array "$$EG"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$EG: bool;

procedure {:inline 1} _LOG_WRITE_$$EG(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$EG, _WRITE_READ_BENIGN_FLAG_$$EG;



implementation {:inline 1} _LOG_WRITE_$$EG(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$EG := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$EG == _value then true else _WRITE_HAS_OCCURRED_$$EG);
    _WRITE_READ_BENIGN_FLAG_$$EG := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$EG == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$EG);
    return;
}



procedure _CHECK_WRITE_$$EG(_P: bool, _offset: int, _value: int);
  requires {:source_name "EG"} {:array "$$EG"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$EG != _value);
  requires {:source_name "EG"} {:array "$$EG"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$EG != _value);
  requires {:source_name "EG"} {:array "$$EG"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$EG(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$EG;



implementation {:inline 1} _LOG_ATOMIC_$$EG(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$EG := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$EG);
    return;
}



procedure _CHECK_ATOMIC_$$EG(_P: bool, _offset: int);
  requires {:source_name "EG"} {:array "$$EG"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset);
  requires {:source_name "EG"} {:array "$$EG"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$EG;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$EG := (if _P && _WRITE_HAS_OCCURRED_$$EG && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$EG);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
