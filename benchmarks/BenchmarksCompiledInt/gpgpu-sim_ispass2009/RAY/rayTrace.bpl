type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "Obj"} {:global} $$Obj: [int]int;

axiom {:array_info "$$Obj"} {:global} {:elem_width 32} {:source_name "Obj"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Obj: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Obj: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Obj: bool;

var {:source_name "prof"} {:global} $$prof: [int]int;

axiom {:array_info "$$prof"} {:global} {:elem_width 32} {:source_name "prof"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$prof: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$prof: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$prof: bool;

axiom {:array_info "$$A"} {:global} {:elem_width 32} {:source_name "A"} {:source_elem_width 96} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$u"} {:global} {:elem_width 32} {:source_name "u"} {:source_elem_width 96} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$u: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$u: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$u: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i"} {:elem_width 32} {:source_name "a.i.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i"} {:elem_width 32} {:source_name "b.i.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$R.i"} {:elem_width 32} {:source_name "R.i"} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$C.i"} {:elem_width 32} {:source_name "C.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$L.i"} {:elem_width 32} {:source_name "L.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$s"} {:elem_width 8} {:source_name "s"} {:source_elem_width 256} {:source_dimensions "1"} true;

axiom {:array_info "$$R"} {:elem_width 32} {:source_name "R"} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:source_name "cnode"} {:constant} $$cnode$1: [int]int;

var {:source_name "cnode"} {:constant} $$cnode$2: [int]int;

axiom {:array_info "$$cnode"} {:constant} {:elem_width 8} {:source_name "cnode"} {:source_elem_width 320} {:source_dimensions "4"} true;

const _WATCHED_OFFSET: int;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSQRT64(int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "rayTrace"} {:kernel} $_Z8rayTracePjPfP6float3S2_jjffj($imageW: int, $imageH: int, $pas: int, $df: int, $nObj: int);
  requires !_READ_HAS_OCCURRED_$$Obj && !_WRITE_HAS_OCCURRED_$$Obj && !_ATOMIC_HAS_OCCURRED_$$Obj;
  requires !_READ_HAS_OCCURRED_$$prof && !_WRITE_HAS_OCCURRED_$$prof && !_ATOMIC_HAS_OCCURRED_$$prof;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$u && !_WRITE_HAS_OCCURRED_$$u && !_ATOMIC_HAS_OCCURRED_$$u;
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
  modifies _READ_HAS_OCCURRED_$$prof, _WRITE_HAS_OCCURRED_$$prof, _WRITE_READ_BENIGN_FLAG_$$prof, _WRITE_READ_BENIGN_FLAG_$$prof, _WRITE_HAS_OCCURRED_$$Obj, _WRITE_READ_BENIGN_FLAG_$$Obj, _WRITE_READ_BENIGN_FLAG_$$Obj;



