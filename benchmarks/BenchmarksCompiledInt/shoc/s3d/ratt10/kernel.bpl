type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$T"} {:global} {:elem_width 32} {:source_name "T"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$T: bool;

var {:source_name "RKLOW"} {:global} $$RKLOW: [int]int;

axiom {:array_info "$$RKLOW"} {:global} {:elem_width 32} {:source_name "RKLOW"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RKLOW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RKLOW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RKLOW: bool;

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

function FMUL32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "ratt10_kernel"} {:kernel} $ratt10_kernel($TCONV: int);
  requires !_READ_HAS_OCCURRED_$$T && !_WRITE_HAS_OCCURRED_$$T && !_ATOMIC_HAS_OCCURRED_$$T;
  requires !_READ_HAS_OCCURRED_$$RKLOW && !_WRITE_HAS_OCCURRED_$$RKLOW && !_ATOMIC_HAS_OCCURRED_$$RKLOW;
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
  modifies _WRITE_HAS_OCCURRED_$$RKLOW, _WRITE_READ_BENIGN_FLAG_$$RKLOW, _WRITE_READ_BENIGN_FLAG_$$RKLOW;



implementation {:source_name "ratt10_kernel"} {:kernel} $ratt10_kernel($TCONV: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;


  $0:
    havoc v0$1, v0$2;
    v1$1 := FMUL32(v0$1, $TCONV);
    v1$2 := FMUL32(v0$2, $TCONV);
    v2$1 := FMUL32(FLOG32(v1$1), 1060205080);
    v2$2 := FMUL32(FLOG32(v1$2), 1060205080);
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$RKLOW(true, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), FEXP32(FMUL32(FADD32(FMUL32(1146478073, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1083808154, v2$1), 1109990950)), 1069066811)), $$RKLOW[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), FEXP32(FMUL32(FADD32(FMUL32(1146478073, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1083808154, v2$2), 1109990950)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] := FEXP32(FMUL32(FADD32(FMUL32(1146478073, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1083808154, v2$1), 1109990950)), 1069066811));
    $$RKLOW[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] := FEXP32(FMUL32(FADD32(FMUL32(1146478073, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1083808154, v2$2), 1109990950)), 1069066811));
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$RKLOW(true, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-953823661, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1067785912, v2$1), 1115630636)), 1069066811)), $$RKLOW[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-953823661, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1067785912, v2$2), 1115630636)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-953823661, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1067785912, v2$1), 1115630636)), 1069066811));
    $$RKLOW[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-953823661, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1067785912, v2$2), 1115630636)), 1069066811));
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$RKLOW(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-999059825, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1066443735, v2$1), 1115876481)), 1069066811)), $$RKLOW[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-999059825, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1066443735, v2$2), 1115876481)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-999059825, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1066443735, v2$1), 1115876481)), 1069066811));
    $$RKLOW[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-999059825, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1066443735, v2$2), 1115876481)), 1069066811));
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$RKLOW(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1003272868, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1071351071, v2$1), 1113472931)), 1069066811)), $$RKLOW[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1003272868, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1071351071, v2$2), 1113472931)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1003272868, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1071351071, v2$1), 1113472931)), 1069066811));
    $$RKLOW[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1003272868, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1071351071, v2$2), 1113472931)), 1069066811));
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$RKLOW(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1004880585, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1068960317, v2$1), 1115510000)), 1069066811)), $$RKLOW[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1004880585, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1068960317, v2$2), 1115510000)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1004880585, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1068960317, v2$1), 1115510000)), 1069066811));
    $$RKLOW[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1004880585, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1068960317, v2$2), 1115510000)), 1069066811));
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$RKLOW(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-983620312, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1063025377, v2$1), 1117385503)), 1069066811)), $$RKLOW[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-983620312, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1063025377, v2$2), 1117385503)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-983620312, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1063025377, v2$1), 1117385503)), 1069066811));
    $$RKLOW[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-983620312, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1063025377, v2$2), 1117385503)), 1069066811));
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$RKLOW(true, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-986784216, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1063675494, v2$1), 1116453734)), 1069066811)), $$RKLOW[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-986784216, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1063675494, v2$2), 1116453734)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-986784216, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1063675494, v2$1), 1116453734)), 1069066811));
    $$RKLOW[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-986784216, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1063675494, v2$2), 1116453734)), 1069066811));
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$RKLOW(true, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-996574424, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1063759380, v2$1), 1117374691)), 1069066811)), $$RKLOW[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-996574424, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1063759380, v2$2), 1117374691)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-996574424, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1063759380, v2$1), 1117374691)), 1069066811));
    $$RKLOW[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-996574424, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1063759380, v2$2), 1117374691)), 1069066811));
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$RKLOW(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-987732357, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1055299469, v2$1), 1121886214)), 1069066811)), $$RKLOW[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-987732357, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1055299469, v2$2), 1121886214)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-987732357, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1055299469, v2$1), 1121886214)), 1069066811));
    $$RKLOW[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-987732357, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1055299469, v2$2), 1121886214)), 1069066811));
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$RKLOW(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-985423841, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1055213486, v2$1), 1122461317)), 1069066811)), $$RKLOW[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-985423841, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1055213486, v2$2), 1122461317)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-985423841, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1055213486, v2$1), 1122461317)), 1069066811));
    $$RKLOW[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-985423841, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1055213486, v2$2), 1122461317)), 1069066811));
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$RKLOW(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-960273475, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1088170230, v2$1), 1108196685)), 1069066811)), $$RKLOW[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-960273475, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1088170230, v2$2), 1108196685)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-960273475, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1088170230, v2$1), 1108196685)), 1069066811));
    $$RKLOW[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-960273475, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1088170230, v2$2), 1108196685)), 1069066811));
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$RKLOW(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-963855098, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1067869798, v2$1), 1115452016)), 1069066811)), $$RKLOW[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-963855098, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1067869798, v2$2), 1115452016)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-963855098, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1067869798, v2$1), 1115452016)), 1069066811));
    $$RKLOW[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-963855098, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1067869798, v2$2), 1115452016)), 1069066811));
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$RKLOW(true, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-977591750, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1057719583, v2$1), 1119845219)), 1069066811)), $$RKLOW[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-977591750, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1057719583, v2$2), 1119845219)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-977591750, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1057719583, v2$1), 1119845219)), 1069066811));
    $$RKLOW[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-977591750, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1057719583, v2$2), 1119845219)), 1069066811));
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$RKLOW(true, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-992946755, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1065940419, v2$1), 1116394491)), 1069066811)), $$RKLOW[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-992946755, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1065940419, v2$2), 1116394491)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-992946755, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1065940419, v2$1), 1116394491)), 1069066811));
    $$RKLOW[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-992946755, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1065940419, v2$2), 1116394491)), 1069066811));
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$RKLOW(true, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-979787108, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1052833219, v2$1), 1124532326)), 1069066811)), $$RKLOW[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-979787108, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1052833219, v2$2), 1124532326)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-979787108, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1052833219, v2$1), 1124532326)), 1069066811));
    $$RKLOW[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-979787108, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1052833219, v2$2), 1124532326)), 1069066811));
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$RKLOW(true, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-988556827, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1058438906, v2$1), 1119282722)), 1069066811)), $$RKLOW[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-988556827, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1058438906, v2$2), 1119282722)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-988556827, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1058438906, v2$1), 1119282722)), 1069066811));
    $$RKLOW[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-988556827, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1058438906, v2$2), 1119282722)), 1069066811));
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$RKLOW(true, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-951825609, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1055590973, v2$1), 1122641532)), 1069066811)), $$RKLOW[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-951825609, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1055590973, v2$2), 1122641532)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-951825609, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1055590973, v2$1), 1122641532)), 1069066811));
    $$RKLOW[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-951825609, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1055590973, v2$2), 1122641532)), 1069066811));
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$RKLOW(true, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-983877959, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1057761526, v2$1), 1119995939)), 1069066811)), $$RKLOW[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-983877959, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1057761526, v2$2), 1119995939)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-983877959, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1057761526, v2$1), 1119995939)), 1069066811));
    $$RKLOW[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-983877959, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1057761526, v2$2), 1119995939)), 1069066811));
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$RKLOW(true, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-984465394, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1058893988, v2$1), 1119760433)), 1069066811)), $$RKLOW[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-984465394, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1058893988, v2$2), 1119760433)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-984465394, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1058893988, v2$1), 1119760433)), 1069066811));
    $$RKLOW[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-984465394, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1058893988, v2$2), 1119760433)), 1069066811));
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$RKLOW(true, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-985943669, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1052770304, v2$1), 1124757687)), 1069066811)), $$RKLOW[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-985943669, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1052770304, v2$2), 1124757687)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-985943669, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1052770304, v2$1), 1124757687)), 1069066811));
    $$RKLOW[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-985943669, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1052770304, v2$2), 1124757687)), 1069066811));
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$RKLOW(true, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-983816124, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1059774792, v2$1), 1119005234)), 1069066811)), $$RKLOW[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(true, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$RKLOW(true, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-983816124, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1059774792, v2$2), 1119005234)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RKLOW"} true;
    $$RKLOW[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-983816124, FDIV32(1065353216, v1$1)), FADD32(FMUL32(-1059774792, v2$1), 1119005234)), 1069066811));
    $$RKLOW[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-983816124, FDIV32(1065353216, v1$2)), FADD32(FMUL32(-1059774792, v2$2), 1119005234)), 1069066811));
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



const _WATCHED_VALUE_$$RKLOW: int;

procedure {:inline 1} _LOG_READ_$$RKLOW(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RKLOW;



implementation {:inline 1} _LOG_READ_$$RKLOW(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW == _value then true else _READ_HAS_OCCURRED_$$RKLOW);
    return;
}



procedure _CHECK_READ_$$RKLOW(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RKLOW);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RKLOW: bool;

procedure {:inline 1} _LOG_WRITE_$$RKLOW(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RKLOW, _WRITE_READ_BENIGN_FLAG_$$RKLOW;



implementation {:inline 1} _LOG_WRITE_$$RKLOW(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW == _value then true else _WRITE_HAS_OCCURRED_$$RKLOW);
    _WRITE_READ_BENIGN_FLAG_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RKLOW);
    return;
}



procedure _CHECK_WRITE_$$RKLOW(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW != _value);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW != _value);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RKLOW(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RKLOW;



implementation {:inline 1} _LOG_ATOMIC_$$RKLOW(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RKLOW);
    return;
}



procedure _CHECK_ATOMIC_$$RKLOW(_P: bool, _offset: int);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RKLOW;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RKLOW := (if _P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RKLOW);
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
