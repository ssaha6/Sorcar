type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$seedArray"} {:global} {:elem_width 32} {:source_name "seedArray"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$seedArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$seedArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$seedArray: bool;

var {:source_name "gaussianRand"} {:global} $$gaussianRand: [int]int;

axiom {:array_info "$$gaussianRand"} {:global} {:elem_width 32} {:source_name "gaussianRand"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gaussianRand: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gaussianRand: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gaussianRand: bool;

var {:source_name "temp"} $$temp$1: [int]int;

var {:source_name "temp"} $$temp$2: [int]int;

axiom {:array_info "$$temp"} {:elem_width 32} {:source_name "temp"} {:source_elem_width 128} {:source_dimensions "8"} true;

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

function BV32_LSHR(int, int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FCOS32(int) : int;

function FDIV32(int, int) : int;

function FLOG32(int) : int;

function FMUL32(int, int) : int;

function FSIN32(int) : int;

function FSQRT32(int) : int;

function UI32_TO_FP32(int) : int;

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

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

procedure {:source_name "gaussianRand"} {:kernel} $gaussianRand($width: int, $mulFactor: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $mulFactor == 1024 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$seedArray && !_WRITE_HAS_OCCURRED_$$seedArray && !_ATOMIC_HAS_OCCURRED_$$seedArray;
  requires !_READ_HAS_OCCURRED_$$gaussianRand && !_WRITE_HAS_OCCURRED_$$gaussianRand && !_ATOMIC_HAS_OCCURRED_$$gaussianRand;
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
  modifies _WRITE_HAS_OCCURRED_$$gaussianRand, _WRITE_READ_BENIGN_FLAG_$$gaussianRand, _WRITE_READ_BENIGN_FLAG_$$gaussianRand;



implementation {:source_name "gaussianRand"} {:kernel} $gaussianRand($width: int, $mulFactor: int)
{
  var $r1.0$1: int;
  var $r1.0$2: int;
  var $r2.0$1: int;
  var $r2.0$2: int;
  var $a.0$1: int;
  var $a.0$2: int;
  var $b.0$1: int;
  var $b.0$2: int;
  var $i.0: int;
  var $r1.1$1: int;
  var $r1.1$2: int;
  var $r2.1$1: int;
  var $r2.1$2: int;
  var $a.1$1: int;
  var $a.1$2: int;
  var $b.1$1: int;
  var $b.1$2: int;
  var $i.1: int;
  var v102$1: int;
  var v102$2: int;
  var v103$1: int;
  var v103$2: int;
  var v104$1: int;
  var v104$2: int;
  var v105$1: int;
  var v105$2: int;
  var v107$1: int;
  var v107$2: int;
  var v106$1: int;
  var v106$2: int;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
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
  var v8$1: int;
  var v8$2: int;
  var v7$1: int;
  var v7$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v22$1: int;
  var v22$2: int;
  var v13$1: int;
  var v13$2: int;
  var v12$1: int;
  var v12$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v18$1: int;
  var v18$2: int;
  var v17$1: int;
  var v17$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v23: bool;
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
  var v93: bool;
  var v94$1: int;
  var v94$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: int;
  var v97$2: int;
  var v101$1: int;
  var v101$2: int;
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    v6$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v5$1, v4$1), v3$1), v2$1);
    v6$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v5$2, v4$2), v3$2), v2$2);
    v7$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v2$1, BV32_LSHR(v2$1, 30))), 1);
    v7$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v2$2, BV32_LSHR(v2$2, 30))), 1);
    v8$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v3$1, BV32_LSHR(v3$1, 30))), 1);
    v8$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v3$2, BV32_LSHR(v3$2, 30))), 1);
    v9$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v4$1, BV32_LSHR(v4$1, 30))), 1);
    v9$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v4$2, BV32_LSHR(v4$2, 30))), 1);
    v10$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v5$1, BV32_LSHR(v5$1, 30))), 1);
    v10$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v5$2, BV32_LSHR(v5$2, 30))), 1);
    v11$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v10$1, v9$1), v8$1), v7$1);
    v11$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v10$2, v9$2), v8$2), v7$2);
    v12$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v7$1, BV32_LSHR(v7$1, 30))), 2);
    v12$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v7$2, BV32_LSHR(v7$2, 30))), 2);
    v13$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v8$1, BV32_LSHR(v8$1, 30))), 2);
    v13$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v8$2, BV32_LSHR(v8$2, 30))), 2);
    v14$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v9$1, BV32_LSHR(v9$1, 30))), 2);
    v14$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v9$2, BV32_LSHR(v9$2, 30))), 2);
    v15$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v10$1, BV32_LSHR(v10$1, 30))), 2);
    v15$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v10$2, BV32_LSHR(v10$2, 30))), 2);
    v16$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v15$1, v14$1), v13$1), v12$1);
    v16$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v15$2, v14$2), v13$2), v12$2);
    v17$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v12$1, BV32_LSHR(v12$1, 30))), 3);
    v17$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v12$2, BV32_LSHR(v12$2, 30))), 3);
    v18$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v13$1, BV32_LSHR(v13$1, 30))), 3);
    v18$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v13$2, BV32_LSHR(v13$2, 30))), 3);
    v19$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v14$1, BV32_LSHR(v14$1, 30))), 3);
    v19$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v14$2, BV32_LSHR(v14$2, 30))), 3);
    v20$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v15$1, BV32_LSHR(v15$1, 30))), 3);
    v20$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v15$2, BV32_LSHR(v15$2, 30))), 3);
    v21$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v20$1, v19$1), v18$1), v17$1);
    v21$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v20$2, v19$2), v18$2), v17$2);
    v22$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v20$1, BV32_LSHR(v20$1, 30))), 4), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v19$1, BV32_LSHR(v19$1, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v18$1, BV32_LSHR(v18$1, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v17$1, BV32_LSHR(v17$1, 30))), 4));
    v22$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v20$2, BV32_LSHR(v20$2, 30))), 4), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v19$2, BV32_LSHR(v19$2, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v18$2, BV32_LSHR(v18$2, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v17$2, BV32_LSHR(v17$2, 30))), 4));
    $r1.0$1, $r2.0$1, $a.0$1, $b.0$1, $i.0 := 0, 0, 0, 0, 0;
    $r1.0$2, $r2.0$2, $a.0$2, $b.0$2 := 0, 0, 0, 0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 7} true;
    v23 := BV32_ULT($i.0, $mulFactor);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v23;
    v92$1 := BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), $mulFactor);
    v92$2 := BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), $mulFactor);
    $i.1 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b5 ==> _WRITE_HAS_OCCURRED_$$gaussianRand ==> _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_MUL(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 4) mod BV32_MUL(BV32_MUL(1, 2), 4) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 4), 1) mod BV32_MUL(BV32_MUL(1, 2), 4) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 4), 2) mod BV32_MUL(BV32_MUL(1, 2), 4) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 4), 3) mod BV32_MUL(BV32_MUL(1, 2), 4) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 1), 4) mod BV32_MUL(BV32_MUL(1, 2), 4) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 1), 4), 1) mod BV32_MUL(BV32_MUL(1, 2), 4) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 1), 4), 2) mod BV32_MUL(BV32_MUL(1, 2), 4) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 2), 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(0, 2), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $width), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $mulFactor)), 1), 4), 3) mod BV32_MUL(BV32_MUL(1, 2), 4);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($i.1, 0);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($i.1, 0);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($i.1, 0);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($i.1, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $i.1 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 105} true;
    assert {:originated_from_invariant} {:sourceloc_num 106} {:thread 1} (if _WRITE_HAS_OCCURRED_$$gaussianRand ==> BV32_UGE(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), v92$1) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 107} {:thread 1} (if _WRITE_HAS_OCCURRED_$$gaussianRand ==> BV32_ULT(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), BV32_ADD(v92$1, $mulFactor)) then 1 else 0) != 0;
    v93 := BV32_ULT($i.1, BV32_UDIV($mulFactor, 2));
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v93;
    return;

  $truebb0:
    assume {:partition} v93;
    v94$1 := $$temp$1[BV32_MUL($i.1, 4)];
    v94$2 := $$temp$2[BV32_MUL($i.1, 4)];
    v95$1 := $$temp$1[BV32_ADD(BV32_MUL($i.1, 4), 1)];
    v95$2 := $$temp$2[BV32_ADD(BV32_MUL($i.1, 4), 1)];
    v96$1 := $$temp$1[BV32_ADD(BV32_MUL($i.1, 4), 2)];
    v96$2 := $$temp$2[BV32_ADD(BV32_MUL($i.1, 4), 2)];
    v97$1 := $$temp$1[BV32_ADD(BV32_MUL($i.1, 4), 3)];
    v97$2 := $$temp$2[BV32_ADD(BV32_MUL($i.1, 4), 3)];
    v98$1 := $$temp$1[BV32_MUL(BV32_ADD($i.1, 1), 4)];
    v98$2 := $$temp$2[BV32_MUL(BV32_ADD($i.1, 1), 4)];
    v99$1 := $$temp$1[BV32_ADD(BV32_MUL(BV32_ADD($i.1, 1), 4), 1)];
    v99$2 := $$temp$2[BV32_ADD(BV32_MUL(BV32_ADD($i.1, 1), 4), 1)];
    v100$1 := $$temp$1[BV32_ADD(BV32_MUL(BV32_ADD($i.1, 1), 4), 2)];
    v100$2 := $$temp$2[BV32_ADD(BV32_MUL(BV32_ADD($i.1, 1), 4), 2)];
    v101$1 := $$temp$1[BV32_ADD(BV32_MUL(BV32_ADD($i.1, 1), 4), 3)];
    v101$2 := $$temp$2[BV32_ADD(BV32_MUL(BV32_ADD($i.1, 1), 4), 3)];
    v102$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v94$1), 1065353216), 1333788672)), 1060205080)));
    v102$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v94$2), 1065353216), 1333788672)), 1060205080)));
    v103$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v95$1), 1065353216), 1333788672)), 1060205080)));
    v103$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v95$2), 1065353216), 1333788672)), 1060205080)));
    v104$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v96$1), 1065353216), 1333788672)), 1060205080)));
    v104$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v96$2), 1065353216), 1333788672)), 1060205080)));
    v105$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v97$1), 1065353216), 1333788672)), 1060205080)));
    v105$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(FMUL32(UI32_TO_FP32(v97$2), 1065353216), 1333788672)), 1060205080)));
    v106$1 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v98$1), 1065353216), 1333788672));
    v106$2 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v98$2), 1065353216), 1333788672));
    v107$1 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v99$1), 1065353216), 1333788672));
    v107$2 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v99$2), 1065353216), 1333788672));
    v108$1 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v100$1), 1065353216), 1333788672));
    v108$2 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v100$2), 1065353216), 1333788672));
    v109$1 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v101$1), 1065353216), 1333788672));
    v109$2 := FMUL32(1086918619, FDIV32(FMUL32(UI32_TO_FP32(v101$2), 1065353216), 1333788672));
    call {:sourceloc} {:sourceloc_num 117} _LOG_WRITE_$$gaussianRand(true, BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), FMUL32(v102$1, FCOS32(v106$1)), $$gaussianRand[BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 117} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 117} _CHECK_WRITE_$$gaussianRand(true, BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), FMUL32(v102$2, FCOS32(v106$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4)] := FMUL32(v102$1, FCOS32(v106$1));
    $$gaussianRand[BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4)] := FMUL32(v102$2, FCOS32(v106$2));
    call {:sourceloc} {:sourceloc_num 118} _LOG_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 1), FMUL32(v103$1, FCOS32(v107$1)), $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 118} _CHECK_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 1), FMUL32(v103$2, FCOS32(v107$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 1)] := FMUL32(v103$1, FCOS32(v107$1));
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 1)] := FMUL32(v103$2, FCOS32(v107$2));
    call {:sourceloc} {:sourceloc_num 119} _LOG_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 2), FMUL32(v104$1, FCOS32(v108$1)), $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 119} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 119} _CHECK_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 2), FMUL32(v104$2, FCOS32(v108$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 2)] := FMUL32(v104$1, FCOS32(v108$1));
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 2)] := FMUL32(v104$2, FCOS32(v108$2));
    call {:sourceloc} {:sourceloc_num 120} _LOG_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 3), FMUL32(v105$1, FCOS32(v109$1)), $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 120} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 120} _CHECK_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 3), FMUL32(v105$2, FCOS32(v109$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 4), 3)] := FMUL32(v105$1, FCOS32(v109$1));
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 4), 3)] := FMUL32(v105$2, FCOS32(v109$2));
    call {:sourceloc} {:sourceloc_num 121} _LOG_WRITE_$$gaussianRand(true, BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), FMUL32(v102$1, FSIN32(v106$1)), $$gaussianRand[BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 121} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 121} _CHECK_WRITE_$$gaussianRand(true, BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), FMUL32(v102$2, FSIN32(v106$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4)] := FMUL32(v102$1, FSIN32(v106$1));
    $$gaussianRand[BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4)] := FMUL32(v102$2, FSIN32(v106$2));
    call {:sourceloc} {:sourceloc_num 122} _LOG_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 1), FMUL32(v103$1, FSIN32(v107$1)), $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 122} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 122} _CHECK_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 1), FMUL32(v103$2, FSIN32(v107$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 1)] := FMUL32(v103$1, FSIN32(v107$1));
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 1)] := FMUL32(v103$2, FSIN32(v107$2));
    call {:sourceloc} {:sourceloc_num 123} _LOG_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 2), FMUL32(v104$1, FSIN32(v108$1)), $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 123} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 123} _CHECK_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 2), FMUL32(v104$2, FSIN32(v108$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 2)] := FMUL32(v104$1, FSIN32(v108$1));
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 2)] := FMUL32(v104$2, FSIN32(v108$2));
    call {:sourceloc} {:sourceloc_num 124} _LOG_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 3), FMUL32(v105$1, FSIN32(v109$1)), $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 124} _CHECK_WRITE_$$gaussianRand(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 3), FMUL32(v105$2, FSIN32(v109$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gaussianRand"} true;
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$1, BV32_MUL($i.1, 2)), 1), 4), 3)] := FMUL32(v105$1, FSIN32(v109$1));
    $$gaussianRand[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v92$2, BV32_MUL($i.1, 2)), 1), 4), 3)] := FMUL32(v105$2, FSIN32(v109$2));
    $i.1 := BV32_ADD($i.1, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $15;

  $truebb:
    assume {:partition} v23;
    goto $casebb, $casebb0, $casebb1, $casebb2, $casebb3, $casebb4, $casebb5, $casebb6, $defaultbb;

  $defaultbb:
    assume {:partition} $i.0 != 0 && $i.0 != 1 && $i.0 != 2 && $i.0 != 3 && $i.0 != 4 && $i.0 != 5 && $i.0 != 6 && $i.0 != 7;
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r1.0$1, $r2.0$1, $a.0$1, $b.0$1;
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r1.0$2, $r2.0$2, $a.0$2, $b.0$2;
    goto $12;

  $12:
    v76$1 := $$temp$1[BV32_MUL($i.0, 4)];
    v76$2 := $$temp$2[BV32_MUL($i.0, 4)];
    v77$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v77$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v78$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v78$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v79$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    v79$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    $$temp$1[BV32_MUL($i.0, 4)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$1, 32, 0), BV32_SHL(BV_EXTRACT($a.1$1, 32, 0), 24)), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$1, 32, 0), 13), -33605633)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.1$1, 32, 0), 24), BV32_SHL(BV_EXTRACT($r1.1$1, 64, 32), 8))), BV32_SHL(BV_EXTRACT($r2.1$1, 32, 0), 15));
    $$temp$2[BV32_MUL($i.0, 4)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$2, 32, 0), BV32_SHL(BV_EXTRACT($a.1$2, 32, 0), 24)), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$2, 32, 0), 13), -33605633)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.1$2, 32, 0), 24), BV32_SHL(BV_EXTRACT($r1.1$2, 64, 32), 8))), BV32_SHL(BV_EXTRACT($r2.1$2, 32, 0), 15));
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)] := v77$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)] := v77$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)] := v78$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)] := v78$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)] := v79$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)] := v79$2;
    v80$1 := $$temp$1[BV32_MUL($i.0, 4)];
    v80$2 := $$temp$2[BV32_MUL($i.0, 4)];
    v81$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v81$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v82$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v82$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v83$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    v83$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    $$temp$1[BV32_MUL($i.0, 4)] := v80$1;
    $$temp$2[BV32_MUL($i.0, 4)] := v80$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$1, 64, 32), BV32_OR(BV32_SHL(BV_EXTRACT($a.1$1, 64, 32), 24), BV32_LSHR(BV_EXTRACT($a.1$1, 32, 0), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$1, 64, 32), 13), -276873347)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.1$1, 64, 32), 24), BV32_SHL(BV_EXTRACT($r1.1$1, 96, 64), 8))), BV32_SHL(BV_EXTRACT($r2.1$1, 64, 32), 15));
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$2, 64, 32), BV32_OR(BV32_SHL(BV_EXTRACT($a.1$2, 64, 32), 24), BV32_LSHR(BV_EXTRACT($a.1$2, 32, 0), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$2, 64, 32), 13), -276873347)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.1$2, 64, 32), 24), BV32_SHL(BV_EXTRACT($r1.1$2, 96, 64), 8))), BV32_SHL(BV_EXTRACT($r2.1$2, 64, 32), 15));
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)] := v82$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)] := v82$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)] := v83$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)] := v83$2;
    v84$1 := $$temp$1[BV32_MUL($i.0, 4)];
    v84$2 := $$temp$2[BV32_MUL($i.0, 4)];
    v85$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v85$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v86$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v86$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v87$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    v87$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    $$temp$1[BV32_MUL($i.0, 4)] := v84$1;
    $$temp$2[BV32_MUL($i.0, 4)] := v84$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)] := v85$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)] := v85$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$1, 96, 64), BV32_OR(BV32_SHL(BV_EXTRACT($a.1$1, 96, 64), 24), BV32_LSHR(BV_EXTRACT($a.1$1, 64, 32), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$1, 96, 64), 13), -8946819)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.1$1, 96, 64), 24), BV32_SHL(BV_EXTRACT($r1.1$1, 128, 96), 8))), BV32_SHL(BV_EXTRACT($r2.1$1, 96, 64), 15));
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$2, 96, 64), BV32_OR(BV32_SHL(BV_EXTRACT($a.1$2, 96, 64), 24), BV32_LSHR(BV_EXTRACT($a.1$2, 64, 32), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$2, 96, 64), 13), -8946819)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.1$2, 96, 64), 24), BV32_SHL(BV_EXTRACT($r1.1$2, 128, 96), 8))), BV32_SHL(BV_EXTRACT($r2.1$2, 96, 64), 15));
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)] := v87$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)] := v87$2;
    v88$1 := $$temp$1[BV32_MUL($i.0, 4)];
    v88$2 := $$temp$2[BV32_MUL($i.0, 4)];
    v89$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v89$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)];
    v90$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v90$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)];
    v91$1 := $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    v91$2 := $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)];
    $$temp$1[BV32_MUL($i.0, 4)] := v88$1;
    $$temp$2[BV32_MUL($i.0, 4)] := v88$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 1)] := v89$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 1)] := v89$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 2)] := v90$1;
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 2)] := v90$2;
    $$temp$1[BV32_ADD(BV32_MUL($i.0, 4), 3)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$1, 128, 96), BV32_OR(BV32_SHL(BV_EXTRACT($a.1$1, 128, 96), 24), BV32_LSHR(BV_EXTRACT($a.1$1, 96, 64), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$1, 128, 96), 13), 2146958127)), BV32_LSHR(BV_EXTRACT($r1.1$1, 128, 96), 24)), BV32_SHL(BV_EXTRACT($r2.1$1, 128, 96), 15));
    $$temp$2[BV32_ADD(BV32_MUL($i.0, 4), 3)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.1$2, 128, 96), BV32_OR(BV32_SHL(BV_EXTRACT($a.1$2, 128, 96), 24), BV32_LSHR(BV_EXTRACT($a.1$2, 96, 64), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.1$2, 128, 96), 13), 2146958127)), BV32_LSHR(BV_EXTRACT($r1.1$2, 128, 96), 24)), BV32_SHL(BV_EXTRACT($r2.1$2, 128, 96), 15));
    $r1.0$1, $r2.0$1, $a.0$1, $b.0$1, $i.0 := $r1.1$1, $r2.1$1, $a.1$1, $b.1$1, BV32_ADD($i.0, 1);
    $r1.0$2, $r2.0$2, $a.0$2, $b.0$2 := $r1.1$2, $r2.1$2, $a.1$2, $b.1$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;

  $casebb6:
    assume {:partition} $i.0 == 7;
    v64$1 := $$temp$1[24];
    v64$2 := $$temp$2[24];
    v65$1 := $$temp$1[25];
    v65$2 := $$temp$2[25];
    v66$1 := $$temp$1[26];
    v66$2 := $$temp$2[26];
    v67$1 := $$temp$1[27];
    v67$2 := $$temp$2[27];
    v68$1 := $$temp$1[8];
    v68$2 := $$temp$2[8];
    v69$1 := $$temp$1[9];
    v69$2 := $$temp$2[9];
    v70$1 := $$temp$1[10];
    v70$2 := $$temp$2[10];
    v71$1 := $$temp$1[11];
    v71$2 := $$temp$2[11];
    v72$1 := $$temp$1[16];
    v72$2 := $$temp$2[16];
    v73$1 := $$temp$1[17];
    v73$2 := $$temp$2[17];
    v74$1 := $$temp$1[18];
    v74$2 := $$temp$2[18];
    v75$1 := $$temp$1[19];
    v75$2 := $$temp$2[19];
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r2.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v67$1, v66$1), v65$1), v64$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v71$1, v70$1), v69$1), v68$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v75$1, v74$1), v73$1), v72$1);
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r2.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v67$2, v66$2), v65$2), v64$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v71$2, v70$2), v69$2), v68$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v75$2, v74$2), v73$2), v72$2);
    goto $12;

  $casebb5:
    assume {:partition} $i.0 == 6;
    v52$1 := $$temp$1[20];
    v52$2 := $$temp$2[20];
    v53$1 := $$temp$1[21];
    v53$2 := $$temp$2[21];
    v54$1 := $$temp$1[22];
    v54$2 := $$temp$2[22];
    v55$1 := $$temp$1[23];
    v55$2 := $$temp$2[23];
    v56$1 := $$temp$1[4];
    v56$2 := $$temp$2[4];
    v57$1 := $$temp$1[5];
    v57$2 := $$temp$2[5];
    v58$1 := $$temp$1[6];
    v58$2 := $$temp$2[6];
    v59$1 := $$temp$1[7];
    v59$2 := $$temp$2[7];
    v60$1 := $$temp$1[12];
    v60$2 := $$temp$2[12];
    v61$1 := $$temp$1[13];
    v61$2 := $$temp$2[13];
    v62$1 := $$temp$1[14];
    v62$2 := $$temp$2[14];
    v63$1 := $$temp$1[15];
    v63$2 := $$temp$2[15];
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r2.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v55$1, v54$1), v53$1), v52$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v59$1, v58$1), v57$1), v56$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v63$1, v62$1), v61$1), v60$1);
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r2.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v55$2, v54$2), v53$2), v52$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v59$2, v58$2), v57$2), v56$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v63$2, v62$2), v61$2), v60$2);
    goto $12;

  $casebb4:
    assume {:partition} $i.0 == 5;
    v40$1 := $$temp$1[16];
    v40$2 := $$temp$2[16];
    v41$1 := $$temp$1[17];
    v41$2 := $$temp$2[17];
    v42$1 := $$temp$1[18];
    v42$2 := $$temp$2[18];
    v43$1 := $$temp$1[19];
    v43$2 := $$temp$2[19];
    v44$1 := $$temp$1[0];
    v44$2 := $$temp$2[0];
    v45$1 := $$temp$1[1];
    v45$2 := $$temp$2[1];
    v46$1 := $$temp$1[2];
    v46$2 := $$temp$2[2];
    v47$1 := $$temp$1[3];
    v47$2 := $$temp$2[3];
    v48$1 := $$temp$1[8];
    v48$2 := $$temp$2[8];
    v49$1 := $$temp$1[9];
    v49$2 := $$temp$2[9];
    v50$1 := $$temp$1[10];
    v50$2 := $$temp$2[10];
    v51$1 := $$temp$1[11];
    v51$2 := $$temp$2[11];
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r2.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v43$1, v42$1), v41$1), v40$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v47$1, v46$1), v45$1), v44$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v51$1, v50$1), v49$1), v48$1);
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r2.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v43$2, v42$2), v41$2), v40$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v47$2, v46$2), v45$2), v44$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v51$2, v50$2), v49$2), v48$2);
    goto $12;

  $casebb3:
    assume {:partition} $i.0 == 4;
    v36$1 := $$temp$1[12];
    v36$2 := $$temp$2[12];
    v37$1 := $$temp$1[13];
    v37$2 := $$temp$2[13];
    v38$1 := $$temp$1[14];
    v38$2 := $$temp$2[14];
    v39$1 := $$temp$1[15];
    v39$2 := $$temp$2[15];
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r2.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v39$1, v38$1), v37$1), v36$1), v22$1, v11$1;
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r2.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v39$2, v38$2), v37$2), v36$2), v22$2, v11$2;
    goto $12;

  $casebb2:
    assume {:partition} $i.0 == 3;
    v32$1 := $$temp$1[8];
    v32$2 := $$temp$2[8];
    v33$1 := $$temp$1[9];
    v33$2 := $$temp$2[9];
    v34$1 := $$temp$1[10];
    v34$2 := $$temp$2[10];
    v35$1 := $$temp$1[11];
    v35$2 := $$temp$2[11];
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r2.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v35$1, v34$1), v33$1), v32$1), v21$1, v6$1;
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r2.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v35$2, v34$2), v33$2), v32$2), v21$2, v6$2;
    goto $12;

  $casebb1:
    assume {:partition} $i.0 == 2;
    v28$1 := $$temp$1[4];
    v28$2 := $$temp$2[4];
    v29$1 := $$temp$1[5];
    v29$2 := $$temp$2[5];
    v30$1 := $$temp$1[6];
    v30$2 := $$temp$2[6];
    v31$1 := $$temp$1[7];
    v31$2 := $$temp$2[7];
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r2.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v31$1, v30$1), v29$1), v28$1), v16$1, v22$1;
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r2.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v31$2, v30$2), v29$2), v28$2), v16$2, v22$2;
    goto $12;

  $casebb0:
    assume {:partition} $i.0 == 1;
    v24$1 := $$temp$1[0];
    v24$2 := $$temp$2[0];
    v25$1 := $$temp$1[1];
    v25$2 := $$temp$2[1];
    v26$1 := $$temp$1[2];
    v26$2 := $$temp$2[2];
    v27$1 := $$temp$1[3];
    v27$2 := $$temp$2[3];
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := $r2.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$1, v26$1), v25$1), v24$1), v11$1, v21$1;
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := $r2.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$2, v26$2), v25$2), v24$2), v11$2, v21$2;
    goto $12;

  $casebb:
    assume {:partition} $i.0 == 0;
    $r1.1$1, $r2.1$1, $a.1$1, $b.1$1 := v21$1, v22$1, v6$1, v16$1;
    $r1.1$2, $r2.1$2, $a.1$2, $b.1$2 := v21$2, v22$2, v6$2, v16$2;
    goto $12;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if group_size_y == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

