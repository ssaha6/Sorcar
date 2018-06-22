type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "T"} {:global} $$T: [int]int;

axiom {:array_info "$$T"} {:global} {:elem_width 32} {:source_name "T"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$T: bool;

var {:source_name "EG"} {:global} $$EG: [int]int;

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

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FEXP32(int) : int;

function FLOG32(int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSUB64(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "rdsmh_kernel"} {:kernel} $rdsmh_kernel($TCONV: int);
  requires !_READ_HAS_OCCURRED_$$T && !_WRITE_HAS_OCCURRED_$$T && !_ATOMIC_HAS_OCCURRED_$$T;
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
  modifies _WRITE_HAS_OCCURRED_$$EG, _WRITE_READ_BENIGN_FLAG_$$EG, _WRITE_READ_BENIGN_FLAG_$$EG;



implementation {:source_name "rdsmh_kernel"} {:kernel} $rdsmh_kernel($TCONV: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := $$T[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)];
    v0$2 := $$T[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)];
    v1$1 := FMUL32(v0$1, $TCONV);
    v1$2 := FMUL32(v0$2, $TCONV);
    v2$1 := FDIV32(1065353216, v1$1);
    v2$2 := FDIV32(1065353216, v1$2);
    v3$1 := FP64_CONV32(FSUB64(FP32_CONV64(FMUL32(FLOG32(v1$1), 1060205080)), 4607182418800017408));
    v3$2 := FP64_CONV32(FSUB64(FP32_CONV64(FMUL32(FLOG32(v1$2), 1060205080)), 4607182418800017408));
    v4$1 := FLT32(1148846080, v1$1);
    v4$2 := FLT32(1148846080, v1$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v4$1 then v4$1 else p0$1);
    p0$2 := (if v4$2 then v4$2 else p0$2);
    p1$1 := (if !v4$1 then !v4$1 else p1$1);
    p1$2 := (if !v4$2 then !v4$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$EG(p0$1, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079350779, v3$1), FADD32(FMUL32(1148029484, v2$1), -1068687590)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(646991001, v1$1), -1383882846), v1$1), 867353398), v1$1), -1211157120), v1$1)), 1069066811)), $$EG[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079350779, v3$2), FADD32(FMUL32(1148029484, v2$2), -1068687590)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(646991001, v1$2), -1383882846), v1$2), 867353398), v1$2), -1211157120), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079350779, v3$1), FADD32(FMUL32(1148029484, v2$1), -1068687590)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(646991001, v1$1), -1383882846), v1$1), 867353398), v1$1), -1211157120), v1$1)), 1069066811)) else $$EG[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    $$EG[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079350779, v3$2), FADD32(FMUL32(1148029484, v2$2), -1068687590)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(646991001, v1$2), -1383882846), v1$2), 867353398), v1$2), -1211157120), v1$2)), 1069066811)) else $$EG[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)]);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$EG(p0$1, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$1), FADD32(FMUL32(-960036014, v2$1), -1092308065)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(435218904, v1$1), -1595347542), v1$1), 658638728), v1$1), -1387590345), v1$1)), 1069066811)), $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$2), FADD32(FMUL32(-960036014, v2$2), -1092308065)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(435218904, v1$2), -1595347542), v1$2), 658638728), v1$2), -1387590345), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$1), FADD32(FMUL32(-960036014, v2$1), -1092308065)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(435218904, v1$1), -1595347542), v1$1), 658638728), v1$1), -1387590345), v1$1)), 1069066811)) else $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$2), FADD32(FMUL32(-960036014, v2$2), -1092308065)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(435218904, v1$2), -1595347542), v1$2), 658638728), v1$2), -1387590345), v1$2)), 1069066811)) else $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$EG(p0$1, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076130148, v3$1), FADD32(FMUL32(-958119128, v2$1), 1083775309)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(613260827, v1$1), -1419052349), v1$1), 837826839), v1$1), -1204531968), v1$1)), 1069066811)), $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076130148, v3$2), FADD32(FMUL32(-958119128, v2$2), 1083775309)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(613260827, v1$2), -1419052349), v1$2), 837826839), v1$2), -1204531968), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076130148, v3$1), FADD32(FMUL32(-958119128, v2$1), 1083775309)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(613260827, v1$1), -1419052349), v1$1), 837826839), v1$1), -1204531968), v1$1)), 1069066811)) else $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076130148, v3$2), FADD32(FMUL32(-958119128, v2$2), 1083775309)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(613260827, v1$2), -1419052349), v1$2), 837826839), v1$2), -1204531968), v1$2)), 1069066811)) else $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$EG(p0$1, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079121178, v3$1), FADD32(FMUL32(1149767334, v2$1), 1085178079)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499715232, v1$1), 765037349), v1$1), -1274567497), v1$1), 977429545), v1$1)), 1069066811)), $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079121178, v3$2), FADD32(FMUL32(1149767334, v2$2), 1085178079)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499715232, v1$2), 765037349), v1$2), -1274567497), v1$2), 977429545), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079121178, v3$1), FADD32(FMUL32(1149767334, v2$1), 1085178079)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499715232, v1$1), 765037349), v1$1), -1274567497), v1$1), 977429545), v1$1)), 1069066811)) else $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079121178, v3$2), FADD32(FMUL32(1149767334, v2$2), 1085178079)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499715232, v1$2), 765037349), v1$2), -1274567497), v1$2), 977429545), v1$2)), 1069066811)) else $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$EG(p0$1, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078325727, v3$1), FADD32(FMUL32(-982439293, v2$1), 1083130136)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(640234885, v1$1), -1392447951), v1$1), 850730152), v1$1), 965723263), v1$1)), 1069066811)), $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078325727, v3$2), FADD32(FMUL32(-982439293, v2$2), 1083130136)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(640234885, v1$2), -1392447951), v1$2), 850730152), v1$2), 965723263), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078325727, v3$1), FADD32(FMUL32(-982439293, v2$1), 1083130136)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(640234885, v1$1), -1392447951), v1$1), 850730152), v1$1), 965723263), v1$1)), 1069066811)) else $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078325727, v3$2), FADD32(FMUL32(-982439293, v2$2), 1083130136)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(640234885, v1$2), -1392447951), v1$2), 850730152), v1$2), 965723263), v1$2)), 1069066811)) else $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$EG(p0$1, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078078703, v3$1), FADD32(FMUL32(1189767320, v2$1), 1084157896)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645031735, v1$1), -1391574053), v1$1), -1293228745), v1$1), 982428320), v1$1)), 1069066811)), $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078078703, v3$2), FADD32(FMUL32(1189767320, v2$2), 1084157896)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645031735, v1$2), -1391574053), v1$2), -1293228745), v1$2), 982428320), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078078703, v3$1), FADD32(FMUL32(1189767320, v2$1), 1084157896)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645031735, v1$1), -1391574053), v1$1), -1293228745), v1$1), 982428320), v1$1)), 1069066811)) else $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078078703, v3$2), FADD32(FMUL32(1189767320, v2$2), 1084157896)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645031735, v1$2), -1391574053), v1$2), -1293228745), v1$2), 982428320), v1$2)), 1069066811)) else $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$EG(p0$1, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082166526, v3$1), FADD32(FMUL32(-1025526109, v2$1), 1081229085)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1508146375, v1$1), 757562537), v1$1), -1276982389), v1$1), 982698482), v1$1)), 1069066811)), $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082166526, v3$2), FADD32(FMUL32(-1025526109, v2$2), 1081229085)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1508146375, v1$2), 757562537), v1$2), -1276982389), v1$2), 982698482), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082166526, v3$1), FADD32(FMUL32(-1025526109, v2$1), 1081229085)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1508146375, v1$1), 757562537), v1$1), -1276982389), v1$1), 982698482), v1$1)), 1069066811)) else $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082166526, v3$2), FADD32(FMUL32(-1025526109, v2$2), 1081229085)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1508146375, v1$2), 757562537), v1$2), -1276982389), v1$2), 982698482), v1$2)), 1069066811)) else $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$EG(p0$1, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082476468, v3$1), FADD32(FMUL32(1183550355, v2$1), 1077584463)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1496353355, v1$1), 772278918), v1$1), -1263918534), v1$1), 992007666), v1$1)), 1069066811)), $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082476468, v3$2), FADD32(FMUL32(1183550355, v2$2), 1077584463)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1496353355, v1$2), 772278918), v1$2), -1263918534), v1$2), 992007666), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082476468, v3$1), FADD32(FMUL32(1183550355, v2$1), 1077584463)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1496353355, v1$1), 772278918), v1$1), -1263918534), v1$1), 992007666), v1$1)), 1069066811)) else $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082476468, v3$2), FADD32(FMUL32(1183550355, v2$2), 1077584463)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1496353355, v1$2), 772278918), v1$2), -1263918534), v1$2), 992007666), v1$2)), 1069066811)) else $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$EG(p0$1, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077426372, v3$1), FADD32(FMUL32(-947211720, v2$1), 1085244661)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645775828, v1$1), -1388341467), v1$1), 852413412), v1$1), 972981482), v1$1)), 1069066811)), $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077426372, v3$2), FADD32(FMUL32(-947211720, v2$2), 1085244661)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645775828, v1$2), -1388341467), v1$2), 852413412), v1$2), 972981482), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077426372, v3$1), FADD32(FMUL32(-947211720, v2$1), 1085244661)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645775828, v1$1), -1388341467), v1$1), 852413412), v1$1), 972981482), v1$1)), 1069066811)) else $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077426372, v3$2), FADD32(FMUL32(-947211720, v2$2), 1085244661)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(645775828, v1$2), -1388341467), v1$2), 852413412), v1$2), 972981482), v1$2)), 1069066811)) else $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$EG(p0$1, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077408070, v3$1), FADD32(FMUL32(-952846437, v2$1), 1086683754)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1501084256, v1$1), 767473328), v1$1), -1266932731), v1$1), 988782616), v1$1)), 1069066811)), $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077408070, v3$2), FADD32(FMUL32(-952846437, v2$2), 1086683754)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1501084256, v1$2), 767473328), v1$2), -1266932731), v1$2), 988782616), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077408070, v3$1), FADD32(FMUL32(-952846437, v2$1), 1086683754)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1501084256, v1$1), 767473328), v1$1), -1266932731), v1$1), 988782616), v1$1)), 1069066811)) else $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1077408070, v3$2), FADD32(FMUL32(-952846437, v2$2), 1086683754)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1501084256, v1$2), 767473328), v1$2), -1266932731), v1$2), 988782616), v1$2)), 1069066811)) else $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$EG(p0$1, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074966722, v3$1), FADD32(FMUL32(-951652864, v2$1), 1091175975)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493906788, v1$1), 773401095), v1$1), -1263270395), v1$1), 991465576), v1$1)), 1069066811)), $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074966722, v3$2), FADD32(FMUL32(-951652864, v2$2), 1091175975)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493906788, v1$2), 773401095), v1$2), -1263270395), v1$2), 991465576), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074966722, v3$1), FADD32(FMUL32(-951652864, v2$1), 1091175975)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493906788, v1$1), 773401095), v1$1), -1263270395), v1$1), 991465576), v1$1)), 1069066811)) else $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074966722, v3$2), FADD32(FMUL32(-951652864, v2$2), 1091175975)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493906788, v1$2), 773401095), v1$2), -1263270395), v1$2), 991465576), v1$2)), 1069066811)) else $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$EG(p0$1, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074940211, v3$1), FADD32(FMUL32(-964489429, v2$1), 1091022432)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490530461, v1$1), 777671195), v1$1), -1257921411), v1$1), 997014704), v1$1)), 1069066811)), $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074940211, v3$2), FADD32(FMUL32(-964489429, v2$2), 1091022432)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490530461, v1$2), 777671195), v1$2), -1257921411), v1$2), 997014704), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074940211, v3$1), FADD32(FMUL32(-964489429, v2$1), 1091022432)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490530461, v1$1), 777671195), v1$1), -1257921411), v1$1), 997014704), v1$1)), 1069066811)) else $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074940211, v3$2), FADD32(FMUL32(-964489429, v2$2), 1091022432)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490530461, v1$2), 777671195), v1$2), -1257921411), v1$2), 997014704), v1$2)), 1069066811)) else $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$EG(p0$1, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1033456574, v3$1), FADD32(FMUL32(1175712097, v2$1), 1100185505)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1481152003, v1$1), 786438779), v1$1), -1249886741), v1$1), 1004234164), v1$1)), 1069066811)), $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1033456574, v3$2), FADD32(FMUL32(1175712097, v2$2), 1100185505)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1481152003, v1$2), 786438779), v1$2), -1249886741), v1$2), 1004234164), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1033456574, v3$1), FADD32(FMUL32(1175712097, v2$1), 1100185505)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1481152003, v1$1), 786438779), v1$1), -1249886741), v1$1), 1004234164), v1$1)), 1069066811)) else $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1033456574, v3$2), FADD32(FMUL32(1175712097, v2$2), 1100185505)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1481152003, v1$2), 786438779), v1$2), -1249886741), v1$2), 1004234164), v1$2)), 1069066811)) else $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$EG(p0$1, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076741530, v3$1), FADD32(FMUL32(1180508029, v2$1), 1090138801)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500332449, v1$1), 766026098), v1$1), -1271742671), v1$1), 981937016), v1$1)), 1069066811)), $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076741530, v3$2), FADD32(FMUL32(1180508029, v2$2), 1090138801)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500332449, v1$2), 766026098), v1$2), -1271742671), v1$2), 981937016), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076741530, v3$1), FADD32(FMUL32(1180508029, v2$1), 1090138801)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500332449, v1$1), 766026098), v1$1), -1271742671), v1$1), 981937016), v1$1)), 1069066811)) else $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076741530, v3$2), FADD32(FMUL32(1180508029, v2$2), 1090138801)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500332449, v1$2), 766026098), v1$2), -1271742671), v1$2), 981937016), v1$2)), 1069066811)) else $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$EG(p0$1, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081532577, v3$1), FADD32(FMUL32(1195276074, v2$1), 1074881157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490414060, v1$1), 775937142), v1$1), -1262080609), v1$1), 990946924), v1$1)), 1069066811)), $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081532577, v3$2), FADD32(FMUL32(1195276074, v2$2), 1074881157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490414060, v1$2), 775937142), v1$2), -1262080609), v1$2), 990946924), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081532577, v3$1), FADD32(FMUL32(1195276074, v2$1), 1074881157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490414060, v1$1), 775937142), v1$1), -1262080609), v1$1), 990946924), v1$1)), 1069066811)) else $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081532577, v3$2), FADD32(FMUL32(1195276074, v2$2), 1074881157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1490414060, v1$2), 775937142), v1$2), -1262080609), v1$2), 990946924), v1$2)), 1069066811)) else $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$EG(p0$1, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076980558, v3$1), FADD32(FMUL32(-981811535, v2$1), 1092404741)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1488963714, v1$1), 777514521), v1$1), -1260499411), v1$1), 992112116), v1$1)), 1069066811)), $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076980558, v3$2), FADD32(FMUL32(-981811535, v2$2), 1092404741)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1488963714, v1$2), 777514521), v1$2), -1260499411), v1$2), 992112116), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076980558, v3$1), FADD32(FMUL32(-981811535, v2$1), 1092404741)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1488963714, v1$1), 777514521), v1$1), -1260499411), v1$1), 992112116), v1$1)), 1069066811)) else $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1076980558, v3$2), FADD32(FMUL32(-981811535, v2$2), 1092404741)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1488963714, v1$2), 777514521), v1$2), -1260499411), v1$2), 992112116), v1$2)), 1069066811)) else $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$EG(p0$1, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1071734347, v3$1), FADD32(FMUL32(1180348244, v2$1), 1096450125)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482737498, v1$1), 783838542), v1$1), -1253712642), v1$1), 999734170), v1$1)), 1069066811)), $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1071734347, v3$2), FADD32(FMUL32(1180348244, v2$2), 1096450125)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482737498, v1$2), 783838542), v1$2), -1253712642), v1$2), 999734170), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1071734347, v3$1), FADD32(FMUL32(1180348244, v2$1), 1096450125)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482737498, v1$1), 783838542), v1$1), -1253712642), v1$1), 999734170), v1$1)), 1069066811)) else $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1071734347, v3$2), FADD32(FMUL32(1180348244, v2$2), 1096450125)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482737498, v1$2), 783838542), v1$2), -1253712642), v1$2), 999734170), v1$2)), 1069066811)) else $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$EG(p0$1, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081169093, v3$1), FADD32(FMUL32(-1023432128, v2$1), 1077640744)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499972893, v1$1), 772837535), v1$1), -1259491215), v1$1), 998307700), v1$1)), 1069066811)), $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081169093, v3$2), FADD32(FMUL32(-1023432128, v2$2), 1077640744)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499972893, v1$2), 772837535), v1$2), -1259491215), v1$2), 998307700), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081169093, v3$1), FADD32(FMUL32(-1023432128, v2$1), 1077640744)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499972893, v1$1), 772837535), v1$1), -1259491215), v1$1), 998307700), v1$1)), 1069066811)) else $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081169093, v3$2), FADD32(FMUL32(-1023432128, v2$2), 1077640744)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499972893, v1$2), 772837535), v1$2), -1259491215), v1$2), 998307700), v1$2)), 1069066811)) else $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$EG(p0$1, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082439908, v3$1), FADD32(FMUL32(-959799296, v2$1), -1080198693)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493031407, v1$1), 774590194), v1$1), -1261153299), v1$1), 994269718), v1$1)), 1069066811)), $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082439908, v3$2), FADD32(FMUL32(-959799296, v2$2), -1080198693)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493031407, v1$2), 774590194), v1$2), -1261153299), v1$2), 994269718), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082439908, v3$1), FADD32(FMUL32(-959799296, v2$1), -1080198693)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493031407, v1$1), 774590194), v1$1), -1261153299), v1$1), 994269718), v1$1)), 1069066811)) else $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082439908, v3$2), FADD32(FMUL32(-959799296, v2$2), -1080198693)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1493031407, v1$2), 774590194), v1$2), -1261153299), v1$2), 994269718), v1$2)), 1069066811)) else $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$EG(p0$1, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082713512, v3$1), FADD32(FMUL32(-952320848, v2$1), 1059317395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1504278261, v1$1), 767206644), v1$1), -1265509403), v1$1), 991681170), v1$1)), 1069066811)), $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082713512, v3$2), FADD32(FMUL32(-952320848, v2$2), 1059317395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1504278261, v1$2), 767206644), v1$2), -1265509403), v1$2), 991681170), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082713512, v3$1), FADD32(FMUL32(-952320848, v2$1), 1059317395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1504278261, v1$1), 767206644), v1$1), -1265509403), v1$1), 991681170), v1$1)), 1069066811)) else $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082713512, v3$2), FADD32(FMUL32(-952320848, v2$2), 1059317395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1504278261, v1$2), 767206644), v1$2), -1265509403), v1$2), 991681170), v1$2)), 1069066811)) else $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$EG(p0$1, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078006274, v3$1), FADD32(FMUL32(-955829024, v2$1), 1090073026)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482988358, v1$1), 783973299), v1$1), -1252955488), v1$1), 1000947743), v1$1)), 1069066811)), $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078006274, v3$2), FADD32(FMUL32(-955829024, v2$2), 1090073026)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482988358, v1$2), 783973299), v1$2), -1252955488), v1$2), 1000947743), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078006274, v3$1), FADD32(FMUL32(-955829024, v2$1), 1090073026)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482988358, v1$1), 783973299), v1$1), -1252955488), v1$1), 1000947743), v1$1)), 1069066811)) else $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078006274, v3$2), FADD32(FMUL32(-955829024, v2$2), 1090073026)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482988358, v1$2), 783973299), v1$2), -1252955488), v1$2), 1000947743), v1$2)), 1069066811)) else $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$EG(p0$1, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073893285, v3$1), FADD32(FMUL32(-979738857, v2$1), 1092936395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1478331472, v1$1), 788980985), v1$1), -1248453094), v1$1), 1005581139), v1$1)), 1069066811)), $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073893285, v3$2), FADD32(FMUL32(-979738857, v2$2), 1092936395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1478331472, v1$2), 788980985), v1$2), -1248453094), v1$2), 1005581139), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073893285, v3$1), FADD32(FMUL32(-979738857, v2$1), 1092936395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1478331472, v1$1), 788980985), v1$1), -1248453094), v1$1), 1005581139), v1$1)), 1069066811)) else $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073893285, v3$2), FADD32(FMUL32(-979738857, v2$2), 1092936395)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1478331472, v1$2), 788980985), v1$2), -1248453094), v1$2), 1005581139), v1$2)), 1069066811)) else $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$EG(p0$1, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073361454, v3$1), FADD32(FMUL32(-968301036, v2$1), 1096246818)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1475950336, v1$1), 790662015), v1$1), -1246589366), v1$1), 1007584441), v1$1)), 1069066811)), $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073361454, v3$2), FADD32(FMUL32(-968301036, v2$2), 1096246818)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1475950336, v1$2), 790662015), v1$2), -1246589366), v1$2), 1007584441), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073361454, v3$1), FADD32(FMUL32(-968301036, v2$1), 1096246818)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1475950336, v1$1), 790662015), v1$1), -1246589366), v1$1), 1007584441), v1$1)), 1069066811)) else $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1073361454, v3$2), FADD32(FMUL32(-968301036, v2$2), 1096246818)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1475950336, v1$2), 790662015), v1$2), -1246589366), v1$2), 1007584441), v1$2)), 1069066811)) else $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$EG(p0$1, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065956202, v3$1), FADD32(FMUL32(1177717139, v2$1), 1097980299)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1473567825, v1$1), 793435891), v1$1), -1243593505), v1$1), 1009886542), v1$1)), 1069066811)), $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065956202, v3$2), FADD32(FMUL32(1177717139, v2$2), 1097980299)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1473567825, v1$2), 793435891), v1$2), -1243593505), v1$2), 1009886542), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065956202, v3$1), FADD32(FMUL32(1177717139, v2$1), 1097980299)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1473567825, v1$1), 793435891), v1$1), -1243593505), v1$1), 1009886542), v1$1)), 1069066811)) else $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065956202, v3$2), FADD32(FMUL32(1177717139, v2$2), 1097980299)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1473567825, v1$2), 793435891), v1$2), -1243593505), v1$2), 1009886542), v1$2)), 1069066811)) else $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$EG(p0$1, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085545027, v3$1), FADD32(FMUL32(-963182994, v2$1), -1065645729)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500784350, v1$1), 768726216), v1$1), -1265724299), v1$1), 990240337), v1$1)), 1069066811)), $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085545027, v3$2), FADD32(FMUL32(-963182994, v2$2), -1065645729)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500784350, v1$2), 768726216), v1$2), -1265724299), v1$2), 990240337), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085545027, v3$1), FADD32(FMUL32(-963182994, v2$1), -1065645729)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500784350, v1$1), 768726216), v1$1), -1265724299), v1$1), 990240337), v1$1)), 1069066811)) else $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085545027, v3$2), FADD32(FMUL32(-963182994, v2$2), -1065645729)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1500784350, v1$2), 768726216), v1$2), -1265724299), v1$2), 990240337), v1$2)), 1069066811)) else $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$EG(p0$1, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083202700, v3$1), FADD32(FMUL32(1173092461, v2$1), 1059183348)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1483788431, v1$1), 782840950), v1$1), -1254455009), v1$1), 999523283), v1$1)), 1069066811)), $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083202700, v3$2), FADD32(FMUL32(1173092461, v2$2), 1059183348)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1483788431, v1$2), 782840950), v1$2), -1254455009), v1$2), 999523283), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083202700, v3$1), FADD32(FMUL32(1173092461, v2$1), 1059183348)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1483788431, v1$1), 782840950), v1$1), -1254455009), v1$1), 999523283), v1$1)), 1069066811)) else $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083202700, v3$2), FADD32(FMUL32(1173092461, v2$2), 1059183348)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1483788431, v1$2), 782840950), v1$2), -1254455009), v1$2), 999523283), v1$2)), 1069066811)) else $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$EG(p0$1, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1086273712, v3$1), FADD32(FMUL32(-1007343312, v2$1), -1063188771)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499673490, v1$1), 773139872), v1$1), -1258979632), v1$1), 998585900), v1$1)), 1069066811)), $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1086273712, v3$2), FADD32(FMUL32(-1007343312, v2$2), -1063188771)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499673490, v1$2), 773139872), v1$2), -1258979632), v1$2), 998585900), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1086273712, v3$1), FADD32(FMUL32(-1007343312, v2$1), -1063188771)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499673490, v1$1), 773139872), v1$1), -1258979632), v1$1), 998585900), v1$1)), 1069066811)) else $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1086273712, v3$2), FADD32(FMUL32(-1007343312, v2$2), -1063188771)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1499673490, v1$2), 773139872), v1$2), -1258979632), v1$2), 998585900), v1$2)), 1069066811)) else $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$EG(p0$1, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085075066, v3$1), FADD32(FMUL32(1185972798, v2$1), -1067530933)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1491883555, v1$1), 779785842), v1$1), -1254288125), v1$1), 1002443283), v1$1)), 1069066811)), $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085075066, v3$2), FADD32(FMUL32(1185972798, v2$2), -1067530933)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1491883555, v1$2), 779785842), v1$2), -1254288125), v1$2), 1002443283), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085075066, v3$1), FADD32(FMUL32(1185972798, v2$1), -1067530933)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1491883555, v1$1), 779785842), v1$1), -1254288125), v1$1), 1002443283), v1$1)), 1069066811)) else $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1085075066, v3$2), FADD32(FMUL32(1185972798, v2$2), -1067530933)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1491883555, v1$2), 779785842), v1$2), -1254288125), v1$2), 1002443283), v1$2)), 1069066811)) else $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$EG(p0$1, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087374964, v3$1), FADD32(FMUL32(-964127514, v2$1), -1053564024)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482503939, v1$1), 785059534), v1$1), -1250031257), v1$1), 1005236807), v1$1)), 1069066811)), $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087374964, v3$2), FADD32(FMUL32(-964127514, v2$2), -1053564024)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482503939, v1$2), 785059534), v1$2), -1250031257), v1$2), 1005236807), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087374964, v3$1), FADD32(FMUL32(-964127514, v2$1), -1053564024)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482503939, v1$1), 785059534), v1$1), -1250031257), v1$1), 1005236807), v1$1)), 1069066811)) else $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087374964, v3$2), FADD32(FMUL32(-964127514, v2$2), -1053564024)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1482503939, v1$2), 785059534), v1$2), -1250031257), v1$2), 1005236807), v1$2)), 1069066811)) else $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$EG(p0$1, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087860390, v3$1), FADD32(FMUL32(1147593856, v2$1), -1051393157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492668134, v1$1), 780413285), v1$1), -1252166551), v1$1), 1005863452), v1$1)), 1069066811)), $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087860390, v3$2), FADD32(FMUL32(1147593856, v2$2), -1051393157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492668134, v1$2), 780413285), v1$2), -1252166551), v1$2), 1005863452), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087860390, v3$1), FADD32(FMUL32(1147593856, v2$1), -1051393157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492668134, v1$1), 780413285), v1$1), -1252166551), v1$1), 1005863452), v1$1)), 1069066811)) else $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1087860390, v3$2), FADD32(FMUL32(1147593856, v2$2), -1051393157)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492668134, v1$2), 780413285), v1$2), -1252166551), v1$2), 1005863452), v1$2)), 1069066811)) else $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$EG(p0$1, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1089910337, v3$1), FADD32(FMUL32(-973520438, v2$1), -1049084248)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492384632, v1$1), 780865823), v1$1), -1251222071), v1$1), 1006851190), v1$1)), 1069066811)), $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p0$2, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$EG(p0$2, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1089910337, v3$2), FADD32(FMUL32(-973520438, v2$2), -1049084248)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492384632, v1$2), 780865823), v1$2), -1251222071), v1$2), 1006851190), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p0$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1089910337, v3$1), FADD32(FMUL32(-973520438, v2$1), -1049084248)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492384632, v1$1), 780865823), v1$1), -1251222071), v1$1), 1006851190), v1$1)), 1069066811)) else $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p0$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1089910337, v3$2), FADD32(FMUL32(-973520438, v2$2), -1049084248)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1492384632, v1$2), 780865823), v1$2), -1251222071), v1$2), 1006851190), v1$2)), 1069066811)) else $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$EG(p1$1, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075186053, v3$1), FADD32(FMUL32(1147501530, v2$1), 1060035010)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1429234041, v1$1), 820436368), v1$1), -1235624956), v1$1), 998424763), v1$1)), 1069066811)), $$EG[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075186053, v3$2), FADD32(FMUL32(1147501530, v2$2), 1060035010)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1429234041, v1$2), 820436368), v1$2), -1235624956), v1$2), 998424763), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075186053, v3$1), FADD32(FMUL32(1147501530, v2$1), 1060035010)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1429234041, v1$1), 820436368), v1$1), -1235624956), v1$1), 998424763), v1$1)), 1069066811)) else $$EG[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    $$EG[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075186053, v3$2), FADD32(FMUL32(1147501530, v2$2), 1060035010)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1429234041, v1$2), 820436368), v1$2), -1235624956), v1$2), 998424763), v1$2)), 1069066811)) else $$EG[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)]);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$EG(p1$1, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$1), FADD32(FMUL32(-960036014, v2$1), -1092308067)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1704964134, v1$1), 543317057), v1$1), -1514159371), v1$1), 717654166), v1$1)), 1069066811)), $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$2), FADD32(FMUL32(-960036014, v2$2), -1092308067)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1704964134, v1$2), 543317057), v1$2), -1514159371), v1$2), 717654166), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$1), FADD32(FMUL32(-960036014, v2$1), -1092308067)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1704964134, v1$1), 543317057), v1$1), -1514159371), v1$1), 717654166), v1$1)), 1069066811)) else $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075838976, v3$2), FADD32(FMUL32(-960036014, v2$2), -1092308067)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1704964134, v1$2), 543317057), v1$2), -1514159371), v1$2), 717654166), v1$2)), 1069066811)) else $$EG[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$EG(p1$1, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078641891, v3$1), FADD32(FMUL32(-958167931, v2$1), 1073959649)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703454533, v1$1), -1341366436), v1$1), 898931283), v1$1), -1160320553), v1$1)), 1069066811)), $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078641891, v3$2), FADD32(FMUL32(-958167931, v2$2), 1073959649)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703454533, v1$2), -1341366436), v1$2), 898931283), v1$2), -1160320553), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078641891, v3$1), FADD32(FMUL32(-958167931, v2$1), 1073959649)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703454533, v1$1), -1341366436), v1$1), 898931283), v1$1), -1160320553), v1$1)), 1069066811)) else $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078641891, v3$2), FADD32(FMUL32(-958167931, v2$2), 1073959649)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703454533, v1$2), -1341366436), v1$2), 898931283), v1$2), -1160320553), v1$2)), 1069066811)) else $$EG[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$EG(p1$1, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081217988, v3$1), FADD32(FMUL32(1149566514, v2$1), 1080694620)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(708221709, v1$1), -1336032329), v1$1), 903628745), v1$1), -1161534245), v1$1)), 1069066811)), $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081217988, v3$2), FADD32(FMUL32(1149566514, v2$2), 1080694620)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(708221709, v1$2), -1336032329), v1$2), 903628745), v1$2), -1161534245), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081217988, v3$1), FADD32(FMUL32(1149566514, v2$1), 1080694620)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(708221709, v1$1), -1336032329), v1$1), 903628745), v1$1), -1161534245), v1$1)), 1069066811)) else $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081217988, v3$2), FADD32(FMUL32(1149566514, v2$2), 1080694620)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(708221709, v1$2), -1336032329), v1$2), 903628745), v1$2), -1161534245), v1$2)), 1069066811)) else $$EG[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$EG(p1$1, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082096942, v3$1), FADD32(FMUL32(-983436982, v2$1), -1110124833)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(697931246, v1$1), -1347301782), v1$1), 894343779), v1$1), -1164091540), v1$1)), 1069066811)), $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082096942, v3$2), FADD32(FMUL32(-983436982, v2$2), -1110124833)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(697931246, v1$2), -1347301782), v1$2), 894343779), v1$2), -1164091540), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082096942, v3$1), FADD32(FMUL32(-983436982, v2$1), -1110124833)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(697931246, v1$1), -1347301782), v1$1), 894343779), v1$1), -1164091540), v1$1)), 1069066811)) else $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082096942, v3$2), FADD32(FMUL32(-983436982, v2$2), -1110124833)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(697931246, v1$2), -1347301782), v1$2), 894343779), v1$2), -1164091540), v1$2)), 1069066811)) else $$EG[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$EG(p1$1, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082547011, v3$1), FADD32(FMUL32(1189915508, v2$1), -1084663251)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700940747, v1$1), -1342477414), v1$1), 898751459), v1$1), -1165658702), v1$1)), 1069066811)), $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082547011, v3$2), FADD32(FMUL32(1189915508, v2$2), -1084663251)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700940747, v1$2), -1342477414), v1$2), 898751459), v1$2), -1165658702), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082547011, v3$1), FADD32(FMUL32(1189915508, v2$1), -1084663251)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700940747, v1$1), -1342477414), v1$1), 898751459), v1$1), -1165658702), v1$1)), 1069066811)) else $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082547011, v3$2), FADD32(FMUL32(1189915508, v2$2), -1084663251)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700940747, v1$2), -1342477414), v1$2), 898751459), v1$2), -1165658702), v1$2)), 1069066811)) else $$EG[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$EG(p1$1, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082763348, v3$1), FADD32(FMUL32(-1013749906, v2$1), 1080942028)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721602269, v1$1), -1324677744), v1$1), 913090246), v1$1), -1155817853), v1$1)), 1069066811)), $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082763348, v3$2), FADD32(FMUL32(-1013749906, v2$2), 1080942028)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721602269, v1$2), -1324677744), v1$2), 913090246), v1$2), -1155817853), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082763348, v3$1), FADD32(FMUL32(-1013749906, v2$1), 1080942028)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721602269, v1$1), -1324677744), v1$1), 913090246), v1$1), -1155817853), v1$1)), 1069066811)) else $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082763348, v3$2), FADD32(FMUL32(-1013749906, v2$2), 1080942028)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721602269, v1$2), -1324677744), v1$2), 913090246), v1$2), -1155817853), v1$2)), 1069066811)) else $$EG[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$EG(p1$1, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082709482, v3$1), FADD32(FMUL32(1183468842, v2$1), 1079760863)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(720552547, v1$1), -1325981524), v1$1), 909846893), v1$1), -1181856718), v1$1)), 1069066811)), $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082709482, v3$2), FADD32(FMUL32(1183468842, v2$2), 1079760863)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(720552547, v1$2), -1325981524), v1$2), 909846893), v1$2), -1181856718), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082709482, v3$1), FADD32(FMUL32(1183468842, v2$1), 1079760863)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(720552547, v1$1), -1325981524), v1$1), 909846893), v1$1), -1181856718), v1$1)), 1069066811)) else $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082709482, v3$2), FADD32(FMUL32(1183468842, v2$2), 1079760863)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(720552547, v1$2), -1325981524), v1$2), 909846893), v1$2), -1181856718), v1$2)), 1069066811)) else $$EG[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$EG(p1$1, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079990568, v3$1), FADD32(FMUL32(-947239258, v2$1), 1074094192)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1449242674, v1$1), 798023260), v1$1), -1265164070), v1$1), 959039608), v1$1)), 1069066811)), $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079990568, v3$2), FADD32(FMUL32(-947239258, v2$2), 1074094192)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1449242674, v1$2), 798023260), v1$2), -1265164070), v1$2), 959039608), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079990568, v3$1), FADD32(FMUL32(-947239258, v2$1), 1074094192)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1449242674, v1$1), 798023260), v1$1), -1265164070), v1$1), 959039608), v1$1)), 1069066811)) else $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079990568, v3$2), FADD32(FMUL32(-947239258, v2$2), 1074094192)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1449242674, v1$2), 798023260), v1$2), -1265164070), v1$2), 959039608), v1$2)), 1069066811)) else $$EG[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$EG(p1$1, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081135034, v3$1), FADD32(FMUL32(-952912886, v2$1), 1070072075)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700316797, v1$1), -1347392520), v1$1), 888804690), v1$1), 972946409), v1$1)), 1069066811)), $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081135034, v3$2), FADD32(FMUL32(-952912886, v2$2), 1070072075)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700316797, v1$2), -1347392520), v1$2), 888804690), v1$2), 972946409), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081135034, v3$1), FADD32(FMUL32(-952912886, v2$1), 1070072075)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700316797, v1$1), -1347392520), v1$1), 888804690), v1$1), 972946409), v1$1)), 1069066811)) else $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081135034, v3$2), FADD32(FMUL32(-952912886, v2$2), 1070072075)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(700316797, v1$2), -1347392520), v1$2), 888804690), v1$2), 972946409), v1$2)), 1069066811)) else $$EG[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$EG(p1$1, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082546935, v3$1), FADD32(FMUL32(-951762735, v2$1), -1086003973)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(702203753, v1$1), -1340525623), v1$1), 901262098), v1$1), -1164240589), v1$1)), 1069066811)), $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082546935, v3$2), FADD32(FMUL32(-951762735, v2$2), -1086003973)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(702203753, v1$2), -1340525623), v1$2), 901262098), v1$2), -1164240589), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082546935, v3$1), FADD32(FMUL32(-951762735, v2$1), -1086003973)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(702203753, v1$1), -1340525623), v1$1), 901262098), v1$1), -1164240589), v1$1)), 1069066811)) else $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082546935, v3$2), FADD32(FMUL32(-951762735, v2$2), -1086003973)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(702203753, v1$2), -1340525623), v1$2), 901262098), v1$2), -1164240589), v1$2)), 1069066811)) else $$EG[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$EG(p1$1, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080761371, v3$1), FADD32(FMUL32(-964658689, v2$1), 1070424669)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(705639641, v1$1), -1340250882), v1$1), 897593037), v1$1), 981715500), v1$1)), 1069066811)), $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080761371, v3$2), FADD32(FMUL32(-964658689, v2$2), 1070424669)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(705639641, v1$2), -1340250882), v1$2), 897593037), v1$2), 981715500), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080761371, v3$1), FADD32(FMUL32(-964658689, v2$1), 1070424669)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(705639641, v1$1), -1340250882), v1$1), 897593037), v1$1), 981715500), v1$1)), 1069066811)) else $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080761371, v3$2), FADD32(FMUL32(-964658689, v2$2), 1070424669)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(705639641, v1$2), -1340250882), v1$2), 897593037), v1$2), 981715500), v1$2)), 1069066811)) else $$EG[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$EG(p1$1, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1084541897, v3$1), FADD32(FMUL32(1176509079, v2$1), -1064008305)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(728406484, v1$1), -1316303862), v1$1), 923370613), v1$1), -1142948802), v1$1)), 1069066811)), $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1084541897, v3$2), FADD32(FMUL32(1176509079, v2$2), -1064008305)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(728406484, v1$2), -1316303862), v1$2), 923370613), v1$2), -1142948802), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1084541897, v3$1), FADD32(FMUL32(1176509079, v2$1), -1064008305)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(728406484, v1$1), -1316303862), v1$1), 923370613), v1$1), -1142948802), v1$1)), 1069066811)) else $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1084541897, v3$2), FADD32(FMUL32(1176509079, v2$2), -1064008305)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(728406484, v1$2), -1316303862), v1$2), 923370613), v1$2), -1142948802), v1$2)), 1069066811)) else $$EG[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$EG(p1$1, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080366868, v3$1), FADD32(FMUL32(1180704856, v2$1), 1080068551)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1454659450, v1$1), 782644713), v1$1), 875951949), v1$1), -1180696540), v1$1)), 1069066811)), $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080366868, v3$2), FADD32(FMUL32(1180704856, v2$2), 1080068551)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1454659450, v1$2), 782644713), v1$2), 875951949), v1$2), -1180696540), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080366868, v3$1), FADD32(FMUL32(1180704856, v2$1), 1080068551)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1454659450, v1$1), 782644713), v1$1), 875951949), v1$1), -1180696540), v1$1)), 1069066811)) else $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1080366868, v3$2), FADD32(FMUL32(1180704856, v2$2), 1080068551)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1454659450, v1$2), 782644713), v1$2), 875951949), v1$2), -1180696540), v1$2)), 1069066811)) else $$EG[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$EG(p1$1, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075238241, v3$1), FADD32(FMUL32(1195176952, v2$1), 1092512438)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1476301092, v1$1), 794907488), v1$1), -1247847947), v1$1), 999502881), v1$1)), 1069066811)), $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075238241, v3$2), FADD32(FMUL32(1195176952, v2$2), 1092512438)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1476301092, v1$2), 794907488), v1$2), -1247847947), v1$2), 999502881), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075238241, v3$1), FADD32(FMUL32(1195176952, v2$1), 1092512438)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1476301092, v1$1), 794907488), v1$1), -1247847947), v1$1), 999502881), v1$1)), 1069066811)) else $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1075238241, v3$2), FADD32(FMUL32(1195176952, v2$2), 1092512438)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1476301092, v1$2), 794907488), v1$2), -1247847947), v1$2), 999502881), v1$2)), 1069066811)) else $$EG[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$EG(p1$1, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082594292, v3$1), FADD32(FMUL32(-982517494, v2$1), 1079590246)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(712257711, v1$1), -1332183485), v1$1), 907681862), v1$1), -1160472567), v1$1)), 1069066811)), $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082594292, v3$2), FADD32(FMUL32(-982517494, v2$2), 1079590246)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(712257711, v1$2), -1332183485), v1$2), 907681862), v1$2), -1160472567), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082594292, v3$1), FADD32(FMUL32(-982517494, v2$1), 1079590246)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(712257711, v1$1), -1332183485), v1$1), 907681862), v1$1), -1160472567), v1$1)), 1069066811)) else $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082594292, v3$2), FADD32(FMUL32(-982517494, v2$2), 1079590246)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(712257711, v1$2), -1332183485), v1$2), 907681862), v1$2), -1160472567), v1$2)), 1069066811)) else $$EG[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$EG(p1$1, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083794990, v3$1), FADD32(FMUL32(1180668884, v2$1), 1058689522)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(725185562, v1$1), -1319554097), v1$1), 919648322), v1$1), -1146988912), v1$1)), 1069066811)), $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083794990, v3$2), FADD32(FMUL32(1180668884, v2$2), 1058689522)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(725185562, v1$2), -1319554097), v1$2), 919648322), v1$2), -1146988912), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083794990, v3$1), FADD32(FMUL32(1180668884, v2$1), 1058689522)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(725185562, v1$1), -1319554097), v1$1), 919648322), v1$1), -1146988912), v1$1)), 1069066811)) else $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083794990, v3$2), FADD32(FMUL32(1180668884, v2$2), 1058689522)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(725185562, v1$2), -1319554097), v1$2), 919648322), v1$2), -1146988912), v1$2)), 1069066811)) else $$EG[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$EG(p1$1, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074187276, v3$1), FADD32(FMUL32(-998988168, v2$1), 1095921489)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703181155, v1$1), -1339490582), v1$1), 896456405), v1$1), 996964656), v1$1)), 1069066811)), $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074187276, v3$2), FADD32(FMUL32(-998988168, v2$2), 1095921489)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703181155, v1$2), -1339490582), v1$2), 896456405), v1$2), 996964656), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074187276, v3$1), FADD32(FMUL32(-998988168, v2$1), 1095921489)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703181155, v1$1), -1339490582), v1$1), 896456405), v1$1), 996964656), v1$1)), 1069066811)) else $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074187276, v3$2), FADD32(FMUL32(-998988168, v2$2), 1095921489)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(703181155, v1$2), -1339490582), v1$2), 896456405), v1$2), 996964656), v1$2)), 1069066811)) else $$EG[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$EG(p1$1, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1062143417, v3$1), FADD32(FMUL32(-959546890, v2$1), 1096747272)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1427159497, v1$1), 824209096), v1$1), -1228496799), v1$1), 1010786496), v1$1)), 1069066811)), $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1062143417, v3$2), FADD32(FMUL32(-959546890, v2$2), 1096747272)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1427159497, v1$2), 824209096), v1$2), -1228496799), v1$2), 1010786496), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1062143417, v3$1), FADD32(FMUL32(-959546890, v2$1), 1096747272)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1427159497, v1$1), 824209096), v1$1), -1228496799), v1$1), 1010786496), v1$1)), 1069066811)) else $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1062143417, v3$2), FADD32(FMUL32(-959546890, v2$2), 1096747272)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1427159497, v1$2), 824209096), v1$2), -1228496799), v1$2), 1010786496), v1$2)), 1069066811)) else $$EG[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$EG(p1$1, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079117027, v3$1), FADD32(FMUL32(-952242741, v2$1), 1086157784)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(693967467, v1$1), -1361194775), v1$1), -1261079553), v1$1), 996449011), v1$1)), 1069066811)), $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079117027, v3$2), FADD32(FMUL32(-952242741, v2$2), 1086157784)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(693967467, v1$2), -1361194775), v1$2), -1261079553), v1$2), 996449011), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079117027, v3$1), FADD32(FMUL32(-952242741, v2$1), 1086157784)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(693967467, v1$1), -1361194775), v1$1), -1261079553), v1$1), 996449011), v1$1)), 1069066811)) else $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079117027, v3$2), FADD32(FMUL32(-952242741, v2$2), 1086157784)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(693967467, v1$2), -1361194775), v1$2), -1261079553), v1$2), 996449011), v1$2)), 1069066811)) else $$EG[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$EG(p1$1, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078827277, v3$1), FADD32(FMUL32(-955765799, v2$1), 1091054380)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(726603952, v1$1), -1320365774), v1$1), 915469789), v1$1), 977701881), v1$1)), 1069066811)), $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078827277, v3$2), FADD32(FMUL32(-955765799, v2$2), 1091054380)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(726603952, v1$2), -1320365774), v1$2), 915469789), v1$2), 977701881), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078827277, v3$1), FADD32(FMUL32(-955765799, v2$1), 1091054380)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(726603952, v1$1), -1320365774), v1$1), 915469789), v1$1), 977701881), v1$1)), 1069066811)) else $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1078827277, v3$2), FADD32(FMUL32(-955765799, v2$2), 1091054380)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(726603952, v1$2), -1320365774), v1$2), 915469789), v1$2), 977701881), v1$2)), 1069066811)) else $$EG[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 56} _LOG_WRITE_$$EG(p1$1, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081959311, v3$1), FADD32(FMUL32(-979431883, v2$1), 1082334550)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733866508, v1$1), -1312422402), v1$1), 924821780), v1$1), -1149758939), v1$1)), 1069066811)), $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 56} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081959311, v3$2), FADD32(FMUL32(-979431883, v2$2), 1082334550)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733866508, v1$2), -1312422402), v1$2), 924821780), v1$2), -1149758939), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081959311, v3$1), FADD32(FMUL32(-979431883, v2$1), 1082334550)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733866508, v1$1), -1312422402), v1$1), 924821780), v1$1), -1149758939), v1$1)), 1069066811)) else $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1081959311, v3$2), FADD32(FMUL32(-979431883, v2$2), 1082334550)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733866508, v1$2), -1312422402), v1$2), 924821780), v1$2), -1149758939), v1$2)), 1069066811)) else $$EG[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$EG(p1$1, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082773137, v3$1), FADD32(FMUL32(-968317310, v2$1), 1083613557)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(732050640, v1$1), -1314157454), v1$1), 923468510), v1$1), -1157025881), v1$1)), 1069066811)), $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082773137, v3$2), FADD32(FMUL32(-968317310, v2$2), 1083613557)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(732050640, v1$2), -1314157454), v1$2), 923468510), v1$2), -1157025881), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082773137, v3$1), FADD32(FMUL32(-968317310, v2$1), 1083613557)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(732050640, v1$1), -1314157454), v1$1), 923468510), v1$1), -1157025881), v1$1)), 1069066811)) else $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082773137, v3$2), FADD32(FMUL32(-968317310, v2$2), 1083613557)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(732050640, v1$2), -1314157454), v1$2), 923468510), v1$2), -1157025881), v1$2)), 1069066811)) else $$EG[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$EG(p1$1, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082741594, v3$1), FADD32(FMUL32(1177815250, v2$1), 1076538683)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733811232, v1$1), -1312105695), v1$1), 925343095), v1$1), -1154202039), v1$1)), 1069066811)), $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082741594, v3$2), FADD32(FMUL32(1177815250, v2$2), 1076538683)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733811232, v1$2), -1312105695), v1$2), 925343095), v1$2), -1154202039), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082741594, v3$1), FADD32(FMUL32(1177815250, v2$1), 1076538683)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733811232, v1$1), -1312105695), v1$1), 925343095), v1$1), -1154202039), v1$1)), 1069066811)) else $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1082741594, v3$2), FADD32(FMUL32(1177815250, v2$2), 1076538683)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(733811232, v1$2), -1312105695), v1$2), 925343095), v1$2), -1154202039), v1$2)), 1069066811)) else $$EG[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 59} _LOG_WRITE_$$EG(p1$1, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074797620, v3$1), FADD32(FMUL32(-962808090, v2$1), 1095227583)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1433494568, v1$1), 818273552), v1$1), -1232817177), v1$1), 1007722819), v1$1)), 1069066811)), $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 59} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074797620, v3$2), FADD32(FMUL32(-962808090, v2$2), 1095227583)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1433494568, v1$2), 818273552), v1$2), -1232817177), v1$2), 1007722819), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074797620, v3$1), FADD32(FMUL32(-962808090, v2$1), 1095227583)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1433494568, v1$1), 818273552), v1$1), -1232817177), v1$1), 1007722819), v1$1)), 1069066811)) else $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074797620, v3$2), FADD32(FMUL32(-962808090, v2$2), 1095227583)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1433494568, v1$2), 818273552), v1$2), -1232817177), v1$2), 1007722819), v1$2)), 1069066811)) else $$EG[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$EG(p1$1, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074311563, v3$1), FADD32(FMUL32(1172051800, v2$1), 1094939467)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1444752844, v1$1), 810944935), v1$1), -1237152107), v1$1), 1007971847), v1$1)), 1069066811)), $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074311563, v3$2), FADD32(FMUL32(1172051800, v2$2), 1094939467)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1444752844, v1$2), 810944935), v1$2), -1237152107), v1$2), 1007971847), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074311563, v3$1), FADD32(FMUL32(1172051800, v2$1), 1094939467)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1444752844, v1$1), 810944935), v1$1), -1237152107), v1$1), 1007971847), v1$1)), 1069066811)) else $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1074311563, v3$2), FADD32(FMUL32(1172051800, v2$2), 1094939467)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(-1444752844, v1$2), 810944935), v1$2), -1237152107), v1$2), 1007971847), v1$2)), 1069066811)) else $$EG[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$EG(p1$1, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079651860, v3$1), FADD32(FMUL32(-994169024, v2$1), 1092166828)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(706833248, v1$1), 807664224), v1$1), 883507061), v1$1), 1001386200), v1$1)), 1069066811)), $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079651860, v3$2), FADD32(FMUL32(-994169024, v2$2), 1092166828)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(706833248, v1$2), 807664224), v1$2), 883507061), v1$2), 1001386200), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079651860, v3$1), FADD32(FMUL32(-994169024, v2$1), 1092166828)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(706833248, v1$1), 807664224), v1$1), 883507061), v1$1), 1001386200), v1$1)), 1069066811)) else $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1079651860, v3$2), FADD32(FMUL32(-994169024, v2$2), 1092166828)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(706833248, v1$2), 807664224), v1$2), 883507061), v1$2), 1001386200), v1$2)), 1069066811)) else $$EG[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 62} _LOG_WRITE_$$EG(p1$1, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083660219, v3$1), FADD32(FMUL32(1185450434, v2$1), 1082346472)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(731534228, v1$1), -1314617957), v1$1), 923069138), v1$1), -1160690062), v1$1)), 1069066811)), $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 62} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083660219, v3$2), FADD32(FMUL32(1185450434, v2$2), 1082346472)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(731534228, v1$2), -1314617957), v1$2), 923069138), v1$2), -1160690062), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083660219, v3$1), FADD32(FMUL32(1185450434, v2$1), 1082346472)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(731534228, v1$1), -1314617957), v1$1), 923069138), v1$1), -1160690062), v1$1)), 1069066811)) else $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1083660219, v3$2), FADD32(FMUL32(1185450434, v2$2), 1082346472)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(731534228, v1$2), -1314617957), v1$2), 923069138), v1$2), -1160690062), v1$2)), 1069066811)) else $$EG[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 63} _LOG_WRITE_$$EG(p1$1, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1068399820, v3$1), FADD32(FMUL32(-963224766, v2$1), 1099522750)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(727647562, v1$1), -1321270333), v1$1), 906741498), v1$1), 1008881816), v1$1)), 1069066811)), $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 63} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1068399820, v3$2), FADD32(FMUL32(-963224766, v2$2), 1099522750)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(727647562, v1$2), -1321270333), v1$2), 906741498), v1$2), 1008881816), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1068399820, v3$1), FADD32(FMUL32(-963224766, v2$1), 1099522750)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(727647562, v1$1), -1321270333), v1$1), 906741498), v1$1), 1008881816), v1$1)), 1069066811)) else $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1068399820, v3$2), FADD32(FMUL32(-963224766, v2$2), 1099522750)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(727647562, v1$2), -1321270333), v1$2), 906741498), v1$2), 1008881816), v1$2)), 1069066811)) else $$EG[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$EG(p1$1, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1069491375, v3$1), FADD32(FMUL32(-997827985, v2$1), 1098983848)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(717847521, v1$1), -1329650428), v1$1), 893959259), v1$1), 1009478472), v1$1)), 1069066811)), $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1069491375, v3$2), FADD32(FMUL32(-997827985, v2$2), 1098983848)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(717847521, v1$2), -1329650428), v1$2), 893959259), v1$2), 1009478472), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1069491375, v3$1), FADD32(FMUL32(-997827985, v2$1), 1098983848)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(717847521, v1$1), -1329650428), v1$1), 893959259), v1$1), 1009478472), v1$1)), 1069066811)) else $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1069491375, v3$2), FADD32(FMUL32(-997827985, v2$2), 1098983848)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(717847521, v1$2), -1329650428), v1$2), 893959259), v1$2), 1009478472), v1$2)), 1069066811)) else $$EG[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$EG(p1$1, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065765242, v3$1), FADD32(FMUL32(-970907294, v2$1), 1101600409)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721675843, v1$1), -1327469175), v1$1), 886220709), v1$1), 1012207813), v1$1)), 1069066811)), $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$EG(p1$2, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$EG(p1$2, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065765242, v3$2), FADD32(FMUL32(-970907294, v2$2), 1101600409)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721675843, v1$2), -1327469175), v1$2), 886220709), v1$2), 1012207813), v1$2)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$EG"} true;
    $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := (if p1$1 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065765242, v3$1), FADD32(FMUL32(-970907294, v2$1), 1101600409)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721675843, v1$1), -1327469175), v1$1), 886220709), v1$1), 1012207813), v1$1)), 1069066811)) else $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := (if p1$2 then FEXP32(FMUL32(FADD32(FADD32(FMUL32(1065765242, v3$2), FADD32(FMUL32(-970907294, v2$2), 1101600409)), FMUL32(FADD32(FMUL32(FADD32(FMUL32(FADD32(FMUL32(721675843, v1$2), -1327469175), v1$2), 886220709), v1$2), 1012207813), v1$2)), 1069066811)) else $$EG[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
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