implementation {:source_name "rayTrace"} {:kernel} $_Z8rayTracePjPfP6float3S2_jjffj($imageW: int, $imageH: int, $pas: int, $df: int, $nObj: int)
{
  var $res.i.2$1: int;
  var $res.i.2$2: int;
  var $res.i.1$1: int;
  var $res.i.1$2: int;
  var $res.i.0$1: int;
  var $res.i.0$2: int;
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
  var v19$1: int;
  var v19$2: int;
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
  var v36$1: int;
  var v36$2: int;
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
  var v113$1: int;
  var v113$2: int;
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
  var v73$1: int;
  var v73$2: int;
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
  var v0$1: int;
  var v0$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v86$1: int;
  var v86$2: int;
  var v87$1: int;
  var v87$2: int;
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
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
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v107$1: int;
  var v107$2: int;
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
  var v140$1: bool;
  var v140$2: bool;
  var v141$1: bool;
  var v141$2: bool;
  var v142$1: int;
  var v142$2: int;
  var v143$1: bool;
  var v143$2: bool;
  var v146$1: bool;
  var v146$2: bool;
  var v144$1: int;
  var v144$2: int;
  var v145$1: bool;
  var v145$2: bool;
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
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
  var v103$1: int;
  var v103$2: int;
  var v104$1: int;
  var v104$2: int;
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
  var v114$1: int;
  var v114$2: int;
  var v115$1: int;
  var v115$2: int;
  var v116$1: int;
  var v116$2: int;
  var v117$1: int;
  var v117$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v35$1: int;
  var v35$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
  var v20$1: int;
  var v20$2: int;
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
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v12$1: int;
  var v12$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v41$1: int;
  var v41$2: int;
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
  var v147$1: int;
  var v147$2: int;
  var v148$1: bool;
  var v148$2: bool;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := BV32_ADD(v0$1, BV32_MUL(v1$1, $imageW));
    v2$2 := BV32_ADD(v0$2, BV32_MUL(v1$2, $imageW));
    v3$1 := BV32_ULT(v0$1, $imageW);
    v3$2 := BV32_ULT(v0$2, $imageW);
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
    p16$1 := false;
    p16$2 := false;
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    v4$1 := (if p0$1 then BV32_ULT(v1$1, $imageH) else v4$1);
    v4$2 := (if p0$2 then BV32_ULT(v1$2, $imageH) else v4$2);
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    v5$1 := (if p1$1 then $$cnode$1[BV32_MUL($nObj, 40)] else v5$1);
    v5$2 := (if p1$2 then $$cnode$2[BV32_MUL($nObj, 40)] else v5$2);
    $$s$0$1 := (if p1$1 then v5$1 else $$s$0$1);
    $$s$0$2 := (if p1$2 then v5$2 else $$s$0$2);
    v6$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 1)] else v6$1);
    v6$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 1)] else v6$2);
    $$s$1$1 := (if p1$1 then v6$1 else $$s$1$1);
    $$s$1$2 := (if p1$2 then v6$2 else $$s$1$2);
    v7$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 2)] else v7$1);
    v7$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 2)] else v7$2);
    $$s$2$1 := (if p1$1 then v7$1 else $$s$2$1);
    $$s$2$2 := (if p1$2 then v7$2 else $$s$2$2);
    v8$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 3)] else v8$1);
    v8$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 3)] else v8$2);
    $$s$3$1 := (if p1$1 then v8$1 else $$s$3$1);
    $$s$3$2 := (if p1$2 then v8$2 else $$s$3$2);
    v9$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 4)] else v9$1);
    v9$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 4)] else v9$2);
    $$s$4$1 := (if p1$1 then v9$1 else $$s$4$1);
    $$s$4$2 := (if p1$2 then v9$2 else $$s$4$2);
    v10$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 5)] else v10$1);
    v10$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 5)] else v10$2);
    $$s$5$1 := (if p1$1 then v10$1 else $$s$5$1);
    $$s$5$2 := (if p1$2 then v10$2 else $$s$5$2);
    v11$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 6)] else v11$1);
    v11$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 6)] else v11$2);
    $$s$6$1 := (if p1$1 then v11$1 else $$s$6$1);
    $$s$6$2 := (if p1$2 then v11$2 else $$s$6$2);
    v12$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 7)] else v12$1);
    v12$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 7)] else v12$2);
    $$s$7$1 := (if p1$1 then v12$1 else $$s$7$1);
    $$s$7$2 := (if p1$2 then v12$2 else $$s$7$2);
    v13$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 8)] else v13$1);
    v13$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 8)] else v13$2);
    $$s$8$1 := (if p1$1 then v13$1 else $$s$8$1);
    $$s$8$2 := (if p1$2 then v13$2 else $$s$8$2);
    v14$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 9)] else v14$1);
    v14$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 9)] else v14$2);
    $$s$9$1 := (if p1$1 then v14$1 else $$s$9$1);
    $$s$9$2 := (if p1$2 then v14$2 else $$s$9$2);
    v15$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 10)] else v15$1);
    v15$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 10)] else v15$2);
    $$s$10$1 := (if p1$1 then v15$1 else $$s$10$1);
    $$s$10$2 := (if p1$2 then v15$2 else $$s$10$2);
    v16$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 11)] else v16$1);
    v16$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 11)] else v16$2);
    $$s$11$1 := (if p1$1 then v16$1 else $$s$11$1);
    $$s$11$2 := (if p1$2 then v16$2 else $$s$11$2);
    v17$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 12)] else v17$1);
    v17$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 12)] else v17$2);
    $$s$12$1 := (if p1$1 then v17$1 else $$s$12$1);
    $$s$12$2 := (if p1$2 then v17$2 else $$s$12$2);
    v18$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 13)] else v18$1);
    v18$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 13)] else v18$2);
    $$s$13$1 := (if p1$1 then v18$1 else $$s$13$1);
    $$s$13$2 := (if p1$2 then v18$2 else $$s$13$2);
    v19$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 14)] else v19$1);
    v19$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 14)] else v19$2);
    $$s$14$1 := (if p1$1 then v19$1 else $$s$14$1);
    $$s$14$2 := (if p1$2 then v19$2 else $$s$14$2);
    v20$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 15)] else v20$1);
    v20$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 15)] else v20$2);
    $$s$15$1 := (if p1$1 then v20$1 else $$s$15$1);
    $$s$15$2 := (if p1$2 then v20$2 else $$s$15$2);
    v21$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 16)] else v21$1);
    v21$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 16)] else v21$2);
    $$s$16$1 := (if p1$1 then v21$1 else $$s$16$1);
    $$s$16$2 := (if p1$2 then v21$2 else $$s$16$2);
    v22$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 17)] else v22$1);
    v22$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 17)] else v22$2);
    $$s$17$1 := (if p1$1 then v22$1 else $$s$17$1);
    $$s$17$2 := (if p1$2 then v22$2 else $$s$17$2);
    v23$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 18)] else v23$1);
    v23$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 18)] else v23$2);
    $$s$18$1 := (if p1$1 then v23$1 else $$s$18$1);
    $$s$18$2 := (if p1$2 then v23$2 else $$s$18$2);
    v24$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 19)] else v24$1);
    v24$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 19)] else v24$2);
    $$s$19$1 := (if p1$1 then v24$1 else $$s$19$1);
    $$s$19$2 := (if p1$2 then v24$2 else $$s$19$2);
    v25$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 20)] else v25$1);
    v25$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 20)] else v25$2);
    $$s$20$1 := (if p1$1 then v25$1 else $$s$20$1);
    $$s$20$2 := (if p1$2 then v25$2 else $$s$20$2);
    v26$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 21)] else v26$1);
    v26$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 21)] else v26$2);
    $$s$21$1 := (if p1$1 then v26$1 else $$s$21$1);
    $$s$21$2 := (if p1$2 then v26$2 else $$s$21$2);
    v27$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 22)] else v27$1);
    v27$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 22)] else v27$2);
    $$s$22$1 := (if p1$1 then v27$1 else $$s$22$1);
    $$s$22$2 := (if p1$2 then v27$2 else $$s$22$2);
    v28$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 23)] else v28$1);
    v28$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 23)] else v28$2);
    $$s$23$1 := (if p1$1 then v28$1 else $$s$23$1);
    $$s$23$2 := (if p1$2 then v28$2 else $$s$23$2);
    v29$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 24)] else v29$1);
    v29$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 24)] else v29$2);
    $$s$24$1 := (if p1$1 then v29$1 else $$s$24$1);
    $$s$24$2 := (if p1$2 then v29$2 else $$s$24$2);
    v30$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 25)] else v30$1);
    v30$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 25)] else v30$2);
    $$s$25$1 := (if p1$1 then v30$1 else $$s$25$1);
    $$s$25$2 := (if p1$2 then v30$2 else $$s$25$2);
    v31$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 26)] else v31$1);
    v31$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 26)] else v31$2);
    $$s$26$1 := (if p1$1 then v31$1 else $$s$26$1);
    $$s$26$2 := (if p1$2 then v31$2 else $$s$26$2);
    v32$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 27)] else v32$1);
    v32$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 27)] else v32$2);
    $$s$27$1 := (if p1$1 then v32$1 else $$s$27$1);
    $$s$27$2 := (if p1$2 then v32$2 else $$s$27$2);
    v33$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 28)] else v33$1);
    v33$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 28)] else v33$2);
    $$s$28$1 := (if p1$1 then v33$1 else $$s$28$1);
    $$s$28$2 := (if p1$2 then v33$2 else $$s$28$2);
    v34$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 29)] else v34$1);
    v34$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 29)] else v34$2);
    $$s$29$1 := (if p1$1 then v34$1 else $$s$29$1);
    $$s$29$2 := (if p1$2 then v34$2 else $$s$29$2);
    v35$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 30)] else v35$1);
    v35$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 30)] else v35$2);
    $$s$30$1 := (if p1$1 then v35$1 else $$s$30$1);
    $$s$30$2 := (if p1$2 then v35$2 else $$s$30$2);
    v36$1 := (if p1$1 then $$cnode$1[BV32_ADD(BV32_MUL($nObj, 40), 31)] else v36$1);
    v36$2 := (if p1$2 then $$cnode$2[BV32_ADD(BV32_MUL($nObj, 40), 31)] else v36$2);
    $$s$31$1 := (if p1$1 then v36$1 else $$s$31$1);
    $$s$31$2 := (if p1$2 then v36$2 else $$s$31$2);
    v37$1 := (if p1$1 then $$s$0$1 else v37$1);
    v37$2 := (if p1$2 then $$s$0$2 else v37$2);
    v38$1 := (if p1$1 then $$s$1$1 else v38$1);
    v38$2 := (if p1$2 then $$s$1$2 else v38$2);
    v39$1 := (if p1$1 then $$s$2$1 else v39$1);
    v39$2 := (if p1$2 then $$s$2$2 else v39$2);
    v40$1 := (if p1$1 then $$s$3$1 else v40$1);
    v40$2 := (if p1$2 then $$s$3$2 else v40$2);
    v41$1 := (if p1$1 then FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v40$1, v39$1), v38$1), v37$1), $pas) else v41$1);
    v41$2 := (if p1$2 then FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v40$2, v39$2), v38$2), v37$2), $pas) else v41$2);
    $$s$0$1 := (if p1$1 then BV_EXTRACT(v41$1, 8, 0) else $$s$0$1);
    $$s$0$2 := (if p1$2 then BV_EXTRACT(v41$2, 8, 0) else $$s$0$2);
    $$s$1$1 := (if p1$1 then BV_EXTRACT(v41$1, 16, 8) else $$s$1$1);
    $$s$1$2 := (if p1$2 then BV_EXTRACT(v41$2, 16, 8) else $$s$1$2);
    $$s$2$1 := (if p1$1 then BV_EXTRACT(v41$1, 24, 16) else $$s$2$1);
    $$s$2$2 := (if p1$2 then BV_EXTRACT(v41$2, 24, 16) else $$s$2$2);
    $$s$3$1 := (if p1$1 then BV_EXTRACT(v41$1, 32, 24) else $$s$3$1);
    $$s$3$2 := (if p1$2 then BV_EXTRACT(v41$2, 32, 24) else $$s$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v42$1 := (if p1$1 then _HAVOC_int$1 else v42$1);
    v42$2 := (if p1$2 then _HAVOC_int$2 else v42$2);
    $$R$0$1 := (if p1$1 then v42$1 else $$R$0$1);
    $$R$0$2 := (if p1$2 then v42$2 else $$R$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v43$1 := (if p1$1 then _HAVOC_int$1 else v43$1);
    v43$2 := (if p1$2 then _HAVOC_int$2 else v43$2);
    $$R$1$1 := (if p1$1 then v43$1 else $$R$1$1);
    $$R$1$2 := (if p1$2 then v43$2 else $$R$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v44$1 := (if p1$1 then _HAVOC_int$1 else v44$1);
    v44$2 := (if p1$2 then _HAVOC_int$2 else v44$2);
    $$R$2$1 := (if p1$1 then v44$1 else $$R$2$1);
    $$R$2$2 := (if p1$2 then v44$2 else $$R$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v45$1 := (if p1$1 then _HAVOC_int$1 else v45$1);
    v45$2 := (if p1$2 then _HAVOC_int$2 else v45$2);
    $$R$3$1 := (if p1$1 then v45$1 else $$R$3$1);
    $$R$3$2 := (if p1$2 then v45$2 else $$R$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v46$1 := (if p1$1 then _HAVOC_int$1 else v46$1);
    v46$2 := (if p1$2 then _HAVOC_int$2 else v46$2);
    $$R$4$1 := (if p1$1 then v46$1 else $$R$4$1);
    $$R$4$2 := (if p1$2 then v46$2 else $$R$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v47$1 := (if p1$1 then _HAVOC_int$1 else v47$1);
    v47$2 := (if p1$2 then _HAVOC_int$2 else v47$2);
    $$R$5$1 := (if p1$1 then v47$1 else $$R$5$1);
    $$R$5$2 := (if p1$2 then v47$2 else $$R$5$2);
    v48$1 := (if p1$1 then $$R$0$1 else v48$1);
    v48$2 := (if p1$2 then $$R$0$2 else v48$2);
    $$8$0$1 := (if p1$1 then v48$1 else $$8$0$1);
    $$8$0$2 := (if p1$2 then v48$2 else $$8$0$2);
    v49$1 := (if p1$1 then $$R$1$1 else v49$1);
    v49$2 := (if p1$2 then $$R$1$2 else v49$2);
    $$8$1$1 := (if p1$1 then v49$1 else $$8$1$1);
    $$8$1$2 := (if p1$2 then v49$2 else $$8$1$2);
    v50$1 := (if p1$1 then $$R$2$1 else v50$1);
    v50$2 := (if p1$2 then $$R$2$2 else v50$2);
    $$8$2$1 := (if p1$1 then v50$1 else $$8$2$1);
    $$8$2$2 := (if p1$2 then v50$2 else $$8$2$2);
    v51$1 := (if p1$1 then $$R$3$1 else v51$1);
    v51$2 := (if p1$2 then $$R$3$2 else v51$2);
    $$8$3$1 := (if p1$1 then v51$1 else $$8$3$1);
    $$8$3$2 := (if p1$2 then v51$2 else $$8$3$2);
    v52$1 := (if p1$1 then $$R$4$1 else v52$1);
    v52$2 := (if p1$2 then $$R$4$2 else v52$2);
    $$8$4$1 := (if p1$1 then v52$1 else $$8$4$1);
    $$8$4$2 := (if p1$2 then v52$2 else $$8$4$2);
    v53$1 := (if p1$1 then $$R$5$1 else v53$1);
    v53$2 := (if p1$2 then $$R$5$2 else v53$2);
    $$8$5$1 := (if p1$1 then v53$1 else $$8$5$1);
    $$8$5$2 := (if p1$2 then v53$2 else $$8$5$2);
    v54$1 := (if p1$1 then $$s$0$1 else v54$1);
    v54$2 := (if p1$2 then $$s$0$2 else v54$2);
    $$9$0$1 := (if p1$1 then v54$1 else $$9$0$1);
    $$9$0$2 := (if p1$2 then v54$2 else $$9$0$2);
    v55$1 := (if p1$1 then $$s$1$1 else v55$1);
    v55$2 := (if p1$2 then $$s$1$2 else v55$2);
    $$9$1$1 := (if p1$1 then v55$1 else $$9$1$1);
    $$9$1$2 := (if p1$2 then v55$2 else $$9$1$2);
    v56$1 := (if p1$1 then $$s$2$1 else v56$1);
    v56$2 := (if p1$2 then $$s$2$2 else v56$2);
    $$9$2$1 := (if p1$1 then v56$1 else $$9$2$1);
    $$9$2$2 := (if p1$2 then v56$2 else $$9$2$2);
    v57$1 := (if p1$1 then $$s$3$1 else v57$1);
    v57$2 := (if p1$2 then $$s$3$2 else v57$2);
    $$9$3$1 := (if p1$1 then v57$1 else $$9$3$1);
    $$9$3$2 := (if p1$2 then v57$2 else $$9$3$2);
    v58$1 := (if p1$1 then $$s$4$1 else v58$1);
    v58$2 := (if p1$2 then $$s$4$2 else v58$2);
    $$9$4$1 := (if p1$1 then v58$1 else $$9$4$1);
    $$9$4$2 := (if p1$2 then v58$2 else $$9$4$2);
    v59$1 := (if p1$1 then $$s$5$1 else v59$1);
    v59$2 := (if p1$2 then $$s$5$2 else v59$2);
    $$9$5$1 := (if p1$1 then v59$1 else $$9$5$1);
    $$9$5$2 := (if p1$2 then v59$2 else $$9$5$2);
    v60$1 := (if p1$1 then $$s$6$1 else v60$1);
    v60$2 := (if p1$2 then $$s$6$2 else v60$2);
    $$9$6$1 := (if p1$1 then v60$1 else $$9$6$1);
    $$9$6$2 := (if p1$2 then v60$2 else $$9$6$2);
    v61$1 := (if p1$1 then $$s$7$1 else v61$1);
    v61$2 := (if p1$2 then $$s$7$2 else v61$2);
    $$9$7$1 := (if p1$1 then v61$1 else $$9$7$1);
    $$9$7$2 := (if p1$2 then v61$2 else $$9$7$2);
    v62$1 := (if p1$1 then $$s$8$1 else v62$1);
    v62$2 := (if p1$2 then $$s$8$2 else v62$2);
    $$9$8$1 := (if p1$1 then v62$1 else $$9$8$1);
    $$9$8$2 := (if p1$2 then v62$2 else $$9$8$2);
    v63$1 := (if p1$1 then $$s$9$1 else v63$1);
    v63$2 := (if p1$2 then $$s$9$2 else v63$2);
    $$9$9$1 := (if p1$1 then v63$1 else $$9$9$1);
    $$9$9$2 := (if p1$2 then v63$2 else $$9$9$2);
    v64$1 := (if p1$1 then $$s$10$1 else v64$1);
    v64$2 := (if p1$2 then $$s$10$2 else v64$2);
    $$9$10$1 := (if p1$1 then v64$1 else $$9$10$1);
    $$9$10$2 := (if p1$2 then v64$2 else $$9$10$2);
    v65$1 := (if p1$1 then $$s$11$1 else v65$1);
    v65$2 := (if p1$2 then $$s$11$2 else v65$2);
    $$9$11$1 := (if p1$1 then v65$1 else $$9$11$1);
    $$9$11$2 := (if p1$2 then v65$2 else $$9$11$2);
    v66$1 := (if p1$1 then $$s$12$1 else v66$1);
    v66$2 := (if p1$2 then $$s$12$2 else v66$2);
    v67$1 := (if p1$1 then $$s$13$1 else v67$1);
    v67$2 := (if p1$2 then $$s$13$2 else v67$2);
    v68$1 := (if p1$1 then $$s$14$1 else v68$1);
    v68$2 := (if p1$2 then $$s$14$2 else v68$2);
    v69$1 := (if p1$1 then $$s$15$1 else v69$1);
    v69$2 := (if p1$2 then $$s$15$2 else v69$2);
    v70$1 := (if p1$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v69$1, v68$1), v67$1), v66$1) else v70$1);
    v70$2 := (if p1$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v69$2, v68$2), v67$2), v66$2) else v70$2);
    v71$1 := (if p1$1 then $$8$0$1 else v71$1);
    v71$2 := (if p1$2 then $$8$0$2 else v71$2);
    v72$1 := (if p1$1 then $$8$1$1 else v72$1);
    v72$2 := (if p1$2 then $$8$1$2 else v72$2);
    v73$1 := (if p1$1 then $$8$2$1 else v73$1);
    v73$2 := (if p1$2 then $$8$2$2 else v73$2);
    v74$1 := (if p1$1 then $$8$3$1 else v74$1);
    v74$2 := (if p1$2 then $$8$3$2 else v74$2);
    v75$1 := (if p1$1 then $$8$4$1 else v75$1);
    v75$2 := (if p1$2 then $$8$4$2 else v75$2);
    v76$1 := (if p1$1 then $$8$5$1 else v76$1);
    v76$2 := (if p1$2 then $$8$5$2 else v76$2);
    v77$1 := (if p1$1 then $$9$0$1 else v77$1);
    v77$2 := (if p1$2 then $$9$0$2 else v77$2);
    v78$1 := (if p1$1 then $$9$1$1 else v78$1);
    v78$2 := (if p1$2 then $$9$1$2 else v78$2);
    v79$1 := (if p1$1 then $$9$2$1 else v79$1);
    v79$2 := (if p1$2 then $$9$2$2 else v79$2);
    v80$1 := (if p1$1 then $$9$3$1 else v80$1);
    v80$2 := (if p1$2 then $$9$3$2 else v80$2);
    v81$1 := (if p1$1 then $$9$4$1 else v81$1);
    v81$2 := (if p1$2 then $$9$4$2 else v81$2);
    v82$1 := (if p1$1 then $$9$5$1 else v82$1);
    v82$2 := (if p1$2 then $$9$5$2 else v82$2);
    v83$1 := (if p1$1 then $$9$6$1 else v83$1);
    v83$2 := (if p1$2 then $$9$6$2 else v83$2);
    v84$1 := (if p1$1 then $$9$7$1 else v84$1);
    v84$2 := (if p1$2 then $$9$7$2 else v84$2);
    v85$1 := (if p1$1 then $$9$8$1 else v85$1);
    v85$2 := (if p1$2 then $$9$8$2 else v85$2);
    v86$1 := (if p1$1 then $$9$9$1 else v86$1);
    v86$2 := (if p1$2 then $$9$9$2 else v86$2);
    v87$1 := (if p1$1 then $$9$10$1 else v87$1);
    v87$2 := (if p1$2 then $$9$10$2 else v87$2);
    v88$1 := (if p1$1 then $$9$11$1 else v88$1);
    v88$2 := (if p1$2 then $$9$11$2 else v88$2);
    $$R.i$0$1 := (if p1$1 then v71$1 else $$R.i$0$1);
    $$R.i$0$2 := (if p1$2 then v71$2 else $$R.i$0$2);
    $$R.i$1$1 := (if p1$1 then v72$1 else $$R.i$1$1);
    $$R.i$1$2 := (if p1$2 then v72$2 else $$R.i$1$2);
    $$R.i$2$1 := (if p1$1 then v73$1 else $$R.i$2$1);
    $$R.i$2$2 := (if p1$2 then v73$2 else $$R.i$2$2);
    $$R.i$3$1 := (if p1$1 then v74$1 else $$R.i$3$1);
    $$R.i$3$2 := (if p1$2 then v74$2 else $$R.i$3$2);
    $$R.i$4$1 := (if p1$1 then v75$1 else $$R.i$4$1);
    $$R.i$4$2 := (if p1$2 then v75$2 else $$R.i$4$2);
    $$R.i$5$1 := (if p1$1 then v76$1 else $$R.i$5$1);
    $$R.i$5$2 := (if p1$2 then v76$2 else $$R.i$5$2);
    $$C.i$0$1 := (if p1$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v80$1, v79$1), v78$1), v77$1) else $$C.i$0$1);
    $$C.i$0$2 := (if p1$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v80$2, v79$2), v78$2), v77$2) else $$C.i$0$2);
    $$C.i$1$1 := (if p1$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v84$1, v83$1), v82$1), v81$1) else $$C.i$1$1);
    $$C.i$1$2 := (if p1$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v84$2, v83$2), v82$2), v81$2) else $$C.i$1$2);
    $$C.i$2$1 := (if p1$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v88$1, v87$1), v86$1), v85$1) else $$C.i$2$1);
    $$C.i$2$2 := (if p1$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v88$2, v87$2), v86$2), v85$2) else $$C.i$2$2);
    v89$1 := (if p1$1 then $$C.i$0$1 else v89$1);
    v89$2 := (if p1$2 then $$C.i$0$2 else v89$2);
    $$2$0$1 := (if p1$1 then v89$1 else $$2$0$1);
    $$2$0$2 := (if p1$2 then v89$2 else $$2$0$2);
    v90$1 := (if p1$1 then $$C.i$1$1 else v90$1);
    v90$2 := (if p1$2 then $$C.i$1$2 else v90$2);
    $$2$1$1 := (if p1$1 then v90$1 else $$2$1$1);
    $$2$1$2 := (if p1$2 then v90$2 else $$2$1$2);
    v91$1 := (if p1$1 then $$C.i$2$1 else v91$1);
    v91$2 := (if p1$2 then $$C.i$2$2 else v91$2);
    $$2$2$1 := (if p1$1 then v91$1 else $$2$2$1);
    $$2$2$2 := (if p1$2 then v91$2 else $$2$2$2);
    v92$1 := (if p1$1 then $$R.i$0$1 else v92$1);
    v92$2 := (if p1$2 then $$R.i$0$2 else v92$2);
    $$3$0$1 := (if p1$1 then v92$1 else $$3$0$1);
    $$3$0$2 := (if p1$2 then v92$2 else $$3$0$2);
    v93$1 := (if p1$1 then $$R.i$1$1 else v93$1);
    v93$2 := (if p1$2 then $$R.i$1$2 else v93$2);
    $$3$1$1 := (if p1$1 then v93$1 else $$3$1$1);
    $$3$1$2 := (if p1$2 then v93$2 else $$3$1$2);
    v94$1 := (if p1$1 then $$R.i$2$1 else v94$1);
    v94$2 := (if p1$2 then $$R.i$2$2 else v94$2);
    $$3$2$1 := (if p1$1 then v94$1 else $$3$2$1);
    $$3$2$2 := (if p1$2 then v94$2 else $$3$2$2);
    v95$1 := (if p1$1 then $$2$0$1 else v95$1);
    v95$2 := (if p1$2 then $$2$0$2 else v95$2);
    v96$1 := (if p1$1 then $$2$1$1 else v96$1);
    v96$2 := (if p1$2 then $$2$1$2 else v96$2);
    v97$1 := (if p1$1 then $$2$2$1 else v97$1);
    v97$2 := (if p1$2 then $$2$2$2 else v97$2);
    v98$1 := (if p1$1 then $$3$0$1 else v98$1);
    v98$2 := (if p1$2 then $$3$0$2 else v98$2);
    v99$1 := (if p1$1 then $$3$1$1 else v99$1);
    v99$2 := (if p1$2 then $$3$1$2 else v99$2);
    v100$1 := (if p1$1 then $$3$2$1 else v100$1);
    v100$2 := (if p1$2 then $$3$2$2 else v100$2);
    $$a.i.i$0$1 := (if p1$1 then v95$1 else $$a.i.i$0$1);
    $$a.i.i$0$2 := (if p1$2 then v95$2 else $$a.i.i$0$2);
    $$a.i.i$1$1 := (if p1$1 then v96$1 else $$a.i.i$1$1);
    $$a.i.i$1$2 := (if p1$2 then v96$2 else $$a.i.i$1$2);
    $$a.i.i$2$1 := (if p1$1 then v97$1 else $$a.i.i$2$1);
    $$a.i.i$2$2 := (if p1$2 then v97$2 else $$a.i.i$2$2);
    $$b.i.i$0$1 := (if p1$1 then v98$1 else $$b.i.i$0$1);
    $$b.i.i$0$2 := (if p1$2 then v98$2 else $$b.i.i$0$2);
    $$b.i.i$1$1 := (if p1$1 then v99$1 else $$b.i.i$1$1);
    $$b.i.i$1$2 := (if p1$2 then v99$2 else $$b.i.i$1$2);
    $$b.i.i$2$1 := (if p1$1 then v100$1 else $$b.i.i$2$1);
    $$b.i.i$2$2 := (if p1$2 then v100$2 else $$b.i.i$2$2);
    v101$1 := (if p1$1 then $$a.i.i$0$1 else v101$1);
    v101$2 := (if p1$2 then $$a.i.i$0$2 else v101$2);
    v102$1 := (if p1$1 then $$b.i.i$0$1 else v102$1);
    v102$2 := (if p1$2 then $$b.i.i$0$2 else v102$2);
    v103$1 := (if p1$1 then $$a.i.i$1$1 else v103$1);
    v103$2 := (if p1$2 then $$a.i.i$1$2 else v103$2);
    v104$1 := (if p1$1 then $$b.i.i$1$1 else v104$1);
    v104$2 := (if p1$2 then $$b.i.i$1$2 else v104$2);
    v105$1 := (if p1$1 then $$a.i.i$2$1 else v105$1);
    v105$2 := (if p1$2 then $$a.i.i$2$2 else v105$2);
    v106$1 := (if p1$1 then $$b.i.i$2$1 else v106$1);
    v106$2 := (if p1$2 then $$b.i.i$2$2 else v106$2);
    $$0$0$1 := (if p1$1 then FSUB32(v101$1, v102$1) else $$0$0$1);
    $$0$0$2 := (if p1$2 then FSUB32(v101$2, v102$2) else $$0$0$2);
    $$0$1$1 := (if p1$1 then FSUB32(v103$1, v104$1) else $$0$1$1);
    $$0$1$2 := (if p1$2 then FSUB32(v103$2, v104$2) else $$0$1$2);
    $$0$2$1 := (if p1$1 then FSUB32(v105$1, v106$1) else $$0$2$1);
    $$0$2$2 := (if p1$2 then FSUB32(v105$2, v106$2) else $$0$2$2);
    v107$1 := (if p1$1 then $$0$0$1 else v107$1);
    v107$2 := (if p1$2 then $$0$0$2 else v107$2);
    v108$1 := (if p1$1 then $$0$1$1 else v108$1);
    v108$2 := (if p1$2 then $$0$1$2 else v108$2);
    v109$1 := (if p1$1 then $$0$2$1 else v109$1);
    v109$2 := (if p1$2 then $$0$2$2 else v109$2);
    $$1$0$1 := (if p1$1 then v107$1 else $$1$0$1);
    $$1$0$2 := (if p1$2 then v107$2 else $$1$0$2);
    $$1$1$1 := (if p1$1 then v108$1 else $$1$1$1);
    $$1$1$2 := (if p1$2 then v108$2 else $$1$1$2);
    $$1$2$1 := (if p1$1 then v109$1 else $$1$2$1);
    $$1$2$2 := (if p1$2 then v109$2 else $$1$2$2);
    v110$1 := (if p1$1 then $$1$0$1 else v110$1);
    v110$2 := (if p1$2 then $$1$0$2 else v110$2);
    v111$1 := (if p1$1 then $$1$1$1 else v111$1);
    v111$2 := (if p1$2 then $$1$1$2 else v111$2);
    v112$1 := (if p1$1 then $$1$2$1 else v112$1);
    v112$2 := (if p1$2 then $$1$2$2 else v112$2);
    $$L.i$0$1 := (if p1$1 then v110$1 else $$L.i$0$1);
    $$L.i$0$2 := (if p1$2 then v110$2 else $$L.i$0$2);
    $$L.i$1$1 := (if p1$1 then v111$1 else $$L.i$1$1);
    $$L.i$1$2 := (if p1$2 then v111$2 else $$L.i$1$2);
    $$L.i$2$1 := (if p1$1 then v112$1 else $$L.i$2$1);
    $$L.i$2$2 := (if p1$2 then v112$2 else $$L.i$2$2);
    v113$1 := (if p1$1 then $$L.i$0$1 else v113$1);
    v113$2 := (if p1$2 then $$L.i$0$2 else v113$2);
    $$4$0$1 := (if p1$1 then v113$1 else $$4$0$1);
    $$4$0$2 := (if p1$2 then v113$2 else $$4$0$2);
    v114$1 := (if p1$1 then $$L.i$1$1 else v114$1);
    v114$2 := (if p1$2 then $$L.i$1$2 else v114$2);
    $$4$1$1 := (if p1$1 then v114$1 else $$4$1$1);
    $$4$1$2 := (if p1$2 then v114$2 else $$4$1$2);
    v115$1 := (if p1$1 then $$L.i$2$1 else v115$1);
    v115$2 := (if p1$2 then $$L.i$2$2 else v115$2);
    $$4$2$1 := (if p1$1 then v115$1 else $$4$2$1);
    $$4$2$2 := (if p1$2 then v115$2 else $$4$2$2);
    v116$1 := (if p1$1 then $$R.i$3$1 else v116$1);
    v116$2 := (if p1$2 then $$R.i$3$2 else v116$2);
    $$5$0$1 := (if p1$1 then v116$1 else $$5$0$1);
    $$5$0$2 := (if p1$2 then v116$2 else $$5$0$2);
    v117$1 := (if p1$1 then $$R.i$4$1 else v117$1);
    v117$2 := (if p1$2 then $$R.i$4$2 else v117$2);
    $$5$1$1 := (if p1$1 then v117$1 else $$5$1$1);
    $$5$1$2 := (if p1$2 then v117$2 else $$5$1$2);
    v118$1 := (if p1$1 then $$R.i$5$1 else v118$1);
    v118$2 := (if p1$2 then $$R.i$5$2 else v118$2);
    $$5$2$1 := (if p1$1 then v118$1 else $$5$2$1);
    $$5$2$2 := (if p1$2 then v118$2 else $$5$2$2);
    v119$1 := (if p1$1 then $$4$0$1 else v119$1);
    v119$2 := (if p1$2 then $$4$0$2 else v119$2);
    v120$1 := (if p1$1 then $$4$1$1 else v120$1);
    v120$2 := (if p1$2 then $$4$1$2 else v120$2);
    v121$1 := (if p1$1 then $$4$2$1 else v121$1);
    v121$2 := (if p1$2 then $$4$2$2 else v121$2);
    v122$1 := (if p1$1 then $$5$0$1 else v122$1);
    v122$2 := (if p1$2 then $$5$0$2 else v122$2);
    v123$1 := (if p1$1 then $$5$1$1 else v123$1);
    v123$2 := (if p1$2 then $$5$1$2 else v123$2);
    v124$1 := (if p1$1 then $$5$2$1 else v124$1);
    v124$2 := (if p1$2 then $$5$2$2 else v124$2);
    call {:sourceloc_num 217} v125$1, v125$2 := $_Z3dot6float3S_(p1$1, v119$1, v120$1, v121$1, v122$1, v123$1, v124$1, p1$2, v119$2, v120$2, v121$2, v122$2, v123$2, v124$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    v126$1 := (if p1$1 then $$L.i$0$1 else v126$1);
    v126$2 := (if p1$2 then $$L.i$0$2 else v126$2);
    $$6$0$1 := (if p1$1 then v126$1 else $$6$0$1);
    $$6$0$2 := (if p1$2 then v126$2 else $$6$0$2);
    v127$1 := (if p1$1 then $$L.i$1$1 else v127$1);
    v127$2 := (if p1$2 then $$L.i$1$2 else v127$2);
    $$6$1$1 := (if p1$1 then v127$1 else $$6$1$1);
    $$6$1$2 := (if p1$2 then v127$2 else $$6$1$2);
    v128$1 := (if p1$1 then $$L.i$2$1 else v128$1);
    v128$2 := (if p1$2 then $$L.i$2$2 else v128$2);
    $$6$2$1 := (if p1$1 then v128$1 else $$6$2$1);
    $$6$2$2 := (if p1$2 then v128$2 else $$6$2$2);
    v129$1 := (if p1$1 then $$L.i$0$1 else v129$1);
    v129$2 := (if p1$2 then $$L.i$0$2 else v129$2);
    $$7$0$1 := (if p1$1 then v129$1 else $$7$0$1);
    $$7$0$2 := (if p1$2 then v129$2 else $$7$0$2);
    v130$1 := (if p1$1 then $$L.i$1$1 else v130$1);
    v130$2 := (if p1$2 then $$L.i$1$2 else v130$2);
    $$7$1$1 := (if p1$1 then v130$1 else $$7$1$1);
    $$7$1$2 := (if p1$2 then v130$2 else $$7$1$2);
    v131$1 := (if p1$1 then $$L.i$2$1 else v131$1);
    v131$2 := (if p1$2 then $$L.i$2$2 else v131$2);
    $$7$2$1 := (if p1$1 then v131$1 else $$7$2$1);
    $$7$2$2 := (if p1$2 then v131$2 else $$7$2$2);
    v132$1 := (if p1$1 then $$6$0$1 else v132$1);
    v132$2 := (if p1$2 then $$6$0$2 else v132$2);
    v133$1 := (if p1$1 then $$6$1$1 else v133$1);
    v133$2 := (if p1$2 then $$6$1$2 else v133$2);
    v134$1 := (if p1$1 then $$6$2$1 else v134$1);
    v134$2 := (if p1$2 then $$6$2$2 else v134$2);
    v135$1 := (if p1$1 then $$7$0$1 else v135$1);
    v135$2 := (if p1$2 then $$7$0$2 else v135$2);
    v136$1 := (if p1$1 then $$7$1$1 else v136$1);
    v136$2 := (if p1$2 then $$7$1$2 else v136$2);
    v137$1 := (if p1$1 then $$7$2$1 else v137$1);
    v137$2 := (if p1$2 then $$7$2$2 else v137$2);
    call {:sourceloc_num 236} v138$1, v138$2 := $_Z3dot6float3S_(p1$1, v132$1, v133$1, v134$1, v135$1, v136$1, v137$1, p1$2, v132$2, v133$2, v134$2, v135$2, v136$2, v137$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    v139$1 := (if p1$1 then FMUL32(v70$1, v70$1) else v139$1);
    v139$2 := (if p1$2 then FMUL32(v70$2, v70$2) else v139$2);
    v140$1 := (if p1$1 then FLT32(v125$1, 0) else v140$1);
    v140$2 := (if p1$2 then FLT32(v125$2, 0) else v140$2);
    p2$1 := (if p1$1 && v140$1 then v140$1 else p2$1);
    p2$2 := (if p1$2 && v140$2 then v140$2 else p2$2);
    p6$1 := (if p1$1 && !v140$1 then !v140$1 else p6$1);
    p6$2 := (if p1$2 && !v140$2 then !v140$2 else p6$2);
    v141$1 := (if p2$1 then FLT32(v139$1, v138$1) else v141$1);
    v141$2 := (if p2$2 then FLT32(v139$2, v138$2) else v141$2);
    p3$1 := (if p2$1 && v141$1 then v141$1 else p3$1);
    p3$2 := (if p2$2 && v141$2 then v141$2 else p3$2);
    p6$1 := (if p2$1 && !v141$1 then !v141$1 else p6$1);
    p6$2 := (if p2$2 && !v141$2 then !v141$2 else p6$2);
    $res.i.2$1 := (if p3$1 then 0 else $res.i.2$1);
    $res.i.2$2 := (if p3$2 then 0 else $res.i.2$2);
    p6$1 := (if p4$1 then true else p6$1);
    p6$2 := (if p4$2 then true else p6$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    v142$1 := (if p6$1 then FSUB32(v138$1, FMUL32(v125$1, v125$1)) else v142$1);
    v142$2 := (if p6$2 then FSUB32(v138$2, FMUL32(v125$2, v125$2)) else v142$2);
    v143$1 := (if p6$1 then FLT32(v139$1, v142$1) else v143$1);
    v143$2 := (if p6$2 then FLT32(v139$2, v142$2) else v143$2);
    p7$1 := (if p6$1 && v143$1 then v143$1 else p7$1);
    p7$2 := (if p6$2 && v143$2 then v143$2 else p7$2);
    p8$1 := (if p6$1 && !v143$1 then !v143$1 else p8$1);
    p8$2 := (if p6$2 && !v143$2 then !v143$2 else p8$2);
    $res.i.1$1 := (if p7$1 then 0 else $res.i.1$1);
    $res.i.1$2 := (if p7$2 then 0 else $res.i.1$2);
    v144$1 := (if p8$1 then FP64_CONV32(FSQRT64(FP32_CONV64(FSUB32(v139$1, v142$1)))) else v144$1);
    v144$2 := (if p8$2 then FP64_CONV32(FSQRT64(FP32_CONV64(FSUB32(v139$2, v142$2)))) else v144$2);
    v145$1 := (if p8$1 then FLT32(v139$1, v138$1) else v145$1);
    v145$2 := (if p8$2 then FLT32(v139$2, v138$2) else v145$2);
    p9$1 := (if p8$1 && v145$1 then v145$1 else p9$1);
    p9$2 := (if p8$2 && v145$2 then v145$2 else p9$2);
    p10$1 := (if p8$1 && !v145$1 then !v145$1 else p10$1);
    p10$2 := (if p8$2 && !v145$2 then !v145$2 else p10$2);
    $res.i.0$1 := (if p9$1 then FSUB32(v125$1, v144$1) else $res.i.0$1);
    $res.i.0$2 := (if p9$2 then FSUB32(v125$2, v144$2) else $res.i.0$2);
    $res.i.0$1 := (if p10$1 then FADD32(v125$1, v144$1) else $res.i.0$1);
    $res.i.0$2 := (if p10$2 then FADD32(v125$2, v144$2) else $res.i.0$2);
    $res.i.1$1 := (if p8$1 then $res.i.0$1 else $res.i.1$1);
    $res.i.1$2 := (if p8$2 then $res.i.0$2 else $res.i.1$2);
    $res.i.2$1 := (if p6$1 then $res.i.1$1 else $res.i.2$1);
    $res.i.2$2 := (if p6$2 then $res.i.1$2 else $res.i.2$2);
    v146$1 := (if p1$1 then FLT32(0, $res.i.2$1) else v146$1);
    v146$2 := (if p1$2 then FLT32(0, $res.i.2$2) else v146$2);
    p11$1 := (if p1$1 && v146$1 then v146$1 else p11$1);
    p11$2 := (if p1$2 && v146$2 then v146$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 248} _LOG_READ_$$prof(p11$1, v2$1, $$prof[v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 248} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 248} _CHECK_READ_$$prof(p11$2, v2$2, $$prof[v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$prof"} true;
    v147$1 := (if p11$1 then $$prof[v2$1] else v147$1);
    v147$2 := (if p11$2 then $$prof[v2$2] else v147$2);
    v148$1 := (if p11$1 then FLT32($res.i.2$1, v147$1) else v148$1);
    v148$2 := (if p11$2 then FLT32($res.i.2$2, v147$2) else v148$2);
    p12$1 := (if p11$1 && v148$1 then v148$1 else p12$1);
    p12$2 := (if p11$2 && v148$2 then v148$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 250} _LOG_WRITE_$$prof(p12$1, v2$1, $res.i.2$1, $$prof[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$prof(p12$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 250} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 250} _CHECK_WRITE_$$prof(p12$2, v2$2, $res.i.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$prof"} true;
    $$prof[v2$1] := (if p12$1 then $res.i.2$1 else $$prof[v2$1]);
    $$prof[v2$2] := (if p12$2 then $res.i.2$2 else $$prof[v2$2]);
    call {:sourceloc} {:sourceloc_num 251} _LOG_WRITE_$$Obj(p12$1, v2$1, $nObj, $$Obj[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Obj(p12$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 251} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 251} _CHECK_WRITE_$$Obj(p12$2, v2$2, $nObj);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Obj"} true;
    $$Obj[v2$1] := (if p12$1 then $nObj else $$Obj[v2$1]);
    $$Obj[v2$2] := (if p12$2 then $nObj else $$Obj[v2$2]);
    return;
}



procedure {:source_name "_Z3dot6float3S_"} $_Z3dot6float3S_(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, $5$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int, $5$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$a.i.i$0$1: int;

var $$a.i.i$0$2: int;

var $$a.i.i$1$1: int;

var $$a.i.i$1$2: int;

var $$a.i.i$2$1: int;

var $$a.i.i$2$2: int;

var $$b.i.i$0$1: int;

var $$b.i.i$0$2: int;

var $$b.i.i$1$1: int;

var $$b.i.i$1$2: int;

var $$b.i.i$2$1: int;

var $$b.i.i$2$2: int;

var $$R.i$0$1: int;

var $$R.i$0$2: int;

var $$R.i$1$1: int;

var $$R.i$1$2: int;

var $$R.i$2$1: int;

var $$R.i$2$2: int;

var $$R.i$3$1: int;

var $$R.i$3$2: int;

var $$R.i$4$1: int;

var $$R.i$4$2: int;

var $$R.i$5$1: int;

var $$R.i$5$2: int;

var $$C.i$0$1: int;

var $$C.i$0$2: int;

var $$C.i$1$1: int;

var $$C.i$1$2: int;

var $$C.i$2$1: int;

var $$C.i$2$2: int;

var $$L.i$0$1: int;

var $$L.i$0$2: int;

var $$L.i$1$1: int;

var $$L.i$1$2: int;

var $$L.i$2$1: int;

var $$L.i$2$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$5$2$1: int;

var $$5$2$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$s$0$1: int;

var $$s$0$2: int;

var $$s$1$1: int;

var $$s$1$2: int;

var $$s$2$1: int;

var $$s$2$2: int;

var $$s$3$1: int;

var $$s$3$2: int;

var $$s$4$1: int;

var $$s$4$2: int;

var $$s$5$1: int;

var $$s$5$2: int;

var $$s$6$1: int;

var $$s$6$2: int;

var $$s$7$1: int;

var $$s$7$2: int;

var $$s$8$1: int;

var $$s$8$2: int;

var $$s$9$1: int;

var $$s$9$2: int;

var $$s$10$1: int;

var $$s$10$2: int;

var $$s$11$1: int;

var $$s$11$2: int;

var $$s$12$1: int;

var $$s$12$2: int;

var $$s$13$1: int;

var $$s$13$2: int;

var $$s$14$1: int;

var $$s$14$2: int;

var $$s$15$1: int;

var $$s$15$2: int;

var $$s$16$1: int;

var $$s$16$2: int;

var $$s$17$1: int;

var $$s$17$2: int;

var $$s$18$1: int;

var $$s$18$2: int;

var $$s$19$1: int;

var $$s$19$2: int;

var $$s$20$1: int;

var $$s$20$2: int;

var $$s$21$1: int;

var $$s$21$2: int;

var $$s$22$1: int;

var $$s$22$2: int;

var $$s$23$1: int;

var $$s$23$2: int;

var $$s$24$1: int;

var $$s$24$2: int;

var $$s$25$1: int;

var $$s$25$2: int;

var $$s$26$1: int;

var $$s$26$2: int;

var $$s$27$1: int;

var $$s$27$2: int;

var $$s$28$1: int;

var $$s$28$2: int;

var $$s$29$1: int;

var $$s$29$2: int;

var $$s$30$1: int;

var $$s$30$2: int;

var $$s$31$1: int;

var $$s$31$2: int;

var $$R$0$1: int;

var $$R$0$2: int;

var $$R$1$1: int;

var $$R$1$2: int;

var $$R$2$1: int;

var $$R$2$2: int;

var $$R$3$1: int;

var $$R$3$2: int;

var $$R$4$1: int;

var $$R$4$2: int;

var $$R$5$1: int;

var $$R$5$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$8$3$1: int;

var $$8$3$2: int;

var $$8$4$1: int;

var $$8$4$2: int;

var $$8$5$1: int;

var $$8$5$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$9$2$1: int;

var $$9$2$2: int;

var $$9$3$1: int;

var $$9$3$2: int;

var $$9$4$1: int;

var $$9$4$2: int;

var $$9$5$1: int;

var $$9$5$2: int;

var $$9$6$1: int;

var $$9$6$2: int;

var $$9$7$1: int;

var $$9$7$2: int;

var $$9$8$1: int;

var $$9$8$2: int;

var $$9$9$1: int;

var $$9$9$2: int;

var $$9$10$1: int;

var $$9$10$2: int;

var $$9$11$1: int;

var $$9$11$2: int;

const _WATCHED_VALUE_$$Obj: int;

procedure {:inline 1} _LOG_READ_$$Obj(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Obj;



implementation {:inline 1} _LOG_READ_$$Obj(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Obj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Obj == _value then true else _READ_HAS_OCCURRED_$$Obj);
    return;
}



procedure _CHECK_READ_$$Obj(_P: bool, _offset: int, _value: int);
  requires {:source_name "Obj"} {:array "$$Obj"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Obj);
  requires {:source_name "Obj"} {:array "$$Obj"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Obj: bool;

procedure {:inline 1} _LOG_WRITE_$$Obj(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Obj, _WRITE_READ_BENIGN_FLAG_$$Obj;



implementation {:inline 1} _LOG_WRITE_$$Obj(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Obj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Obj == _value then true else _WRITE_HAS_OCCURRED_$$Obj);
    _WRITE_READ_BENIGN_FLAG_$$Obj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Obj == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Obj);
    return;
}



procedure _CHECK_WRITE_$$Obj(_P: bool, _offset: int, _value: int);
  requires {:source_name "Obj"} {:array "$$Obj"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Obj != _value);
  requires {:source_name "Obj"} {:array "$$Obj"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Obj != _value);
  requires {:source_name "Obj"} {:array "$$Obj"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Obj(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Obj;



implementation {:inline 1} _LOG_ATOMIC_$$Obj(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Obj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Obj);
    return;
}



procedure _CHECK_ATOMIC_$$Obj(_P: bool, _offset: int);
  requires {:source_name "Obj"} {:array "$$Obj"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset);
  requires {:source_name "Obj"} {:array "$$Obj"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Obj(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Obj;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Obj(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Obj := (if _P && _WRITE_HAS_OCCURRED_$$Obj && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Obj);
    return;
}



const _WATCHED_VALUE_$$prof: int;

procedure {:inline 1} _LOG_READ_$$prof(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$prof;



implementation {:inline 1} _LOG_READ_$$prof(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$prof := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prof == _value then true else _READ_HAS_OCCURRED_$$prof);
    return;
}



procedure _CHECK_READ_$$prof(_P: bool, _offset: int, _value: int);
  requires {:source_name "prof"} {:array "$$prof"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$prof);
  requires {:source_name "prof"} {:array "$$prof"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$prof: bool;

procedure {:inline 1} _LOG_WRITE_$$prof(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$prof, _WRITE_READ_BENIGN_FLAG_$$prof;



implementation {:inline 1} _LOG_WRITE_$$prof(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$prof := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prof == _value then true else _WRITE_HAS_OCCURRED_$$prof);
    _WRITE_READ_BENIGN_FLAG_$$prof := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prof == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$prof);
    return;
}



procedure _CHECK_WRITE_$$prof(_P: bool, _offset: int, _value: int);
  requires {:source_name "prof"} {:array "$$prof"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prof != _value);
  requires {:source_name "prof"} {:array "$$prof"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prof != _value);
  requires {:source_name "prof"} {:array "$$prof"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$prof(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$prof;



implementation {:inline 1} _LOG_ATOMIC_$$prof(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$prof := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$prof);
    return;
}



procedure _CHECK_ATOMIC_$$prof(_P: bool, _offset: int);
  requires {:source_name "prof"} {:array "$$prof"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset);
  requires {:source_name "prof"} {:array "$$prof"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$prof(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$prof;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$prof(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$prof := (if _P && _WRITE_HAS_OCCURRED_$$prof && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$prof);
    return;
}



const _WATCHED_VALUE_$$A: int;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$u: int;

procedure {:inline 1} _LOG_READ_$$u(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$u;



implementation {:inline 1} _LOG_READ_$$u(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then true else _READ_HAS_OCCURRED_$$u);
    return;
}



procedure _CHECK_READ_$$u(_P: bool, _offset: int, _value: int);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$u);
  requires {:source_name "u"} {:array "$$u"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$u: bool;

procedure {:inline 1} _LOG_WRITE_$$u(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$u, _WRITE_READ_BENIGN_FLAG_$$u;



implementation {:inline 1} _LOG_WRITE_$$u(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then true else _WRITE_HAS_OCCURRED_$$u);
    _WRITE_READ_BENIGN_FLAG_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$u);
    return;
}



procedure _CHECK_WRITE_$$u(_P: bool, _offset: int, _value: int);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u != _value);
  requires {:source_name "u"} {:array "$$u"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u != _value);
  requires {:source_name "u"} {:array "$$u"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$u(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$u;



implementation {:inline 1} _LOG_ATOMIC_$$u(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$u);
    return;
}



procedure _CHECK_ATOMIC_$$u(_P: bool, _offset: int);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);
  requires {:source_name "u"} {:array "$$u"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$u;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$u := (if _P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$u);
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