axiom (if num_groups_y == 8 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

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

const {:existential true} _b4: bool;

const _WATCHED_VALUE_$$seedArray: int;

procedure {:inline 1} _LOG_READ_$$seedArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$seedArray;



implementation {:inline 1} _LOG_READ_$$seedArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$seedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$seedArray == _value then true else _READ_HAS_OCCURRED_$$seedArray);
    return;
}



procedure _CHECK_READ_$$seedArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "seedArray"} {:array "$$seedArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$seedArray);
  requires {:source_name "seedArray"} {:array "$$seedArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$seedArray: bool;

procedure {:inline 1} _LOG_WRITE_$$seedArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$seedArray, _WRITE_READ_BENIGN_FLAG_$$seedArray;



implementation {:inline 1} _LOG_WRITE_$$seedArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$seedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$seedArray == _value then true else _WRITE_HAS_OCCURRED_$$seedArray);
    _WRITE_READ_BENIGN_FLAG_$$seedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$seedArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$seedArray);
    return;
}



procedure _CHECK_WRITE_$$seedArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "seedArray"} {:array "$$seedArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$seedArray != _value);
  requires {:source_name "seedArray"} {:array "$$seedArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$seedArray != _value);
  requires {:source_name "seedArray"} {:array "$$seedArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$seedArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$seedArray;



implementation {:inline 1} _LOG_ATOMIC_$$seedArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$seedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$seedArray);
    return;
}



procedure _CHECK_ATOMIC_$$seedArray(_P: bool, _offset: int);
  requires {:source_name "seedArray"} {:array "$$seedArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "seedArray"} {:array "$$seedArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$seedArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$seedArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$seedArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$seedArray := (if _P && _WRITE_HAS_OCCURRED_$$seedArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$seedArray);
    return;
}



const _WATCHED_VALUE_$$gaussianRand: int;

procedure {:inline 1} _LOG_READ_$$gaussianRand(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$gaussianRand;



implementation {:inline 1} _LOG_READ_$$gaussianRand(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gaussianRand := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gaussianRand == _value then true else _READ_HAS_OCCURRED_$$gaussianRand);
    return;
}



procedure _CHECK_READ_$$gaussianRand(_P: bool, _offset: int, _value: int);
  requires {:source_name "gaussianRand"} {:array "$$gaussianRand"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gaussianRand);
  requires {:source_name "gaussianRand"} {:array "$$gaussianRand"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gaussianRand: bool;

procedure {:inline 1} _LOG_WRITE_$$gaussianRand(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$gaussianRand, _WRITE_READ_BENIGN_FLAG_$$gaussianRand;



implementation {:inline 1} _LOG_WRITE_$$gaussianRand(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gaussianRand := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gaussianRand == _value then true else _WRITE_HAS_OCCURRED_$$gaussianRand);
    _WRITE_READ_BENIGN_FLAG_$$gaussianRand := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gaussianRand == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gaussianRand);
    return;
}



procedure _CHECK_WRITE_$$gaussianRand(_P: bool, _offset: int, _value: int);
  requires {:source_name "gaussianRand"} {:array "$$gaussianRand"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gaussianRand != _value);
  requires {:source_name "gaussianRand"} {:array "$$gaussianRand"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gaussianRand != _value);
  requires {:source_name "gaussianRand"} {:array "$$gaussianRand"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gaussianRand(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$gaussianRand;



implementation {:inline 1} _LOG_ATOMIC_$$gaussianRand(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gaussianRand := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gaussianRand);
    return;
}



procedure _CHECK_ATOMIC_$$gaussianRand(_P: bool, _offset: int);
  requires {:source_name "gaussianRand"} {:array "$$gaussianRand"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset);
  requires {:source_name "gaussianRand"} {:array "$$gaussianRand"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$gaussianRand;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gaussianRand(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gaussianRand := (if _P && _WRITE_HAS_OCCURRED_$$gaussianRand && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gaussianRand);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

const {:existential true} _b5: bool;
