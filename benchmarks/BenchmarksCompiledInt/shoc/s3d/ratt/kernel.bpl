type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$T"} {:global} {:elem_width 32} {:source_name "T"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$T: bool;

var {:source_name "RF"} {:global} $$RF: [int]int;

axiom {:array_info "$$RF"} {:global} {:elem_width 32} {:source_name "RF"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RF: bool;

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

function FDIV64(int, int) : int;

function FEXP32(int) : int;

function FLOG32(int) : int;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "ratt_kernel"} {:kernel} $ratt_kernel($TCONV: int);
  requires !_READ_HAS_OCCURRED_$$T && !_WRITE_HAS_OCCURRED_$$T && !_ATOMIC_HAS_OCCURRED_$$T;
  requires !_READ_HAS_OCCURRED_$$RF && !_WRITE_HAS_OCCURRED_$$RF && !_ATOMIC_HAS_OCCURRED_$$RF;
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
  modifies _WRITE_HAS_OCCURRED_$$RF, _WRITE_READ_BENIGN_FLAG_$$RF, _WRITE_READ_BENIGN_FLAG_$$RF;



implementation {:source_name "ratt_kernel"} {:kernel} $ratt_kernel($TCONV: int)
{
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
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


  $0:
    havoc v0$1, v0$2;
    v1$1 := FMUL32(v0$1, $TCONV);
    v1$2 := FMUL32(v0$2, $TCONV);
    v2$1 := FMUL32(FLOG32(v1$1), 1060205080);
    v2$2 := FMUL32(FLOG32(v1$2), 1060205080);
    v3$1 := FP64_CONV32(FDIV64(4607182418800017408, FP32_CONV64(v1$1)));
    v3$2 := FP64_CONV32(FDIV64(4607182418800017408, FP32_CONV64(v1$2)));
    v4$1 := FMUL32(v3$1, v3$1);
    v4$2 := FMUL32(v3$2, v3$2);
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$RF(true, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), FEXP32(FMUL32(FADD32(FMUL32(-975001883, v3$1), 1107309327), 1069066811)), $$RF[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$RF(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), FEXP32(FMUL32(FADD32(FMUL32(-975001883, v3$2), 1107309327), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] := FEXP32(FMUL32(FADD32(FMUL32(-975001883, v3$1), 1107309327), 1069066811));
    $$RF[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] := FEXP32(FMUL32(FADD32(FMUL32(-975001883, v3$2), 1107309327), 1069066811));
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$RF(true, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-985279558, v3$1), FADD32(FMUL32(1076552008, v2$1), 1093475792)), 1069066811)), $$RF[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$RF(true, BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-985279558, v3$2), FADD32(FMUL32(1076552008, v2$2), 1093475792)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-985279558, v3$1), FADD32(FMUL32(1076552008, v2$1), 1093475792)), 1069066811));
    $$RF[BV32_ADD(13824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-985279558, v3$2), FADD32(FMUL32(1076552008, v2$2), 1093475792)), 1069066811));
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$RF(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-992493296, v3$1), FADD32(FMUL32(1069631406, v2$1), 1100580540)), 1069066811)), $$RF[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$RF(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-992493296, v3$2), FADD32(FMUL32(1069631406, v2$2), 1100580540)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-992493296, v3$1), FADD32(FMUL32(1069631406, v2$1), 1100580540)), 1069066811));
    $$RF[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-992493296, v3$2), FADD32(FMUL32(1069631406, v2$2), 1100580540)), 1069066811));
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$RF(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1149548848, v3$1), FADD32(FMUL32(1075419546, v2$1), 1093122556)), 1069066811)), $$RF[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$RF(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1149548848, v3$2), FADD32(FMUL32(1075419546, v2$2), 1093122556)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1149548848, v3$1), FADD32(FMUL32(1075419546, v2$1), 1093122556)), 1069066811));
    $$RF[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1149548848, v3$2), FADD32(FMUL32(1075419546, v2$2), 1093122556)), 1069066811));
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4876203697187506176, FP32_CONV64(v3$1))), $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4876203697187506176, FP32_CONV64(v3$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4876203697187506176, FP32_CONV64(v3$1)));
    $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4876203697187506176, FP32_CONV64(v3$2)));
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$RF(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1088841318, v2$1), 1109141379), 1069066811)), $$RF[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$RF(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1088841318, v2$2), 1109141379), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1088841318, v2$1), 1109141379), 1069066811));
    $$RF[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1088841318, v2$2), 1109141379), 1069066811));
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$RF(true, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1080033280, v2$1), 1110845915), 1069066811)), $$RF[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$RF(true, BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1080033280, v2$2), 1110845915), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1080033280, v2$1), 1110845915), 1069066811));
    $$RF[BV32_ADD(82944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1080033280, v2$2), 1110845915), 1069066811));
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$RF(true, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4917315927818215640, FP32_CONV64(v4$1))), $$RF[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$RF(true, BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4917315927818215640, FP32_CONV64(v4$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4917315927818215640, FP32_CONV64(v4$1)));
    $$RF[BV32_ADD(96768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4917315927818215640, FP32_CONV64(v4$2)));
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4941190400338297991, FP32_CONV64(v4$1))), $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4941190400338297991, FP32_CONV64(v4$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4941190400338297991, FP32_CONV64(v4$1)));
    $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4941190400338297991, FP32_CONV64(v4$2)));
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4871700097560135680, FP32_CONV64(v3$1))), $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4871700097560135680, FP32_CONV64(v3$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4871700097560135680, FP32_CONV64(v3$1)));
    $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4871700097560135680, FP32_CONV64(v3$2)));
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4862380398305394688, FP32_CONV64(v3$1))), $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4862380398305394688, FP32_CONV64(v3$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4862380398305394688, FP32_CONV64(v3$1)));
    $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4862380398305394688, FP32_CONV64(v3$2)));
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1084479242, v2$1), 1110042516), 1069066811)), $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1084479242, v2$2), 1110042516), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1084479242, v2$1), 1110042516), 1069066811));
    $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1084479242, v2$2), 1110042516), 1069066811));
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$RF(true, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1076090634, v2$1), 1111267820), 1069066811)), $$RF[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$RF(true, BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1076090634, v2$2), 1111267820), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1076090634, v2$1), 1111267820), 1069066811));
    $$RF[BV32_ADD(165888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1076090634, v2$2), 1111267820), 1069066811));
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$RF(true, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1086156964, v2$1), 1110507809), 1069066811)), $$RF[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$RF(true, BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1086156964, v2$2), 1110507809), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1086156964, v2$1), 1110507809), 1069066811));
    $$RF[BV32_ADD(179712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1086156964, v2$2), 1110507809), 1069066811));
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$RF(true, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1080117166, v2$1), 1110626698), 1069066811)), $$RF[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$RF(true, BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1080117166, v2$2), 1110626698), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1080117166, v2$1), 1110626698), 1069066811));
    $$RF[BV32_ADD(193536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1080117166, v2$2), 1110626698), 1069066811));
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$RF(true, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1094881116, v2$1), 1107262222), 1069066811)), $$RF[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$RF(true, BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1094881116, v2$2), 1107262222), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1094881116, v2$1), 1107262222), 1069066811));
    $$RF[BV32_ADD(207360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1094881116, v2$2), 1107262222), 1069066811));
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$RF(true, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1012345786, v3$1), 1105728523), 1069066811)), $$RF[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$RF(true, BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1012345786, v3$2), 1105728523), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1012345786, v3$1), 1105728523), 1069066811));
    $$RF[BV32_ADD(221184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1012345786, v3$2), 1105728523), 1069066811));
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$RF(true, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1009888865, v3$1), 1106478589), 1069066811)), $$RF[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$RF(true, BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1009888865, v3$2), 1106478589), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1009888865, v3$1), 1106478589), 1069066811));
    $$RF[BV32_ADD(235008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1009888865, v3$2), 1106478589), 1069066811));
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$RF(true, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1021905142, v3$1), 1107239046), 1069066811)), $$RF[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$RF(true, BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1021905142, v3$2), 1107239046), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1021905142, v3$1), 1107239046), 1069066811));
    $$RF[BV32_ADD(248832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1021905142, v3$2), 1107239046), 1069066811));
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$RF(true, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1435600103, $$RF[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$RF(true, BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1435600103);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1435600103;
    $$RF[BV32_ADD(262656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1435600103;
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$RF(true, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1132174268, v3$1), 1107017503), 1069066811)), $$RF[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$RF(true, BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1132174268, v3$2), 1107017503), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1132174268, v3$1), 1107017503), 1069066811));
    $$RF[BV32_ADD(276480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1132174268, v3$2), 1107017503), 1069066811));
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$RF(true, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1145900944, v3$1), 1103935990), 1069066811)), $$RF[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$RF(true, BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1145900944, v3$2), 1103935990), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1145900944, v3$1), 1103935990), 1069066811));
    $$RF[BV32_ADD(290304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1145900944, v3$2), 1103935990), 1069066811));
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$RF(true, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-977488691, v3$1), 1107734371), 1069066811)), $$RF[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$RF(true, BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-977488691, v3$2), 1107734371), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-977488691, v3$1), 1107734371), 1069066811));
    $$RF[BV32_ADD(304128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-977488691, v3$2), 1107734371), 1069066811));
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$RF(true, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-987526240, v3$1), FADD32(FMUL32(1073741824, v2$1), 1099069504)), 1069066811)), $$RF[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$RF(true, BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-987526240, v3$2), FADD32(FMUL32(1073741824, v2$2), 1099069504)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-987526240, v3$1), FADD32(FMUL32(1073741824, v2$1), 1099069504)), 1069066811));
    $$RF[BV32_ADD(317952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-987526240, v3$2), FADD32(FMUL32(1073741824, v2$2), 1099069504)), 1069066811));
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$RF(true, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-991792497, v3$1), 1106212871), 1069066811)), $$RF[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$RF(true, BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-991792497, v3$2), 1106212871), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-991792497, v3$1), 1106212871), 1069066811));
    $$RF[BV32_ADD(331776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-991792497, v3$2), 1106212871), 1069066811));
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$RF(true, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-990143556, v3$1), FADD32(FMUL32(1073741824, v2$1), 1098949798)), 1069066811)), $$RF[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$RF(true, BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-990143556, v3$2), FADD32(FMUL32(1073741824, v2$2), 1098949798)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-990143556, v3$1), FADD32(FMUL32(1073741824, v2$1), 1098949798)), 1069066811));
    $$RF[BV32_ADD(345600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-990143556, v3$2), FADD32(FMUL32(1073741824, v2$2), 1098949798)), 1069066811));
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$RF(true, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1021245566, v3$1), 1105299053), 1069066811)), $$RF[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$RF(true, BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1021245566, v3$2), 1105299053), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1021245566, v3$1), 1105299053), 1069066811));
    $$RF[BV32_ADD(359424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1021245566, v3$2), 1105299053), 1069066811));
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$RF(true, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-980003325, v3$1), 1107818984), 1069066811)), $$RF[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$RF(true, BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-980003325, v3$2), 1107818984), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-980003325, v3$1), 1107818984), 1069066811));
    $$RF[BV32_ADD(373248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-980003325, v3$2), 1107818984), 1069066811));
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$1), 1107828743), 1069066811)), $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$2), 1107828743), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$1), 1107828743), 1069066811));
    $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$2), 1107828743), 1069066811));
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$RF(true, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1039341934, v3$1), FADD32(FMUL32(1067265819, v2$1), 1099787583)), 1069066811)), $$RF[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$RF(true, BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1039341934, v3$2), FADD32(FMUL32(1067265819, v2$2), 1099787583)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1039341934, v3$1), FADD32(FMUL32(1067265819, v2$1), 1099787583)), 1069066811));
    $$RF[BV32_ADD(400896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1039341934, v3$2), FADD32(FMUL32(1067265819, v2$2), 1099787583)), 1069066811));
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$RF(true, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-954435572, v3$1), FADD32(FMUL32(1069547520, v2$1), 1099734298)), 1069066811)), $$RF[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$RF(true, BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-954435572, v3$2), FADD32(FMUL32(1069547520, v2$2), 1099734298)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-954435572, v3$1), FADD32(FMUL32(1069547520, v2$1), 1099734298)), 1069066811));
    $$RF[BV32_ADD(414720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-954435572, v3$2), FADD32(FMUL32(1069547520, v2$2), 1099734298)), 1069066811));
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$RF(true, BV32_ADD(428544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-960763005, v3$1), 1105486053), 1069066811)), $$RF[BV32_ADD(428544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(428544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$RF(true, BV32_ADD(428544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-960763005, v3$2), 1105486053), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(428544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-960763005, v3$1), 1105486053), 1069066811));
    $$RF[BV32_ADD(428544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-960763005, v3$2), 1105486053), 1069066811));
    call {:sourceloc} {:sourceloc_num 34} _LOG_WRITE_$$RF(true, BV32_ADD(442368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-969306201, v3$1), 1107464462), 1069066811)), $$RF[BV32_ADD(442368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(442368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 34} _CHECK_WRITE_$$RF(true, BV32_ADD(442368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-969306201, v3$2), 1107464462), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(442368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-969306201, v3$1), 1107464462), 1069066811));
    $$RF[BV32_ADD(442368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-969306201, v3$2), 1107464462), 1069066811));
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$RF(true, BV32_ADD(456192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1448041827, $$RF[BV32_ADD(456192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(456192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$RF(true, BV32_ADD(456192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1448041827);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(456192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1448041827;
    $$RF[BV32_ADD(456192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1448041827;
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$RF(true, BV32_ADD(470016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(470016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(470016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$RF(true, BV32_ADD(470016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(470016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(470016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$RF(true, BV32_ADD(483840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1001252916, v3$1), FADD32(FMUL32(1071980216, v2$1), 1100230078)), 1069066811)), $$RF[BV32_ADD(483840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(483840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$RF(true, BV32_ADD(483840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1001252916, v3$2), FADD32(FMUL32(1071980216, v2$2), 1100230078)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(483840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1001252916, v3$1), FADD32(FMUL32(1071980216, v2$1), 1100230078)), 1069066811));
    $$RF[BV32_ADD(483840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1001252916, v3$2), FADD32(FMUL32(1071980216, v2$2), 1100230078)), 1069066811));
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$RF(true, BV32_ADD(497664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1136522972, v3$1), 1105919077), 1069066811)), $$RF[BV32_ADD(497664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(497664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$RF(true, BV32_ADD(497664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1136522972, v3$2), 1105919077), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(497664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1136522972, v3$1), 1105919077), 1069066811));
    $$RF[BV32_ADD(497664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1136522972, v3$2), 1105919077), 1069066811));
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$RF(true, BV32_ADD(511488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1441798986, $$RF[BV32_ADD(511488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(511488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$RF(true, BV32_ADD(511488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1441798986);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(511488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1441798986;
    $$RF[BV32_ADD(511488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1441798986;
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$RF(true, BV32_ADD(525312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1446372897, $$RF[BV32_ADD(525312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(525312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$RF(true, BV32_ADD(525312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1446372897);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(525312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1446372897;
    $$RF[BV32_ADD(525312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1446372897;
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$RF(true, BV32_ADD(539136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1012032487, v3$1), 1105647264), 1069066811)), $$RF[BV32_ADD(539136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(539136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$RF(true, BV32_ADD(539136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1012032487, v3$2), 1105647264), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(539136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1012032487, v3$1), 1105647264), 1069066811));
    $$RF[BV32_ADD(539136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1012032487, v3$2), 1105647264), 1069066811));
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$RF(true, BV32_ADD(552960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1124259354, v3$1), FADD32(FMUL32(1056293519, v2$1), 1105050835)), 1069066811)), $$RF[BV32_ADD(552960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(552960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$RF(true, BV32_ADD(552960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1124259354, v3$2), FADD32(FMUL32(1056293519, v2$2), 1105050835)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(552960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1124259354, v3$1), FADD32(FMUL32(1056293519, v2$1), 1105050835)), 1069066811));
    $$RF[BV32_ADD(552960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1124259354, v3$2), FADD32(FMUL32(1056293519, v2$2), 1105050835)), 1069066811));
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$RF(true, BV32_ADD(566784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1451590538, $$RF[BV32_ADD(566784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(566784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$RF(true, BV32_ADD(566784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1451590538);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(566784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1451590538;
    $$RF[BV32_ADD(566784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1451590538;
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$RF(true, BV32_ADD(580608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(580608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(580608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$RF(true, BV32_ADD(580608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(580608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(580608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$RF(true, BV32_ADD(594432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(594432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(594432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$RF(true, BV32_ADD(594432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(594432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(594432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$RF(true, BV32_ADD(608256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1446372897, $$RF[BV32_ADD(608256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(608256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$RF(true, BV32_ADD(608256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1446372897);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(608256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1446372897;
    $$RF[BV32_ADD(608256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1446372897;
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-972707140, v3$1), FADD32(FMUL32(-1082130432, v2$1), 1109333085)), 1069066811)), $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-972707140, v3$2), FADD32(FMUL32(-1082130432, v2$2), 1109333085)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-972707140, v3$1), FADD32(FMUL32(-1082130432, v2$1), 1109333085)), 1069066811));
    $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-972707140, v3$2), FADD32(FMUL32(-1082130432, v2$2), 1109333085)), 1069066811));
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$RF(true, BV32_ADD(635904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1018607261, v3$1), 1106068987), 1069066811)), $$RF[BV32_ADD(635904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(635904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$RF(true, BV32_ADD(635904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1018607261, v3$2), 1106068987), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(635904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1018607261, v3$1), 1106068987), 1069066811));
    $$RF[BV32_ADD(635904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1018607261, v3$2), 1106068987), 1069066811));
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$RF(true, BV32_ADD(649728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1085485875, v2$1), 1108805590), 1069066811)), $$RF[BV32_ADD(649728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(649728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$RF(true, BV32_ADD(649728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1085485875, v2$2), 1108805590), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(649728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1085485875, v2$1), 1108805590), 1069066811));
    $$RF[BV32_ADD(649728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1085485875, v2$2), 1108805590), 1069066811));
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$RF(true, BV32_ADD(663552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-983342053, v3$1), FADD32(FMUL32(1073741824, v2$1), 1095890227)), 1069066811)), $$RF[BV32_ADD(663552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(663552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$RF(true, BV32_ADD(663552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-983342053, v3$2), FADD32(FMUL32(1073741824, v2$2), 1095890227)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(663552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-983342053, v3$1), FADD32(FMUL32(1073741824, v2$1), 1095890227)), 1069066811));
    $$RF[BV32_ADD(663552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-983342053, v3$2), FADD32(FMUL32(1073741824, v2$2), 1095890227)), 1069066811));
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$RF(true, BV32_ADD(677376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1452377319, $$RF[BV32_ADD(677376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(677376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$RF(true, BV32_ADD(677376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1452377319);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(677376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1452377319;
    $$RF[BV32_ADD(677376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1452377319;
    v5$1 := FEXP32(FMUL32(FMUL32(-1002654515, v3$1), 1069066811));
    v5$2 := FEXP32(FMUL32(FMUL32(-1002654515, v3$2), 1069066811));
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$RF(true, BV32_ADD(691200, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4801740323149578240, FP32_CONV64(v5$1))), $$RF[BV32_ADD(691200, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(691200, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$RF(true, BV32_ADD(691200, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4801740323149578240, FP32_CONV64(v5$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(691200, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4801740323149578240, FP32_CONV64(v5$1)));
    $$RF[BV32_ADD(691200, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4801740323149578240, FP32_CONV64(v5$2)));
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$RF(true, BV32_ADD(705024, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4792733123894837248, FP32_CONV64(v5$1))), $$RF[BV32_ADD(705024, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(705024, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$RF(true, BV32_ADD(705024, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4792733123894837248, FP32_CONV64(v5$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(705024, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4792733123894837248, FP32_CONV64(v5$1)));
    $$RF[BV32_ADD(705024, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4792733123894837248, FP32_CONV64(v5$2)));
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$RF(true, BV32_ADD(718848, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1435600103, $$RF[BV32_ADD(718848, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(718848, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$RF(true, BV32_ADD(718848, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1435600103);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(718848, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1435600103;
    $$RF[BV32_ADD(718848, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1435600103;
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$RF(true, BV32_ADD(732672, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$1), FADD32(FMUL32(1073741824, v2$1), 1099033641)), 1069066811)), $$RF[BV32_ADD(732672, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(732672, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$RF(true, BV32_ADD(732672, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$2), FADD32(FMUL32(1073741824, v2$2), 1099033641)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(732672, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$1), FADD32(FMUL32(1073741824, v2$1), 1099033641)), 1069066811));
    $$RF[BV32_ADD(732672, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-994265907, v3$2), FADD32(FMUL32(1073741824, v2$2), 1099033641)), 1069066811));
    call {:sourceloc} {:sourceloc_num 56} _LOG_WRITE_$$RF(true, BV32_ADD(746496, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1435600103, $$RF[BV32_ADD(746496, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(746496, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 56} _CHECK_WRITE_$$RF(true, BV32_ADD(746496, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1435600103);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(746496, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1435600103;
    $$RF[BV32_ADD(746496, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1435600103;
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$RF(true, BV32_ADD(760320, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-988948451, v3$1), FADD32(FMUL32(1056964608, v2$1), 1104895174)), 1069066811)), $$RF[BV32_ADD(760320, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(760320, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$RF(true, BV32_ADD(760320, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-988948451, v3$2), FADD32(FMUL32(1056964608, v2$2), 1104895174)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(760320, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-988948451, v3$1), FADD32(FMUL32(1056964608, v2$1), 1104895174)), 1069066811));
    $$RF[BV32_ADD(760320, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-988948451, v3$2), FADD32(FMUL32(1056964608, v2$2), 1104895174)), 1069066811));
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$RF(true, BV32_ADD(774144, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1443988711, $$RF[BV32_ADD(774144, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(774144, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$RF(true, BV32_ADD(774144, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1443988711);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(774144, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1443988711;
    $$RF[BV32_ADD(774144, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1443988711;
    call {:sourceloc} {:sourceloc_num 59} _LOG_WRITE_$$RF(true, BV32_ADD(787968, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1441322149, $$RF[BV32_ADD(787968, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(787968, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 59} _CHECK_WRITE_$$RF(true, BV32_ADD(787968, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1441322149);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(787968, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1441322149;
    $$RF[BV32_ADD(787968, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1441322149;
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$RF(true, BV32_ADD(801792, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1013516534, v3$1), 1106425451), 1069066811)), $$RF[BV32_ADD(801792, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(801792, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$RF(true, BV32_ADD(801792, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1013516534, v3$2), 1106425451), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(801792, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1013516534, v3$1), 1106425451), 1069066811));
    $$RF[BV32_ADD(801792, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1013516534, v3$2), 1106425451), 1069066811));
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$RF(true, BV32_ADD(815616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(815616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(815616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$RF(true, BV32_ADD(815616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(815616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(815616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 62} _LOG_WRITE_$$RF(true, BV32_ADD(829440, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1431979867, $$RF[BV32_ADD(829440, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(829440, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 62} _CHECK_WRITE_$$RF(true, BV32_ADD(829440, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1431979867);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(829440, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1431979867;
    $$RF[BV32_ADD(829440, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1431979867;
    call {:sourceloc} {:sourceloc_num 63} _LOG_WRITE_$$RF(true, BV32_ADD(843264, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1431979867, $$RF[BV32_ADD(843264, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(843264, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 63} _CHECK_WRITE_$$RF(true, BV32_ADD(843264, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1431979867);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(843264, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1431979867;
    $$RF[BV32_ADD(843264, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1431979867;
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$RF(true, BV32_ADD(857088, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(857088, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(857088, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$RF(true, BV32_ADD(857088, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(857088, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(857088, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$RF(true, BV32_ADD(870912, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1451141269, $$RF[BV32_ADD(870912, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(870912, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$RF(true, BV32_ADD(870912, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1451141269);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(870912, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1451141269;
    $$RF[BV32_ADD(870912, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1451141269;
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$RF(true, BV32_ADD(884736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1439414800, $$RF[BV32_ADD(884736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(884736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_64"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$RF(true, BV32_ADD(884736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1439414800);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(884736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1439414800;
    $$RF[BV32_ADD(884736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1439414800;
    call {:sourceloc} {:sourceloc_num 67} _LOG_WRITE_$$RF(true, BV32_ADD(898560, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1429118844, $$RF[BV32_ADD(898560, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(898560, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 67} true;
    call {:check_id "check_state_65"} {:sourceloc} {:sourceloc_num 67} _CHECK_WRITE_$$RF(true, BV32_ADD(898560, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1429118844);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(898560, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1429118844;
    $$RF[BV32_ADD(898560, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1429118844;
    call {:sourceloc} {:sourceloc_num 68} _LOG_WRITE_$$RF(true, BV32_ADD(912384, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(912384, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(912384, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_66"} {:sourceloc} {:sourceloc_num 68} _CHECK_WRITE_$$RF(true, BV32_ADD(912384, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(912384, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(912384, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 69} _LOG_WRITE_$$RF(true, BV32_ADD(926208, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1426257821, $$RF[BV32_ADD(926208, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(926208, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_67"} {:sourceloc} {:sourceloc_num 69} _CHECK_WRITE_$$RF(true, BV32_ADD(926208, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1426257821);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(926208, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1426257821;
    $$RF[BV32_ADD(926208, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1426257821;
    call {:sourceloc} {:sourceloc_num 70} _LOG_WRITE_$$RF(true, BV32_ADD(940032, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1422637584, $$RF[BV32_ADD(940032, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(940032, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 70} _CHECK_WRITE_$$RF(true, BV32_ADD(940032, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1422637584);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(940032, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1422637584;
    $$RF[BV32_ADD(940032, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1422637584;
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$RF(true, BV32_ADD(953856, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1431026192, $$RF[BV32_ADD(953856, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(953856, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$RF(true, BV32_ADD(953856, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1431026192);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(953856, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1431026192;
    $$RF[BV32_ADD(953856, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1431026192;
    call {:sourceloc} {:sourceloc_num 72} _LOG_WRITE_$$RF(true, BV32_ADD(967680, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-995914848, v3$1), FADD32(FMUL32(1055421104, v2$1), 1104682594)), 1069066811)), $$RF[BV32_ADD(967680, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(967680, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 72} _CHECK_WRITE_$$RF(true, BV32_ADD(967680, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-995914848, v3$2), FADD32(FMUL32(1055421104, v2$2), 1104682594)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(967680, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-995914848, v3$1), FADD32(FMUL32(1055421104, v2$1), 1104682594)), 1069066811));
    $$RF[BV32_ADD(967680, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-995914848, v3$2), FADD32(FMUL32(1055421104, v2$2), 1104682594)), 1069066811));
    call {:sourceloc} {:sourceloc_num 73} _LOG_WRITE_$$RF(true, BV32_ADD(981504, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-993132261, v3$1), FADD32(FMUL32(1065772646, v2$1), 1103027902)), 1069066811)), $$RF[BV32_ADD(981504, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(981504, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 73} _CHECK_WRITE_$$RF(true, BV32_ADD(981504, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-993132261, v3$2), FADD32(FMUL32(1065772646, v2$2), 1103027902)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(981504, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-993132261, v3$1), FADD32(FMUL32(1065772646, v2$1), 1103027902)), 1069066811));
    $$RF[BV32_ADD(981504, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-993132261, v3$2), FADD32(FMUL32(1065772646, v2$2), 1103027902)), 1069066811));
    call {:sourceloc} {:sourceloc_num 74} _LOG_WRITE_$$RF(true, BV32_ADD(995328, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-992039838, v3$1), 1106926414), 1069066811)), $$RF[BV32_ADD(995328, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(995328, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_72"} {:sourceloc} {:sourceloc_num 74} _CHECK_WRITE_$$RF(true, BV32_ADD(995328, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-992039838, v3$2), 1106926414), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(995328, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-992039838, v3$1), 1106926414), 1069066811));
    $$RF[BV32_ADD(995328, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-992039838, v3$2), 1106926414), 1069066811));
    call {:sourceloc} {:sourceloc_num 75} _LOG_WRITE_$$RF(true, BV32_ADD(1009152, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1130426391, v3$1), FADD32(FMUL32(1066863165, v2$1), 1102030216)), 1069066811)), $$RF[BV32_ADD(1009152, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1009152, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_73"} {:sourceloc} {:sourceloc_num 75} _CHECK_WRITE_$$RF(true, BV32_ADD(1009152, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1130426391, v3$2), FADD32(FMUL32(1066863165, v2$2), 1102030216)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1009152, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1130426391, v3$1), FADD32(FMUL32(1066863165, v2$1), 1102030216)), 1069066811));
    $$RF[BV32_ADD(1009152, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1130426391, v3$2), FADD32(FMUL32(1066863165, v2$2), 1102030216)), 1069066811));
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$RF(true, BV32_ADD(1022976, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-962772651, v3$1), 1107358172), 1069066811)), $$RF[BV32_ADD(1022976, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1022976, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_74"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$RF(true, BV32_ADD(1022976, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-962772651, v3$2), 1107358172), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1022976, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-962772651, v3$1), 1107358172), 1069066811));
    $$RF[BV32_ADD(1022976, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-962772651, v3$2), 1107358172), 1069066811));
    v6$1 := FEXP32(FMUL32(FMUL32(-981754948, v3$1), 1069066811));
    v6$2 := FEXP32(FMUL32(FMUL32(-981754948, v3$2), 1069066811));
    call {:sourceloc} {:sourceloc_num 77} _LOG_WRITE_$$RF(true, BV32_ADD(1036800, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4786511204640096256, FP32_CONV64(v6$1))), $$RF[BV32_ADD(1036800, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1036800, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_75"} {:sourceloc} {:sourceloc_num 77} _CHECK_WRITE_$$RF(true, BV32_ADD(1036800, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4786511204640096256, FP32_CONV64(v6$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1036800, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4786511204640096256, FP32_CONV64(v6$1)));
    $$RF[BV32_ADD(1036800, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4786511204640096256, FP32_CONV64(v6$2)));
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$RF(true, BV32_ADD(1741824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4811740802404319232, FP32_CONV64(v6$1))), $$RF[BV32_ADD(1741824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1741824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_76"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$RF(true, BV32_ADD(1741824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4811740802404319232, FP32_CONV64(v6$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1741824, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4811740802404319232, FP32_CONV64(v6$1)));
    $$RF[BV32_ADD(1741824, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4811740802404319232, FP32_CONV64(v6$2)));
    call {:sourceloc} {:sourceloc_num 79} _LOG_WRITE_$$RF(true, BV32_ADD(1769472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v6$1))), $$RF[BV32_ADD(1769472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1769472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_77"} {:captureState "check_state_77"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_77"} {:sourceloc} {:sourceloc_num 79} _CHECK_WRITE_$$RF(true, BV32_ADD(1769472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v6$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1769472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v6$1)));
    $$RF[BV32_ADD(1769472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v6$2)));
    call {:sourceloc} {:sourceloc_num 80} _LOG_WRITE_$$RF(true, BV32_ADD(1050624, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1132565515, v3$1), 1107343620), 1069066811)), $$RF[BV32_ADD(1050624, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1050624, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_78"} {:captureState "check_state_78"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_78"} {:sourceloc} {:sourceloc_num 80} _CHECK_WRITE_$$RF(true, BV32_ADD(1050624, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1132565515, v3$2), 1107343620), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1050624, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1132565515, v3$1), 1107343620), 1069066811));
    $$RF[BV32_ADD(1050624, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1132565515, v3$2), 1107343620), 1069066811));
    call {:sourceloc} {:sourceloc_num 81} _LOG_WRITE_$$RF(true, BV32_ADD(1064448, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1019167901, v3$1), FADD32(FMUL32(-1088338002, v2$1), 1108628047)), 1069066811)), $$RF[BV32_ADD(1064448, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1064448, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_79"} {:captureState "check_state_79"} {:sourceloc} {:sourceloc_num 81} true;
    call {:check_id "check_state_79"} {:sourceloc} {:sourceloc_num 81} _CHECK_WRITE_$$RF(true, BV32_ADD(1064448, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1019167901, v3$2), FADD32(FMUL32(-1088338002, v2$2), 1108628047)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1064448, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1019167901, v3$1), FADD32(FMUL32(-1088338002, v2$1), 1108628047)), 1069066811));
    $$RF[BV32_ADD(1064448, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1019167901, v3$2), FADD32(FMUL32(-1088338002, v2$2), 1108628047)), 1069066811));
    call {:sourceloc} {:sourceloc_num 82} _LOG_WRITE_$$RF(true, BV32_ADD(1078272, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1452889919, $$RF[BV32_ADD(1078272, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1078272, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_80"} {:captureState "check_state_80"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_80"} {:sourceloc} {:sourceloc_num 82} _CHECK_WRITE_$$RF(true, BV32_ADD(1078272, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1452889919);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1078272, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1452889919;
    $$RF[BV32_ADD(1078272, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1452889919;
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$RF(true, BV32_ADD(1092096, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-987072781, v3$1), FADD32(FMUL32(1070386381, v2$1), 1099872790)), 1069066811)), $$RF[BV32_ADD(1092096, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1092096, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_81"} {:captureState "check_state_81"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_81"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$RF(true, BV32_ADD(1092096, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-987072781, v3$2), FADD32(FMUL32(1070386381, v2$2), 1099872790)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1092096, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-987072781, v3$1), FADD32(FMUL32(1070386381, v2$1), 1099872790)), 1069066811));
    $$RF[BV32_ADD(1092096, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-987072781, v3$2), FADD32(FMUL32(1070386381, v2$2), 1099872790)), 1069066811));
    call {:sourceloc} {:sourceloc_num 84} _LOG_WRITE_$$RF(true, BV32_ADD(1105920, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1437989057, $$RF[BV32_ADD(1105920, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1105920, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_82"} {:captureState "check_state_82"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_82"} {:sourceloc} {:sourceloc_num 84} _CHECK_WRITE_$$RF(true, BV32_ADD(1105920, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1437989057);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1105920, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1437989057;
    $$RF[BV32_ADD(1105920, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1437989057;
    call {:sourceloc} {:sourceloc_num 85} _LOG_WRITE_$$RF(true, BV32_ADD(1119744, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-966626673, v3$1), 1106803168), 1069066811)), $$RF[BV32_ADD(1119744, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1119744, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_83"} {:captureState "check_state_83"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_83"} {:sourceloc} {:sourceloc_num 85} _CHECK_WRITE_$$RF(true, BV32_ADD(1119744, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-966626673, v3$2), 1106803168), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1119744, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-966626673, v3$1), 1106803168), 1069066811));
    $$RF[BV32_ADD(1119744, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-966626673, v3$2), 1106803168), 1069066811));
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$RF(true, BV32_ADD(1133568, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-980642290, v3$1), 1103262796), 1069066811)), $$RF[BV32_ADD(1133568, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1133568, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_84"} {:captureState "check_state_84"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_84"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$RF(true, BV32_ADD(1133568, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-980642290, v3$2), 1103262796), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1133568, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-980642290, v3$1), 1103262796), 1069066811));
    $$RF[BV32_ADD(1133568, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-980642290, v3$2), 1103262796), 1069066811));
    call {:sourceloc} {:sourceloc_num 87} _LOG_WRITE_$$RF(true, BV32_ADD(1147392, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1399379109, $$RF[BV32_ADD(1147392, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1147392, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_85"} {:captureState "check_state_85"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_85"} {:sourceloc} {:sourceloc_num 87} _CHECK_WRITE_$$RF(true, BV32_ADD(1147392, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1399379109);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1147392, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1399379109;
    $$RF[BV32_ADD(1147392, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1399379109;
    call {:sourceloc} {:sourceloc_num 88} _LOG_WRITE_$$RF(true, BV32_ADD(1161216, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1430453988, $$RF[BV32_ADD(1161216, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1161216, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_86"} {:captureState "check_state_86"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_86"} {:sourceloc} {:sourceloc_num 88} _CHECK_WRITE_$$RF(true, BV32_ADD(1161216, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1430453988);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1161216, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1430453988;
    $$RF[BV32_ADD(1161216, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1430453988;
    call {:sourceloc} {:sourceloc_num 89} _LOG_WRITE_$$RF(true, BV32_ADD(1175040, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-987567463, v3$1), FADD32(FMUL32(1075713147, v2$1), 1092727790)), 1069066811)), $$RF[BV32_ADD(1175040, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1175040, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_87"} {:captureState "check_state_87"} {:sourceloc} {:sourceloc_num 89} true;
    call {:check_id "check_state_87"} {:sourceloc} {:sourceloc_num 89} _CHECK_WRITE_$$RF(true, BV32_ADD(1175040, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-987567463, v3$2), FADD32(FMUL32(1075713147, v2$2), 1092727790)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1175040, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-987567463, v3$1), FADD32(FMUL32(1075713147, v2$1), 1092727790)), 1069066811));
    $$RF[BV32_ADD(1175040, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-987567463, v3$2), FADD32(FMUL32(1075713147, v2$2), 1092727790)), 1069066811));
    call {:sourceloc} {:sourceloc_num 90} _LOG_WRITE_$$RF(true, BV32_ADD(1188864, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(1188864, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1188864, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_88"} {:captureState "check_state_88"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_88"} {:sourceloc} {:sourceloc_num 90} _CHECK_WRITE_$$RF(true, BV32_ADD(1188864, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1188864, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(1188864, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 91} _LOG_WRITE_$$RF(true, BV32_ADD(1202688, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1425460460, $$RF[BV32_ADD(1202688, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1202688, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_89"} {:captureState "check_state_89"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_89"} {:sourceloc} {:sourceloc_num 91} _CHECK_WRITE_$$RF(true, BV32_ADD(1202688, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1425460460);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1202688, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1425460460;
    $$RF[BV32_ADD(1202688, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1425460460;
    call {:sourceloc} {:sourceloc_num 92} _LOG_WRITE_$$RF(true, BV32_ADD(1216512, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1434646429, $$RF[BV32_ADD(1216512, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1216512, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_90"} {:captureState "check_state_90"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_90"} {:sourceloc} {:sourceloc_num 92} _CHECK_WRITE_$$RF(true, BV32_ADD(1216512, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1434646429);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1216512, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1434646429;
    $$RF[BV32_ADD(1216512, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1434646429;
    call {:sourceloc} {:sourceloc_num 93} _LOG_WRITE_$$RF(true, BV32_ADD(1230336, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-986165864, v3$1), FADD32(FMUL32(1077139210, v2$1), 1090631993)), 1069066811)), $$RF[BV32_ADD(1230336, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1230336, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_91"} {:captureState "check_state_91"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_91"} {:sourceloc} {:sourceloc_num 93} _CHECK_WRITE_$$RF(true, BV32_ADD(1230336, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-986165864, v3$2), FADD32(FMUL32(1077139210, v2$2), 1090631993)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1230336, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-986165864, v3$1), FADD32(FMUL32(1077139210, v2$1), 1090631993)), 1069066811));
    $$RF[BV32_ADD(1230336, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-986165864, v3$2), FADD32(FMUL32(1077139210, v2$2), 1090631993)), 1069066811));
    call {:sourceloc} {:sourceloc_num 94} _LOG_WRITE_$$RF(true, BV32_ADD(1244160, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1443988711, $$RF[BV32_ADD(1244160, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1244160, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_92"} {:captureState "check_state_92"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_92"} {:sourceloc} {:sourceloc_num 94} _CHECK_WRITE_$$RF(true, BV32_ADD(1244160, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1443988711);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1244160, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1443988711;
    $$RF[BV32_ADD(1244160, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1443988711;
    v7$1 := FEXP32(FMUL32(FMUL32(1133472432, v3$1), 1069066811));
    v7$2 := FEXP32(FMUL32(FMUL32(1133472432, v3$2), 1069066811));
    call {:sourceloc} {:sourceloc_num 95} _LOG_WRITE_$$RF(true, BV32_ADD(1257984, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4802477603149578240, FP32_CONV64(v7$1))), $$RF[BV32_ADD(1257984, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1257984, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_93"} {:captureState "check_state_93"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_93"} {:sourceloc} {:sourceloc_num 95} _CHECK_WRITE_$$RF(true, BV32_ADD(1257984, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4802477603149578240, FP32_CONV64(v7$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1257984, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4802477603149578240, FP32_CONV64(v7$1)));
    $$RF[BV32_ADD(1257984, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4802477603149578240, FP32_CONV64(v7$2)));
    call {:sourceloc} {:sourceloc_num 96} _LOG_WRITE_$$RF(true, BV32_ADD(1465344, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4804525603149578240, FP32_CONV64(v7$1))), $$RF[BV32_ADD(1465344, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1465344, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_94"} {:captureState "check_state_94"} {:sourceloc} {:sourceloc_num 96} true;
    call {:check_id "check_state_94"} {:sourceloc} {:sourceloc_num 96} _CHECK_WRITE_$$RF(true, BV32_ADD(1465344, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4804525603149578240, FP32_CONV64(v7$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1465344, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4804525603149578240, FP32_CONV64(v7$1)));
    $$RF[BV32_ADD(1465344, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4804525603149578240, FP32_CONV64(v7$2)));
    call {:sourceloc} {:sourceloc_num 97} _LOG_WRITE_$$RF(true, BV32_ADD(1271808, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1013186746, v3$1), FADD32(FMUL32(-1082633748, v2$1), 1108762369)), 1069066811)), $$RF[BV32_ADD(1271808, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1271808, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_95"} {:captureState "check_state_95"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_95"} {:sourceloc} {:sourceloc_num 97} _CHECK_WRITE_$$RF(true, BV32_ADD(1271808, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1013186746, v3$2), FADD32(FMUL32(-1082633748, v2$2), 1108762369)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1271808, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1013186746, v3$1), FADD32(FMUL32(-1082633748, v2$1), 1108762369)), 1069066811));
    $$RF[BV32_ADD(1271808, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1013186746, v3$2), FADD32(FMUL32(-1082633748, v2$2), 1108762369)), 1069066811));
    call {:sourceloc} {:sourceloc_num 98} _LOG_WRITE_$$RF(true, BV32_ADD(1285632, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-978931514, v3$1), FADD32(FMUL32(1036831949, v2$1), 1105848412)), 1069066811)), $$RF[BV32_ADD(1285632, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1285632, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_96"} {:captureState "check_state_96"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_96"} {:sourceloc} {:sourceloc_num 98} _CHECK_WRITE_$$RF(true, BV32_ADD(1285632, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-978931514, v3$2), FADD32(FMUL32(1036831949, v2$2), 1105848412)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1285632, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-978931514, v3$1), FADD32(FMUL32(1036831949, v2$1), 1105848412)), 1069066811));
    $$RF[BV32_ADD(1285632, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-978931514, v3$2), FADD32(FMUL32(1036831949, v2$2), 1105848412)), 1069066811));
    call {:sourceloc} {:sourceloc_num 99} _LOG_WRITE_$$RF(true, BV32_ADD(1299456, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1446372897, $$RF[BV32_ADD(1299456, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1299456, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_97"} {:captureState "check_state_97"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_97"} {:sourceloc} {:sourceloc_num 99} _CHECK_WRITE_$$RF(true, BV32_ADD(1299456, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1446372897);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1299456, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1446372897;
    $$RF[BV32_ADD(1299456, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1446372897;
    call {:sourceloc} {:sourceloc_num 100} _LOG_WRITE_$$RF(true, BV32_ADD(1313280, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1435600103, $$RF[BV32_ADD(1313280, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1313280, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_98"} {:captureState "check_state_98"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_98"} {:sourceloc} {:sourceloc_num 100} _CHECK_WRITE_$$RF(true, BV32_ADD(1313280, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1435600103);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1313280, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1435600103;
    $$RF[BV32_ADD(1313280, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1435600103;
    call {:sourceloc} {:sourceloc_num 101} _LOG_WRITE_$$RF(true, BV32_ADD(1327104, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1441322149, $$RF[BV32_ADD(1327104, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1327104, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_99"} {:captureState "check_state_99"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_99"} {:sourceloc} {:sourceloc_num 101} _CHECK_WRITE_$$RF(true, BV32_ADD(1327104, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1441322149);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1327104, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1441322149;
    $$RF[BV32_ADD(1327104, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1441322149;
    call {:sourceloc} {:sourceloc_num 102} _LOG_WRITE_$$RF(true, BV32_ADD(1340928, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1432933541, $$RF[BV32_ADD(1340928, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1340928, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_100"} {:captureState "check_state_100"} {:sourceloc} {:sourceloc_num 102} true;
    call {:check_id "check_state_100"} {:sourceloc} {:sourceloc_num 102} _CHECK_WRITE_$$RF(true, BV32_ADD(1340928, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1432933541);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1340928, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1432933541;
    $$RF[BV32_ADD(1340928, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1432933541;
    call {:sourceloc} {:sourceloc_num 103} _LOG_WRITE_$$RF(true, BV32_ADD(1354752, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1427211495, $$RF[BV32_ADD(1354752, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1354752, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_101"} {:captureState "check_state_101"} {:sourceloc} {:sourceloc_num 103} true;
    call {:check_id "check_state_101"} {:sourceloc} {:sourceloc_num 103} _CHECK_WRITE_$$RF(true, BV32_ADD(1354752, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1427211495);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1354752, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1427211495;
    $$RF[BV32_ADD(1354752, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1427211495;
    call {:sourceloc} {:sourceloc_num 104} _LOG_WRITE_$$RF(true, BV32_ADD(1368576, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1418822887, $$RF[BV32_ADD(1368576, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1368576, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_102"} {:captureState "check_state_102"} {:sourceloc} {:sourceloc_num 104} true;
    call {:check_id "check_state_102"} {:sourceloc} {:sourceloc_num 104} _CHECK_WRITE_$$RF(true, BV32_ADD(1368576, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1418822887);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1368576, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1418822887;
    $$RF[BV32_ADD(1368576, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1418822887;
    call {:sourceloc} {:sourceloc_num 105} _LOG_WRITE_$$RF(true, BV32_ADD(1382400, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1155402587, v3$1), FADD32(FMUL32(1089680179, v2$1), -1042033068)), 1069066811)), $$RF[BV32_ADD(1382400, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1382400, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_103"} {:captureState "check_state_103"} {:sourceloc} {:sourceloc_num 105} true;
    call {:check_id "check_state_103"} {:sourceloc} {:sourceloc_num 105} _CHECK_WRITE_$$RF(true, BV32_ADD(1382400, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1155402587, v3$2), FADD32(FMUL32(1089680179, v2$2), -1042033068)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1382400, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1155402587, v3$1), FADD32(FMUL32(1089680179, v2$1), -1042033068)), 1069066811));
    $$RF[BV32_ADD(1382400, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1155402587, v3$2), FADD32(FMUL32(1089680179, v2$2), -1042033068)), 1069066811));
    call {:sourceloc} {:sourceloc_num 106} _LOG_WRITE_$$RF(true, BV32_ADD(1396224, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-978684173, v3$1), FADD32(FMUL32(1070554153, v2$1), 1101166150)), 1069066811)), $$RF[BV32_ADD(1396224, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1396224, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_104"} {:captureState "check_state_104"} {:sourceloc} {:sourceloc_num 106} true;
    call {:check_id "check_state_104"} {:sourceloc} {:sourceloc_num 106} _CHECK_WRITE_$$RF(true, BV32_ADD(1396224, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-978684173, v3$2), FADD32(FMUL32(1070554153, v2$2), 1101166150)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1396224, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-978684173, v3$1), FADD32(FMUL32(1070554153, v2$1), 1101166150)), 1069066811));
    $$RF[BV32_ADD(1396224, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-978684173, v3$2), FADD32(FMUL32(1070554153, v2$2), 1101166150)), 1069066811));
    call {:sourceloc} {:sourceloc_num 107} _LOG_WRITE_$$RF(true, BV32_ADD(1410048, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-980992689, v3$1), FADD32(FMUL32(1069547520, v2$1), 1101394382)), 1069066811)), $$RF[BV32_ADD(1410048, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1410048, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_105"} {:captureState "check_state_105"} {:sourceloc} {:sourceloc_num 107} true;
    call {:check_id "check_state_105"} {:sourceloc} {:sourceloc_num 107} _CHECK_WRITE_$$RF(true, BV32_ADD(1410048, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-980992689, v3$2), FADD32(FMUL32(1069547520, v2$2), 1101394382)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1410048, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-980992689, v3$1), FADD32(FMUL32(1069547520, v2$1), 1101394382)), 1069066811));
    $$RF[BV32_ADD(1410048, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-980992689, v3$2), FADD32(FMUL32(1069547520, v2$2), 1101394382)), 1069066811));
    call {:sourceloc} {:sourceloc_num 108} _LOG_WRITE_$$RF(true, BV32_ADD(1423872, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-993771225, v3$1), FADD32(FMUL32(1070386381, v2$1), 1100176782)), 1069066811)), $$RF[BV32_ADD(1423872, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1423872, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_106"} {:captureState "check_state_106"} {:sourceloc} {:sourceloc_num 108} true;
    call {:check_id "check_state_106"} {:sourceloc} {:sourceloc_num 108} _CHECK_WRITE_$$RF(true, BV32_ADD(1423872, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-993771225, v3$2), FADD32(FMUL32(1070386381, v2$2), 1100176782)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1423872, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-993771225, v3$1), FADD32(FMUL32(1070386381, v2$1), 1100176782)), 1069066811));
    $$RF[BV32_ADD(1423872, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-993771225, v3$2), FADD32(FMUL32(1070386381, v2$2), 1100176782)), 1069066811));
    call {:sourceloc} {:sourceloc_num 109} _LOG_WRITE_$$RF(true, BV32_ADD(1437696, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1448757083, $$RF[BV32_ADD(1437696, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1437696, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_107"} {:captureState "check_state_107"} {:sourceloc} {:sourceloc_num 109} true;
    call {:check_id "check_state_107"} {:sourceloc} {:sourceloc_num 109} _CHECK_WRITE_$$RF(true, BV32_ADD(1437696, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1448757083);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1437696, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1448757083;
    $$RF[BV32_ADD(1437696, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1448757083;
    call {:sourceloc} {:sourceloc_num 110} _LOG_WRITE_$$RF(true, BV32_ADD(1451520, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-981332783, v3$1), FADD32(FMUL32(1073741824, v2$1), 1097560932)), 1069066811)), $$RF[BV32_ADD(1451520, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1451520, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_108"} {:captureState "check_state_108"} {:sourceloc} {:sourceloc_num 110} true;
    call {:check_id "check_state_108"} {:sourceloc} {:sourceloc_num 110} _CHECK_WRITE_$$RF(true, BV32_ADD(1451520, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-981332783, v3$2), FADD32(FMUL32(1073741824, v2$2), 1097560932)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1451520, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-981332783, v3$1), FADD32(FMUL32(1073741824, v2$1), 1097560932)), 1069066811));
    $$RF[BV32_ADD(1451520, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-981332783, v3$2), FADD32(FMUL32(1073741824, v2$2), 1097560932)), 1069066811));
    call {:sourceloc} {:sourceloc_num 111} _LOG_WRITE_$$RF(true, BV32_ADD(1479168, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1454761505, $$RF[BV32_ADD(1479168, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1479168, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_109"} {:captureState "check_state_109"} {:sourceloc} {:sourceloc_num 111} true;
    call {:check_id "check_state_109"} {:sourceloc} {:sourceloc_num 111} _CHECK_WRITE_$$RF(true, BV32_ADD(1479168, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1454761505);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1479168, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1454761505;
    $$RF[BV32_ADD(1479168, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1454761505;
    call {:sourceloc} {:sourceloc_num 112} _LOG_WRITE_$$RF(true, BV32_ADD(1492992, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1454761505, $$RF[BV32_ADD(1492992, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1492992, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_110"} {:captureState "check_state_110"} {:sourceloc} {:sourceloc_num 112} true;
    call {:check_id "check_state_110"} {:sourceloc} {:sourceloc_num 112} _CHECK_WRITE_$$RF(true, BV32_ADD(1492992, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1454761505);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1492992, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1454761505;
    $$RF[BV32_ADD(1492992, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1454761505;
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$RF(true, BV32_ADD(1506816, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1009328225, v3$1), 1105252070), 1069066811)), $$RF[BV32_ADD(1506816, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1506816, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_111"} {:captureState "check_state_111"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_111"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$RF(true, BV32_ADD(1506816, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1009328225, v3$2), 1105252070), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1506816, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1009328225, v3$1), 1105252070), 1069066811));
    $$RF[BV32_ADD(1506816, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1009328225, v3$2), 1105252070), 1069066811));
    call {:sourceloc} {:sourceloc_num 114} _LOG_WRITE_$$RF(true, BV32_ADD(1520640, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1446372897, $$RF[BV32_ADD(1520640, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1520640, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_112"} {:captureState "check_state_112"} {:sourceloc} {:sourceloc_num 114} true;
    call {:check_id "check_state_112"} {:sourceloc} {:sourceloc_num 114} _CHECK_WRITE_$$RF(true, BV32_ADD(1520640, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1446372897);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1520640, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1446372897;
    $$RF[BV32_ADD(1520640, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1446372897;
    call {:sourceloc} {:sourceloc_num 115} _LOG_WRITE_$$RF(true, BV32_ADD(1534464, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(1534464, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1534464, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_113"} {:captureState "check_state_113"} {:sourceloc} {:sourceloc_num 115} true;
    call {:check_id "check_state_113"} {:sourceloc} {:sourceloc_num 115} _CHECK_WRITE_$$RF(true, BV32_ADD(1534464, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1534464, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(1534464, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 116} _LOG_WRITE_$$RF(true, BV32_ADD(1548288, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1427211495, $$RF[BV32_ADD(1548288, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1548288, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_114"} {:captureState "check_state_114"} {:sourceloc} {:sourceloc_num 116} true;
    call {:check_id "check_state_114"} {:sourceloc} {:sourceloc_num 116} _CHECK_WRITE_$$RF(true, BV32_ADD(1548288, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1427211495);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1548288, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1427211495;
    $$RF[BV32_ADD(1548288, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1427211495;
    call {:sourceloc} {:sourceloc_num 117} _LOG_WRITE_$$RF(true, BV32_ADD(1562112, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-960002946, v3$1), FADD32(FMUL32(-1090183496, v2$1), 1107903285)), 1069066811)), $$RF[BV32_ADD(1562112, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1562112, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_115"} {:captureState "check_state_115"} {:sourceloc} {:sourceloc_num 117} true;
    call {:check_id "check_state_115"} {:sourceloc} {:sourceloc_num 117} _CHECK_WRITE_$$RF(true, BV32_ADD(1562112, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-960002946, v3$2), FADD32(FMUL32(-1090183496, v2$2), 1107903285)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1562112, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-960002946, v3$1), FADD32(FMUL32(-1090183496, v2$1), 1107903285)), 1069066811));
    $$RF[BV32_ADD(1562112, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-960002946, v3$2), FADD32(FMUL32(-1090183496, v2$2), 1107903285)), 1069066811));
    call {:sourceloc} {:sourceloc_num 118} _LOG_WRITE_$$RF(true, BV32_ADD(1575936, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-963533168, v3$1), FADD32(FMUL32(1070554153, v2$1), 1100884920)), 1069066811)), $$RF[BV32_ADD(1575936, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1575936, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_116"} {:captureState "check_state_116"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_116"} {:sourceloc} {:sourceloc_num 118} _CHECK_WRITE_$$RF(true, BV32_ADD(1575936, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-963533168, v3$2), FADD32(FMUL32(1070554153, v2$2), 1100884920)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1575936, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-963533168, v3$1), FADD32(FMUL32(1070554153, v2$1), 1100884920)), 1069066811));
    $$RF[BV32_ADD(1575936, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-963533168, v3$2), FADD32(FMUL32(1070554153, v2$2), 1100884920)), 1069066811));
    v8$1 := FEXP32(FMUL32(FADD32(FMUL32(1073741824, v2$1), FSUB32(-2147483648, FMUL32(1148127014, v3$1))), 1069066811));
    v8$2 := FEXP32(FMUL32(FADD32(FMUL32(1073741824, v2$2), FSUB32(-2147483648, FMUL32(1148127014, v3$2))), 1069066811));
    call {:sourceloc} {:sourceloc_num 119} _LOG_WRITE_$$RF(true, BV32_ADD(1589760, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4715023343886008320, FP32_CONV64(v8$1))), $$RF[BV32_ADD(1589760, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1589760, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_117"} {:captureState "check_state_117"} {:sourceloc} {:sourceloc_num 119} true;
    call {:check_id "check_state_117"} {:sourceloc} {:sourceloc_num 119} _CHECK_WRITE_$$RF(true, BV32_ADD(1589760, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4715023343886008320, FP32_CONV64(v8$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1589760, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4715023343886008320, FP32_CONV64(v8$1)));
    $$RF[BV32_ADD(1589760, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4715023343886008320, FP32_CONV64(v8$2)));
    call {:sourceloc} {:sourceloc_num 120} _LOG_WRITE_$$RF(true, BV32_ADD(1603584, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4706016144631267328, FP32_CONV64(v8$1))), $$RF[BV32_ADD(1603584, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1603584, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_118"} {:captureState "check_state_118"} {:sourceloc} {:sourceloc_num 120} true;
    call {:check_id "check_state_118"} {:sourceloc} {:sourceloc_num 120} _CHECK_WRITE_$$RF(true, BV32_ADD(1603584, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4706016144631267328, FP32_CONV64(v8$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1603584, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4706016144631267328, FP32_CONV64(v8$1)));
    $$RF[BV32_ADD(1603584, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4706016144631267328, FP32_CONV64(v8$2)));
    call {:sourceloc} {:sourceloc_num 121} _LOG_WRITE_$$RF(true, BV32_ADD(1617408, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1140562876, v3$1), FADD32(FMUL32(1083179008, v2$1), -1056512655)), 1069066811)), $$RF[BV32_ADD(1617408, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1617408, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_119"} {:captureState "check_state_119"} {:sourceloc} {:sourceloc_num 121} true;
    call {:check_id "check_state_119"} {:sourceloc} {:sourceloc_num 121} _CHECK_WRITE_$$RF(true, BV32_ADD(1617408, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1140562876, v3$2), FADD32(FMUL32(1083179008, v2$2), -1056512655)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1617408, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1140562876, v3$1), FADD32(FMUL32(1083179008, v2$1), -1056512655)), 1069066811));
    $$RF[BV32_ADD(1617408, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1140562876, v3$2), FADD32(FMUL32(1083179008, v2$2), -1056512655)), 1069066811));
    call {:sourceloc} {:sourceloc_num 122} _LOG_WRITE_$$RF(true, BV32_ADD(1631232, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1148951484, v3$1), FADD32(FMUL32(1082130432, v2$1), -1057729033)), 1069066811)), $$RF[BV32_ADD(1631232, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1631232, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_120"} {:captureState "check_state_120"} {:sourceloc} {:sourceloc_num 122} true;
    call {:check_id "check_state_120"} {:sourceloc} {:sourceloc_num 122} _CHECK_WRITE_$$RF(true, BV32_ADD(1631232, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1148951484, v3$2), FADD32(FMUL32(1082130432, v2$2), -1057729033)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1631232, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1148951484, v3$1), FADD32(FMUL32(1082130432, v2$1), -1057729033)), 1069066811));
    $$RF[BV32_ADD(1631232, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1148951484, v3$2), FADD32(FMUL32(1082130432, v2$2), -1057729033)), 1069066811));
    call {:sourceloc} {:sourceloc_num 123} _LOG_WRITE_$$RF(true, BV32_ADD(1645056, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$1), FADD32(FMUL32(1073741824, v2$1), 1098969564)), 1069066811)), $$RF[BV32_ADD(1645056, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1645056, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_121"} {:captureState "check_state_121"} {:sourceloc} {:sourceloc_num 123} true;
    call {:check_id "check_state_121"} {:sourceloc} {:sourceloc_num 123} _CHECK_WRITE_$$RF(true, BV32_ADD(1645056, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$2), FADD32(FMUL32(1073741824, v2$2), 1098969564)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1645056, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$1), FADD32(FMUL32(1073741824, v2$1), 1098969564)), 1069066811));
    $$RF[BV32_ADD(1645056, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$2), FADD32(FMUL32(1073741824, v2$2), 1098969564)), 1069066811));
    call {:sourceloc} {:sourceloc_num 124} _LOG_WRITE_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-963872803, v3$1), FADD32(FMUL32(-1052959048, v2$1), 1123998844)), 1069066811)), $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_122"} {:captureState "check_state_122"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_122"} {:sourceloc} {:sourceloc_num 124} _CHECK_WRITE_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-963872803, v3$2), FADD32(FMUL32(-1052959048, v2$2), 1123998844)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-963872803, v3$1), FADD32(FMUL32(-1052959048, v2$1), 1123998844)), 1069066811));
    $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-963872803, v3$2), FADD32(FMUL32(-1052959048, v2$2), 1123998844)), 1069066811));
    call {:sourceloc} {:sourceloc_num 125} _LOG_WRITE_$$RF(true, BV32_ADD(1672704, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1454761505, $$RF[BV32_ADD(1672704, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1672704, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_123"} {:captureState "check_state_123"} {:sourceloc} {:sourceloc_num 125} true;
    call {:check_id "check_state_123"} {:sourceloc} {:sourceloc_num 125} _CHECK_WRITE_$$RF(true, BV32_ADD(1672704, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1454761505);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1672704, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1454761505;
    $$RF[BV32_ADD(1672704, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1454761505;
    call {:sourceloc} {:sourceloc_num 126} _LOG_WRITE_$$RF(true, BV32_ADD(1686528, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1454761505, $$RF[BV32_ADD(1686528, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1686528, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_124"} {:captureState "check_state_124"} {:sourceloc} {:sourceloc_num 126} true;
    call {:check_id "check_state_124"} {:sourceloc} {:sourceloc_num 126} _CHECK_WRITE_$$RF(true, BV32_ADD(1686528, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1454761505);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1686528, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1454761505;
    $$RF[BV32_ADD(1686528, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1454761505;
    call {:sourceloc} {:sourceloc_num 127} _LOG_WRITE_$$RF(true, BV32_ADD(1700352, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1435600103, $$RF[BV32_ADD(1700352, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1700352, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_125"} {:captureState "check_state_125"} {:sourceloc} {:sourceloc_num 127} true;
    call {:check_id "check_state_125"} {:sourceloc} {:sourceloc_num 127} _CHECK_WRITE_$$RF(true, BV32_ADD(1700352, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1435600103);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1700352, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1435600103;
    $$RF[BV32_ADD(1700352, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1435600103;
    call {:sourceloc} {:sourceloc_num 128} _LOG_WRITE_$$RF(true, BV32_ADD(1714176, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1427211495, $$RF[BV32_ADD(1714176, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1714176, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_126"} {:captureState "check_state_126"} {:sourceloc} {:sourceloc_num 128} true;
    call {:check_id "check_state_126"} {:sourceloc} {:sourceloc_num 128} _CHECK_WRITE_$$RF(true, BV32_ADD(1714176, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1427211495);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1714176, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1427211495;
    $$RF[BV32_ADD(1714176, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1427211495;
    call {:sourceloc} {:sourceloc_num 129} _LOG_WRITE_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-981095748, v3$1), FADD32(FMUL32(-1116355953, v2$1), 1107671152)), 1069066811)), $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_127"} {:captureState "check_state_127"} {:sourceloc} {:sourceloc_num 129} true;
    call {:check_id "check_state_127"} {:sourceloc} {:sourceloc_num 129} _CHECK_WRITE_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-981095748, v3$2), FADD32(FMUL32(-1116355953, v2$2), 1107671152)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-981095748, v3$1), FADD32(FMUL32(-1116355953, v2$1), 1107671152)), 1069066811));
    $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-981095748, v3$2), FADD32(FMUL32(-1116355953, v2$2), 1107671152)), 1069066811));
    call {:sourceloc} {:sourceloc_num 130} _LOG_WRITE_$$RF(true, BV32_ADD(1755648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-995543836, v3$1), FADD32(FMUL32(1068960317, v2$1), 1101596580)), 1069066811)), $$RF[BV32_ADD(1755648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1755648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_128"} {:captureState "check_state_128"} {:sourceloc} {:sourceloc_num 130} true;
    call {:check_id "check_state_128"} {:sourceloc} {:sourceloc_num 130} _CHECK_WRITE_$$RF(true, BV32_ADD(1755648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-995543836, v3$2), FADD32(FMUL32(1068960317, v2$2), 1101596580)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1755648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-995543836, v3$1), FADD32(FMUL32(1068960317, v2$1), 1101596580)), 1069066811));
    $$RF[BV32_ADD(1755648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-995543836, v3$2), FADD32(FMUL32(1068960317, v2$2), 1101596580)), 1069066811));
    call {:sourceloc} {:sourceloc_num 131} _LOG_WRITE_$$RF(true, BV32_ADD(1783296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1003891220, v3$1), 1105299053), 1069066811)), $$RF[BV32_ADD(1783296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1783296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_129"} {:captureState "check_state_129"} {:sourceloc} {:sourceloc_num 131} true;
    call {:check_id "check_state_129"} {:sourceloc} {:sourceloc_num 131} _CHECK_WRITE_$$RF(true, BV32_ADD(1783296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1003891220, v3$2), 1105299053), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1783296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1003891220, v3$1), 1105299053), 1069066811));
    $$RF[BV32_ADD(1783296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1003891220, v3$2), 1105299053), 1069066811));
    v9$1 := FEXP32(FMUL32(FMUL32(-998532164, v3$1), 1069066811));
    v9$2 := FEXP32(FMUL32(FMUL32(-998532164, v3$2), 1069066811));
    call {:sourceloc} {:sourceloc_num 132} _LOG_WRITE_$$RF(true, BV32_ADD(1797120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4799510003522207744, FP32_CONV64(v9$1))), $$RF[BV32_ADD(1797120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1797120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_130"} {:captureState "check_state_130"} {:sourceloc} {:sourceloc_num 132} true;
    call {:check_id "check_state_130"} {:sourceloc} {:sourceloc_num 132} _CHECK_WRITE_$$RF(true, BV32_ADD(1797120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4799510003522207744, FP32_CONV64(v9$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1797120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4799510003522207744, FP32_CONV64(v9$1)));
    $$RF[BV32_ADD(1797120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4799510003522207744, FP32_CONV64(v9$2)));
    call {:sourceloc} {:sourceloc_num 133} _LOG_WRITE_$$RF(true, BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v9$1))), $$RF[BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_131"} {:captureState "check_state_131"} {:sourceloc} {:sourceloc_num 133} true;
    call {:check_id "check_state_131"} {:sourceloc} {:sourceloc_num 133} _CHECK_WRITE_$$RF(true, BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v9$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v9$1)));
    $$RF[BV32_ADD(2087424, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4801453603149578240, FP32_CONV64(v9$2)));
    call {:sourceloc} {:sourceloc_num 134} _LOG_WRITE_$$RF(true, BV32_ADD(2557440, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v9$1))), $$RF[BV32_ADD(2557440, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2557440, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_132"} {:captureState "check_state_132"} {:sourceloc} {:sourceloc_num 134} true;
    call {:check_id "check_state_132"} {:sourceloc} {:sourceloc_num 134} _CHECK_WRITE_$$RF(true, BV32_ADD(2557440, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v9$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2557440, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v9$1)));
    $$RF[BV32_ADD(2557440, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v9$2)));
    call {:sourceloc} {:sourceloc_num 135} _LOG_WRITE_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1022564718, v3$1), FADD32(FMUL32(1049247089, v2$1), 1105951995)), 1069066811)), $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_133"} {:captureState "check_state_133"} {:sourceloc} {:sourceloc_num 135} true;
    call {:check_id "check_state_133"} {:sourceloc} {:sourceloc_num 135} _CHECK_WRITE_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1022564718, v3$2), FADD32(FMUL32(1049247089, v2$2), 1105951995)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1022564718, v3$1), FADD32(FMUL32(1049247089, v2$1), 1105951995)), 1069066811));
    $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1022564718, v3$2), FADD32(FMUL32(1049247089, v2$2), 1105951995)), 1069066811));
    call {:sourceloc} {:sourceloc_num 136} _LOG_WRITE_$$RF(true, BV32_ADD(1824768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440368475, $$RF[BV32_ADD(1824768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1824768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_134"} {:captureState "check_state_134"} {:sourceloc} {:sourceloc_num 136} true;
    call {:check_id "check_state_134"} {:sourceloc} {:sourceloc_num 136} _CHECK_WRITE_$$RF(true, BV32_ADD(1824768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440368475);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1824768, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440368475;
    $$RF[BV32_ADD(1824768, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440368475;
    call {:sourceloc} {:sourceloc_num 137} _LOG_WRITE_$$RF(true, BV32_ADD(1838592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1448757083, $$RF[BV32_ADD(1838592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1838592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_135"} {:captureState "check_state_135"} {:sourceloc} {:sourceloc_num 137} true;
    call {:check_id "check_state_135"} {:sourceloc} {:sourceloc_num 137} _CHECK_WRITE_$$RF(true, BV32_ADD(1838592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1448757083);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1838592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1448757083;
    $$RF[BV32_ADD(1838592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1448757083;
    call {:sourceloc} {:sourceloc_num 138} _LOG_WRITE_$$RF(true, BV32_ADD(1852416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1445896060, $$RF[BV32_ADD(1852416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1852416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_136"} {:captureState "check_state_136"} {:sourceloc} {:sourceloc_num 138} true;
    call {:check_id "check_state_136"} {:sourceloc} {:sourceloc_num 138} _CHECK_WRITE_$$RF(true, BV32_ADD(1852416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1445896060);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1852416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1445896060;
    $$RF[BV32_ADD(1852416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1445896060;
    call {:sourceloc} {:sourceloc_num 139} _LOG_WRITE_$$RF(true, BV32_ADD(1866240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1445896060, $$RF[BV32_ADD(1866240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1866240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_137"} {:captureState "check_state_137"} {:sourceloc} {:sourceloc_num 139} true;
    call {:check_id "check_state_137"} {:sourceloc} {:sourceloc_num 139} _CHECK_WRITE_$$RF(true, BV32_ADD(1866240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1445896060);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1866240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1445896060;
    $$RF[BV32_ADD(1866240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1445896060;
    call {:sourceloc} {:sourceloc_num 140} _LOG_WRITE_$$RF(true, BV32_ADD(1880064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1440420927, $$RF[BV32_ADD(1880064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1880064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_138"} {:captureState "check_state_138"} {:sourceloc} {:sourceloc_num 140} true;
    call {:check_id "check_state_138"} {:sourceloc} {:sourceloc_num 140} _CHECK_WRITE_$$RF(true, BV32_ADD(1880064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1440420927);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1880064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1440420927;
    $$RF[BV32_ADD(1880064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1440420927;
    call {:sourceloc} {:sourceloc_num 141} _LOG_WRITE_$$RF(true, BV32_ADD(1893888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1128328939, v3$1), FADD32(FMUL32(1070470267, v2$1), 1096923931)), 1069066811)), $$RF[BV32_ADD(1893888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1893888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_139"} {:captureState "check_state_139"} {:sourceloc} {:sourceloc_num 141} true;
    call {:check_id "check_state_139"} {:sourceloc} {:sourceloc_num 141} _CHECK_WRITE_$$RF(true, BV32_ADD(1893888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1128328939, v3$2), FADD32(FMUL32(1070470267, v2$2), 1096923931)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1893888, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1128328939, v3$1), FADD32(FMUL32(1070470267, v2$1), 1096923931)), 1069066811));
    $$RF[BV32_ADD(1893888, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1128328939, v3$2), FADD32(FMUL32(1070470267, v2$2), 1096923931)), 1069066811));
    call {:sourceloc} {:sourceloc_num 142} _LOG_WRITE_$$RF(true, BV32_ADD(1907712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1062133284, v3$1), FADD32(FMUL32(1049918177, v2$1), 1104374424)), 1069066811)), $$RF[BV32_ADD(1907712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1907712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_140"} {:captureState "check_state_140"} {:sourceloc} {:sourceloc_num 142} true;
    call {:check_id "check_state_140"} {:sourceloc} {:sourceloc_num 142} _CHECK_WRITE_$$RF(true, BV32_ADD(1907712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1062133284, v3$2), FADD32(FMUL32(1049918177, v2$2), 1104374424)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1907712, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1062133284, v3$1), FADD32(FMUL32(1049918177, v2$1), 1104374424)), 1069066811));
    $$RF[BV32_ADD(1907712, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1062133284, v3$2), FADD32(FMUL32(1049918177, v2$2), 1104374424)), 1069066811));
    call {:sourceloc} {:sourceloc_num 143} _LOG_WRITE_$$RF(true, BV32_ADD(1921536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1006755878, v3$1), FADD32(FMUL32(-1078858875, v2$1), 1108965436)), 1069066811)), $$RF[BV32_ADD(1921536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1921536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_141"} {:captureState "check_state_141"} {:sourceloc} {:sourceloc_num 143} true;
    call {:check_id "check_state_141"} {:sourceloc} {:sourceloc_num 143} _CHECK_WRITE_$$RF(true, BV32_ADD(1921536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1006755878, v3$2), FADD32(FMUL32(-1078858875, v2$2), 1108965436)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1921536, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1006755878, v3$1), FADD32(FMUL32(-1078858875, v2$1), 1108965436)), 1069066811));
    $$RF[BV32_ADD(1921536, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1006755878, v3$2), FADD32(FMUL32(-1078858875, v2$2), 1108965436)), 1069066811));
    call {:sourceloc} {:sourceloc_num 144} _LOG_WRITE_$$RF(true, BV32_ADD(1935360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1427211495, $$RF[BV32_ADD(1935360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1935360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_142"} {:captureState "check_state_142"} {:sourceloc} {:sourceloc_num 144} true;
    call {:check_id "check_state_142"} {:sourceloc} {:sourceloc_num 144} _CHECK_WRITE_$$RF(true, BV32_ADD(1935360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1427211495);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1935360, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1427211495;
    $$RF[BV32_ADD(1935360, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1427211495;
    call {:sourceloc} {:sourceloc_num 145} _LOG_WRITE_$$RF(true, BV32_ADD(1949184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1133901157, v3$1), 1102691157), 1069066811)), $$RF[BV32_ADD(1949184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1949184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_143"} {:captureState "check_state_143"} {:sourceloc} {:sourceloc_num 145} true;
    call {:check_id "check_state_143"} {:sourceloc} {:sourceloc_num 145} _CHECK_WRITE_$$RF(true, BV32_ADD(1949184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1133901157, v3$2), 1102691157), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1949184, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1133901157, v3$1), 1102691157), 1069066811));
    $$RF[BV32_ADD(1949184, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1133901157, v3$2), 1102691157), 1069066811));
    call {:sourceloc} {:sourceloc_num 146} _LOG_WRITE_$$RF(true, BV32_ADD(1963008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1453608751, $$RF[BV32_ADD(1963008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1963008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_144"} {:captureState "check_state_144"} {:sourceloc} {:sourceloc_num 146} true;
    call {:check_id "check_state_144"} {:sourceloc} {:sourceloc_num 146} _CHECK_WRITE_$$RF(true, BV32_ADD(1963008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1453608751);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1963008, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1453608751;
    $$RF[BV32_ADD(1963008, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1453608751;
    call {:sourceloc} {:sourceloc_num 147} _LOG_WRITE_$$RF(true, BV32_ADD(1976832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1387694603, $$RF[BV32_ADD(1976832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1976832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_145"} {:captureState "check_state_145"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_145"} {:sourceloc} {:sourceloc_num 147} _CHECK_WRITE_$$RF(true, BV32_ADD(1976832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1387694603);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1976832, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1387694603;
    $$RF[BV32_ADD(1976832, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1387694603;
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1437984289, $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_146"} {:captureState "check_state_146"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_146"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1437984289);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1437984289;
    $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1437984289;
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$RF(true, BV32_ADD(2004480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-971873395, v3$1), FADD32(FMUL32(-1070260552, v2$1), 1113500551)), 1069066811)), $$RF[BV32_ADD(2004480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2004480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_147"} {:captureState "check_state_147"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_147"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$RF(true, BV32_ADD(2004480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-971873395, v3$2), FADD32(FMUL32(-1070260552, v2$2), 1113500551)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2004480, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-971873395, v3$1), FADD32(FMUL32(-1070260552, v2$1), 1113500551)), 1069066811));
    $$RF[BV32_ADD(2004480, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-971873395, v3$2), FADD32(FMUL32(-1070260552, v2$2), 1113500551)), 1069066811));
    call {:sourceloc} {:sourceloc_num 150} _LOG_WRITE_$$RF(true, BV32_ADD(2018304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-960994887, v3$1), FADD32(FMUL32(-1055761891, v2$1), 1119939476)), 1069066811)), $$RF[BV32_ADD(2018304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2018304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_148"} {:captureState "check_state_148"} {:sourceloc} {:sourceloc_num 150} true;
    call {:check_id "check_state_148"} {:sourceloc} {:sourceloc_num 150} _CHECK_WRITE_$$RF(true, BV32_ADD(2018304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-960994887, v3$2), FADD32(FMUL32(-1055761891, v2$2), 1119939476)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2018304, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-960994887, v3$1), FADD32(FMUL32(-1055761891, v2$1), 1119939476)), 1069066811));
    $$RF[BV32_ADD(2018304, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-960994887, v3$2), FADD32(FMUL32(-1055761891, v2$2), 1119939476)), 1069066811));
    call {:sourceloc} {:sourceloc_num 151} _LOG_WRITE_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1454761505, $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_149"} {:captureState "check_state_149"} {:sourceloc} {:sourceloc_num 151} true;
    call {:check_id "check_state_149"} {:sourceloc} {:sourceloc_num 151} _CHECK_WRITE_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1454761505);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1454761505;
    $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1454761505;
    call {:sourceloc} {:sourceloc_num 152} _LOG_WRITE_$$RF(true, BV32_ADD(2045952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1453569412, $$RF[BV32_ADD(2045952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2045952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_150"} {:captureState "check_state_150"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_150"} {:sourceloc} {:sourceloc_num 152} _CHECK_WRITE_$$RF(true, BV32_ADD(2045952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1453569412);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2045952, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1453569412;
    $$RF[BV32_ADD(2045952, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1453569412;
    v10$1 := FEXP32(FMUL32(FMUL32(-990143556, v3$1), 1069066811));
    v10$2 := FEXP32(FMUL32(FMUL32(-990143556, v3$2), 1069066811));
    call {:sourceloc} {:sourceloc_num 153} _LOG_WRITE_$$RF(true, BV32_ADD(2059776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$1))), $$RF[BV32_ADD(2059776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2059776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_151"} {:captureState "check_state_151"} {:sourceloc} {:sourceloc_num 153} true;
    call {:check_id "check_state_151"} {:sourceloc} {:sourceloc_num 153} _CHECK_WRITE_$$RF(true, BV32_ADD(2059776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2059776, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$1)));
    $$RF[BV32_ADD(2059776, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$2)));
    call {:sourceloc} {:sourceloc_num 154} _LOG_WRITE_$$RF(true, BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$1))), $$RF[BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_152"} {:captureState "check_state_152"} {:sourceloc} {:sourceloc_num 154} true;
    call {:check_id "check_state_152"} {:sourceloc} {:sourceloc_num 154} _CHECK_WRITE_$$RF(true, BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$1)));
    $$RF[BV32_ADD(2073600, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4805957202776948736, FP32_CONV64(v10$2)));
    call {:sourceloc} {:sourceloc_num 155} _LOG_WRITE_$$RF(true, BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1375888026, $$RF[BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_153"} {:captureState "check_state_153"} {:sourceloc} {:sourceloc_num 155} true;
    call {:check_id "check_state_153"} {:sourceloc} {:sourceloc_num 155} _CHECK_WRITE_$$RF(true, BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1375888026);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1375888026;
    $$RF[BV32_ADD(2101248, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1375888026;
    call {:sourceloc} {:sourceloc_num 156} _LOG_WRITE_$$RF(true, BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1350966342, $$RF[BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_154"} {:captureState "check_state_154"} {:sourceloc} {:sourceloc_num 156} true;
    call {:check_id "check_state_154"} {:sourceloc} {:sourceloc_num 156} _CHECK_WRITE_$$RF(true, BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1350966342);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1350966342;
    $$RF[BV32_ADD(2115072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1350966342;
    call {:sourceloc} {:sourceloc_num 157} _LOG_WRITE_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-953254261, v3$1), FADD32(FMUL32(1054951342, v2$1), 1106095879)), 1069066811)), $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_155"} {:captureState "check_state_155"} {:sourceloc} {:sourceloc_num 157} true;
    call {:check_id "check_state_155"} {:sourceloc} {:sourceloc_num 157} _CHECK_WRITE_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-953254261, v3$2), FADD32(FMUL32(1054951342, v2$2), 1106095879)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-953254261, v3$1), FADD32(FMUL32(1054951342, v2$1), 1106095879)), 1069066811));
    $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-953254261, v3$2), FADD32(FMUL32(1054951342, v2$2), 1106095879)), 1069066811));
    call {:sourceloc} {:sourceloc_num 158} _LOG_WRITE_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1000016211, v3$1), FADD32(FMUL32(1055421104, v2$1), 1105046003)), 1069066811)), $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_156"} {:captureState "check_state_156"} {:sourceloc} {:sourceloc_num 158} true;
    call {:check_id "check_state_156"} {:sourceloc} {:sourceloc_num 158} _CHECK_WRITE_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1000016211, v3$2), FADD32(FMUL32(1055421104, v2$2), 1105046003)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1000016211, v3$1), FADD32(FMUL32(1055421104, v2$1), 1105046003)), 1069066811));
    $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1000016211, v3$2), FADD32(FMUL32(1055421104, v2$2), 1105046003)), 1069066811));
    call {:sourceloc} {:sourceloc_num 159} _LOG_WRITE_$$RF(true, BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-976509633, v3$1), FADD32(FMUL32(1073154621, v2$1), 1099820662)), 1069066811)), $$RF[BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_157"} {:captureState "check_state_157"} {:sourceloc} {:sourceloc_num 159} true;
    call {:check_id "check_state_157"} {:sourceloc} {:sourceloc_num 159} _CHECK_WRITE_$$RF(true, BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-976509633, v3$2), FADD32(FMUL32(1073154621, v2$2), 1099820662)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-976509633, v3$1), FADD32(FMUL32(1073154621, v2$1), 1099820662)), 1069066811));
    $$RF[BV32_ADD(2156544, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-976509633, v3$2), FADD32(FMUL32(1073154621, v2$2), 1099820662)), 1069066811));
    call {:sourceloc} {:sourceloc_num 160} _LOG_WRITE_$$RF(true, BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-991215367, v3$1), FADD32(FMUL32(1072986849, v2$1), 1099185628)), 1069066811)), $$RF[BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_158"} {:captureState "check_state_158"} {:sourceloc} {:sourceloc_num 160} true;
    call {:check_id "check_state_158"} {:sourceloc} {:sourceloc_num 160} _CHECK_WRITE_$$RF(true, BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-991215367, v3$2), FADD32(FMUL32(1072986849, v2$2), 1099185628)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-991215367, v3$1), FADD32(FMUL32(1072986849, v2$1), 1099185628)), 1069066811));
    $$RF[BV32_ADD(2170368, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-991215367, v3$2), FADD32(FMUL32(1072986849, v2$2), 1099185628)), 1069066811));
    v11$1 := FEXP32(FMUL32(FADD32(FMUL32(1072315761, v2$1), FSUB32(-2147483648, FMUL32(1121806931, v3$1))), 1069066811));
    v11$2 := FEXP32(FMUL32(FADD32(FMUL32(1072315761, v2$2), FSUB32(-2147483648, FMUL32(1121806931, v3$2))), 1069066811));
    call {:sourceloc} {:sourceloc_num 161} _LOG_WRITE_$$RF(true, BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4715919170984738816, FP32_CONV64(v11$1))), $$RF[BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_159"} {:captureState "check_state_159"} {:sourceloc} {:sourceloc_num 161} true;
    call {:check_id "check_state_159"} {:sourceloc} {:sourceloc_num 161} _CHECK_WRITE_$$RF(true, BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4715919170984738816, FP32_CONV64(v11$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4715919170984738816, FP32_CONV64(v11$1)));
    $$RF[BV32_ADD(2184192, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4715919170984738816, FP32_CONV64(v11$2)));
    call {:sourceloc} {:sourceloc_num 162} _LOG_WRITE_$$RF(true, BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FP64_CONV32(FMUL64(4690340682231971840, FP32_CONV64(v11$1))), $$RF[BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_160"} {:captureState "check_state_160"} {:sourceloc} {:sourceloc_num 162} true;
    call {:check_id "check_state_160"} {:sourceloc} {:sourceloc_num 162} _CHECK_WRITE_$$RF(true, BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FP64_CONV32(FMUL64(4690340682231971840, FP32_CONV64(v11$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FP64_CONV32(FMUL64(4690340682231971840, FP32_CONV64(v11$1)));
    $$RF[BV32_ADD(2198016, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FP64_CONV32(FMUL64(4690340682231971840, FP32_CONV64(v11$2)));
    call {:sourceloc} {:sourceloc_num 163} _LOG_WRITE_$$RF(true, BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-996327083, v3$1), FADD32(FMUL32(1073741824, v2$1), 1097960201)), 1069066811)), $$RF[BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_161"} {:captureState "check_state_161"} {:sourceloc} {:sourceloc_num 163} true;
    call {:check_id "check_state_161"} {:sourceloc} {:sourceloc_num 163} _CHECK_WRITE_$$RF(true, BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-996327083, v3$2), FADD32(FMUL32(1073741824, v2$2), 1097960201)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-996327083, v3$1), FADD32(FMUL32(1073741824, v2$1), 1097960201)), 1069066811));
    $$RF[BV32_ADD(2211840, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-996327083, v3$2), FADD32(FMUL32(1073741824, v2$2), 1097960201)), 1069066811));
    call {:sourceloc} {:sourceloc_num 164} _LOG_WRITE_$$RF(true, BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-957413594, v3$1), 1106967759), 1069066811)), $$RF[BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_162"} {:captureState "check_state_162"} {:sourceloc} {:sourceloc_num 164} true;
    call {:check_id "check_state_162"} {:sourceloc} {:sourceloc_num 164} _CHECK_WRITE_$$RF(true, BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-957413594, v3$2), 1106967759), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-957413594, v3$1), 1106967759), 1069066811));
    $$RF[BV32_ADD(2225664, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-957413594, v3$2), 1106967759), 1069066811));
    call {:sourceloc} {:sourceloc_num 165} _LOG_WRITE_$$RF(true, BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-975427516, v3$1), 1105369062), 1069066811)), $$RF[BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_163"} {:captureState "check_state_163"} {:sourceloc} {:sourceloc_num 165} true;
    call {:check_id "check_state_163"} {:sourceloc} {:sourceloc_num 165} _CHECK_WRITE_$$RF(true, BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-975427516, v3$2), 1105369062), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-975427516, v3$1), 1105369062), 1069066811));
    $$RF[BV32_ADD(2239488, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-975427516, v3$2), 1105369062), 1069066811));
    call {:sourceloc} {:sourceloc_num 166} _LOG_WRITE_$$RF(true, BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-981754948, v3$1), FADD32(FMUL32(1073741824, v2$1), 1098969564)), 1069066811)), $$RF[BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_164"} {:captureState "check_state_164"} {:sourceloc} {:sourceloc_num 166} true;
    call {:check_id "check_state_164"} {:sourceloc} {:sourceloc_num 166} _CHECK_WRITE_$$RF(true, BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-981754948, v3$2), FADD32(FMUL32(1073741824, v2$2), 1098969564)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-981754948, v3$1), FADD32(FMUL32(1073741824, v2$1), 1098969564)), 1069066811));
    $$RF[BV32_ADD(2253312, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-981754948, v3$2), FADD32(FMUL32(1073741824, v2$2), 1098969564)), 1069066811));
    call {:sourceloc} {:sourceloc_num 167} _LOG_WRITE_$$RF(true, BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$1), 1106576279), 1069066811)), $$RF[BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_165"} {:captureState "check_state_165"} {:sourceloc} {:sourceloc_num 167} true;
    call {:check_id "check_state_165"} {:sourceloc} {:sourceloc_num 167} _CHECK_WRITE_$$RF(true, BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$2), 1106576279), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$1), 1106576279), 1069066811));
    $$RF[BV32_ADD(2267136, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-985877299, v3$2), 1106576279), 1069066811));
    call {:sourceloc} {:sourceloc_num 168} _LOG_WRITE_$$RF(true, BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1446372897, $$RF[BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_166"} {:captureState "check_state_166"} {:sourceloc} {:sourceloc_num 168} true;
    call {:check_id "check_state_166"} {:sourceloc} {:sourceloc_num 168} _CHECK_WRITE_$$RF(true, BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1446372897);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1446372897;
    $$RF[BV32_ADD(2280960, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1446372897;
    call {:sourceloc} {:sourceloc_num 169} _LOG_WRITE_$$RF(true, BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1446372897, $$RF[BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_167"} {:captureState "check_state_167"} {:sourceloc} {:sourceloc_num 169} true;
    call {:check_id "check_state_167"} {:sourceloc} {:sourceloc_num 169} _CHECK_WRITE_$$RF(true, BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1446372897);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1446372897;
    $$RF[BV32_ADD(2294784, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1446372897;
    call {:sourceloc} {:sourceloc_num 170} _LOG_WRITE_$$RF(true, BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-980374337, v3$1), FADD32(FMUL32(1073741824, v2$1), 1095062211)), 1069066811)), $$RF[BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_168"} {:captureState "check_state_168"} {:sourceloc} {:sourceloc_num 170} true;
    call {:check_id "check_state_168"} {:sourceloc} {:sourceloc_num 170} _CHECK_WRITE_$$RF(true, BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-980374337, v3$2), FADD32(FMUL32(1073741824, v2$2), 1095062211)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-980374337, v3$1), FADD32(FMUL32(1073741824, v2$1), 1095062211)), 1069066811));
    $$RF[BV32_ADD(2308608, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-980374337, v3$2), FADD32(FMUL32(1073741824, v2$2), 1095062211)), 1069066811));
    call {:sourceloc} {:sourceloc_num 171} _LOG_WRITE_$$RF(true, BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-982373301, v3$1), 1104424394), 1069066811)), $$RF[BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_169"} {:captureState "check_state_169"} {:sourceloc} {:sourceloc_num 171} true;
    call {:check_id "check_state_169"} {:sourceloc} {:sourceloc_num 171} _CHECK_WRITE_$$RF(true, BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-982373301, v3$2), 1104424394), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-982373301, v3$1), 1104424394), 1069066811));
    $$RF[BV32_ADD(2322432, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-982373301, v3$2), 1104424394), 1069066811));
    call {:sourceloc} {:sourceloc_num 172} _LOG_WRITE_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1001994939, v3$1), FADD32(FMUL32(-1082298204, v2$1), 1109601688)), 1069066811)), $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_170"} {:captureState "check_state_170"} {:sourceloc} {:sourceloc_num 172} true;
    call {:check_id "check_state_170"} {:sourceloc} {:sourceloc_num 172} _CHECK_WRITE_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1001994939, v3$2), FADD32(FMUL32(-1082298204, v2$2), 1109601688)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1001994939, v3$1), FADD32(FMUL32(-1082298204, v2$1), 1109601688)), 1069066811));
    $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1001994939, v3$2), FADD32(FMUL32(-1082298204, v2$2), 1109601688)), 1069066811));
    call {:sourceloc} {:sourceloc_num 173} _LOG_WRITE_$$RF(true, BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1407767717, $$RF[BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_171"} {:captureState "check_state_171"} {:sourceloc} {:sourceloc_num 173} true;
    call {:check_id "check_state_171"} {:sourceloc} {:sourceloc_num 173} _CHECK_WRITE_$$RF(true, BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1407767717);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1407767717;
    $$RF[BV32_ADD(2350080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1407767717;
    call {:sourceloc} {:sourceloc_num 174} _LOG_WRITE_$$RF(true, BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1432971688, $$RF[BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_172"} {:captureState "check_state_172"} {:sourceloc} {:sourceloc_num 174} true;
    call {:check_id "check_state_172"} {:sourceloc} {:sourceloc_num 174} _CHECK_WRITE_$$RF(true, BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1432971688);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1432971688;
    $$RF[BV32_ADD(2363904, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1432971688;
    call {:sourceloc} {:sourceloc_num 175} _LOG_WRITE_$$RF(true, BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1452401161, $$RF[BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_173"} {:captureState "check_state_173"} {:sourceloc} {:sourceloc_num 175} true;
    call {:check_id "check_state_173"} {:sourceloc} {:sourceloc_num 175} _CHECK_WRITE_$$RF(true, BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1452401161);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1452401161;
    $$RF[BV32_ADD(2377728, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1452401161;
    call {:sourceloc} {:sourceloc_num 176} _LOG_WRITE_$$RF(true, BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1351942905, $$RF[BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_174"} {:captureState "check_state_174"} {:sourceloc} {:sourceloc_num 176} true;
    call {:check_id "check_state_174"} {:sourceloc} {:sourceloc_num 176} _CHECK_WRITE_$$RF(true, BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1351942905);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1351942905;
    $$RF[BV32_ADD(2391552, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1351942905;
    call {:sourceloc} {:sourceloc_num 177} _LOG_WRITE_$$RF(true, BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1384886985, $$RF[BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_175"} {:captureState "check_state_175"} {:sourceloc} {:sourceloc_num 177} true;
    call {:check_id "check_state_175"} {:sourceloc} {:sourceloc_num 177} _CHECK_WRITE_$$RF(true, BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1384886985);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1384886985;
    $$RF[BV32_ADD(2405376, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1384886985;
    call {:sourceloc} {:sourceloc_num 178} _LOG_WRITE_$$RF(true, BV32_ADD(2419200, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1384886985, $$RF[BV32_ADD(2419200, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2419200, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_176"} {:captureState "check_state_176"} {:sourceloc} {:sourceloc_num 178} true;
    call {:check_id "check_state_176"} {:sourceloc} {:sourceloc_num 178} _CHECK_WRITE_$$RF(true, BV32_ADD(2419200, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1384886985);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2419200, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1384886985;
    $$RF[BV32_ADD(2419200, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1384886985;
    call {:sourceloc} {:sourceloc_num 179} _LOG_WRITE_$$RF(true, BV32_ADD(2433024, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1437507452, $$RF[BV32_ADD(2433024, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2433024, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_177"} {:captureState "check_state_177"} {:sourceloc} {:sourceloc_num 179} true;
    call {:check_id "check_state_177"} {:sourceloc} {:sourceloc_num 179} _CHECK_WRITE_$$RF(true, BV32_ADD(2433024, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1437507452);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2433024, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1437507452;
    $$RF[BV32_ADD(2433024, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1437507452;
    call {:sourceloc} {:sourceloc_num 180} _LOG_WRITE_$$RF(true, BV32_ADD(2446848, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1007349497, v3$1), 1102518204), 1069066811)), $$RF[BV32_ADD(2446848, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2446848, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_178"} {:captureState "check_state_178"} {:sourceloc} {:sourceloc_num 180} true;
    call {:check_id "check_state_178"} {:sourceloc} {:sourceloc_num 180} _CHECK_WRITE_$$RF(true, BV32_ADD(2446848, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1007349497, v3$2), 1102518204), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2446848, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1007349497, v3$1), 1102518204), 1069066811));
    $$RF[BV32_ADD(2446848, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1007349497, v3$2), 1102518204), 1069066811));
    call {:sourceloc} {:sourceloc_num 181} _LOG_WRITE_$$RF(true, BV32_ADD(2460672, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1457145691, $$RF[BV32_ADD(2460672, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2460672, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_179"} {:captureState "check_state_179"} {:sourceloc} {:sourceloc_num 181} true;
    call {:check_id "check_state_179"} {:sourceloc} {:sourceloc_num 181} _CHECK_WRITE_$$RF(true, BV32_ADD(2460672, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1457145691);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2460672, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1457145691;
    $$RF[BV32_ADD(2460672, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1457145691;
    call {:sourceloc} {:sourceloc_num 182} _LOG_WRITE_$$RF(true, BV32_ADD(2474496, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-982723701, v3$1), FADD32(FMUL32(1072902963, v2$1), 1100250057)), 1069066811)), $$RF[BV32_ADD(2474496, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2474496, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_180"} {:captureState "check_state_180"} {:sourceloc} {:sourceloc_num 182} true;
    call {:check_id "check_state_180"} {:sourceloc} {:sourceloc_num 182} _CHECK_WRITE_$$RF(true, BV32_ADD(2474496, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-982723701, v3$2), FADD32(FMUL32(1072902963, v2$2), 1100250057)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2474496, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-982723701, v3$1), FADD32(FMUL32(1072902963, v2$1), 1100250057)), 1069066811));
    $$RF[BV32_ADD(2474496, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-982723701, v3$2), FADD32(FMUL32(1072902963, v2$2), 1100250057)), 1069066811));
    call {:sourceloc} {:sourceloc_num 183} _LOG_WRITE_$$RF(true, BV32_ADD(2488320, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-986516264, v3$1), FADD32(FMUL32(1073070735, v2$1), 1100120376)), 1069066811)), $$RF[BV32_ADD(2488320, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2488320, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_181"} {:captureState "check_state_181"} {:sourceloc} {:sourceloc_num 183} true;
    call {:check_id "check_state_181"} {:sourceloc} {:sourceloc_num 183} _CHECK_WRITE_$$RF(true, BV32_ADD(2488320, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-986516264, v3$2), FADD32(FMUL32(1073070735, v2$2), 1100120376)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2488320, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-986516264, v3$1), FADD32(FMUL32(1073070735, v2$1), 1100120376)), 1069066811));
    $$RF[BV32_ADD(2488320, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-986516264, v3$2), FADD32(FMUL32(1073070735, v2$2), 1100120376)), 1069066811));
    call {:sourceloc} {:sourceloc_num 184} _LOG_WRITE_$$RF(true, BV32_ADD(2502144, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1009064395, v3$1), FADD32(FMUL32(1074245140, v2$1), 1097942578)), 1069066811)), $$RF[BV32_ADD(2502144, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2502144, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_182"} {:captureState "check_state_182"} {:sourceloc} {:sourceloc_num 184} true;
    call {:check_id "check_state_182"} {:sourceloc} {:sourceloc_num 184} _CHECK_WRITE_$$RF(true, BV32_ADD(2502144, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1009064395, v3$2), FADD32(FMUL32(1074245140, v2$2), 1097942578)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2502144, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1009064395, v3$1), FADD32(FMUL32(1074245140, v2$1), 1097942578)), 1069066811));
    $$RF[BV32_ADD(2502144, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1009064395, v3$2), FADD32(FMUL32(1074245140, v2$2), 1097942578)), 1069066811));
    call {:sourceloc} {:sourceloc_num 185} _LOG_WRITE_$$RF(true, BV32_ADD(2515968, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1133142644, v3$1), 1106939688), 1069066811)), $$RF[BV32_ADD(2515968, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2515968, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_183"} {:captureState "check_state_183"} {:sourceloc} {:sourceloc_num 185} true;
    call {:check_id "check_state_183"} {:sourceloc} {:sourceloc_num 185} _CHECK_WRITE_$$RF(true, BV32_ADD(2515968, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1133142644, v3$2), 1106939688), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2515968, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1133142644, v3$1), 1106939688), 1069066811));
    $$RF[BV32_ADD(2515968, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1133142644, v3$2), 1106939688), 1069066811));
    call {:sourceloc} {:sourceloc_num 186} _LOG_WRITE_$$RF(true, BV32_ADD(2529792, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-979086102, v3$1), FADD32(FMUL32(1071560786, v2$1), 1098520026)), 1069066811)), $$RF[BV32_ADD(2529792, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2529792, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_184"} {:captureState "check_state_184"} {:sourceloc} {:sourceloc_num 186} true;
    call {:check_id "check_state_184"} {:sourceloc} {:sourceloc_num 186} _CHECK_WRITE_$$RF(true, BV32_ADD(2529792, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-979086102, v3$2), FADD32(FMUL32(1071560786, v2$2), 1098520026)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2529792, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-979086102, v3$1), FADD32(FMUL32(1071560786, v2$1), 1098520026)), 1069066811));
    $$RF[BV32_ADD(2529792, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-979086102, v3$2), FADD32(FMUL32(1071560786, v2$2), 1098520026)), 1069066811));
    call {:sourceloc} {:sourceloc_num 187} _LOG_WRITE_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1463150113, $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_185"} {:captureState "check_state_185"} {:sourceloc} {:sourceloc_num 187} true;
    call {:check_id "check_state_185"} {:sourceloc} {:sourceloc_num 187} _CHECK_WRITE_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1463150113);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1463150113;
    $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1463150113;
    call {:sourceloc} {:sourceloc_num 188} _LOG_WRITE_$$RF(true, BV32_ADD(2571264, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1411044631, $$RF[BV32_ADD(2571264, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2571264, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_186"} {:captureState "check_state_186"} {:sourceloc} {:sourceloc_num 188} true;
    call {:check_id "check_state_186"} {:sourceloc} {:sourceloc_num 188} _CHECK_WRITE_$$RF(true, BV32_ADD(2571264, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1411044631);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2571264, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1411044631;
    $$RF[BV32_ADD(2571264, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1411044631;
    call {:sourceloc} {:sourceloc_num 189} _LOG_WRITE_$$RF(true, BV32_ADD(2585088, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1421874645, $$RF[BV32_ADD(2585088, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2585088, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_187"} {:captureState "check_state_187"} {:sourceloc} {:sourceloc_num 189} true;
    call {:check_id "check_state_187"} {:sourceloc} {:sourceloc_num 189} _CHECK_WRITE_$$RF(true, BV32_ADD(2585088, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1421874645);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2585088, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1421874645;
    $$RF[BV32_ADD(2585088, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1421874645;
    call {:sourceloc} {:sourceloc_num 190} _LOG_WRITE_$$RF(true, BV32_ADD(2598912, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1448757083, $$RF[BV32_ADD(2598912, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2598912, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_188"} {:captureState "check_state_188"} {:sourceloc} {:sourceloc_num 190} true;
    call {:check_id "check_state_188"} {:sourceloc} {:sourceloc_num 190} _CHECK_WRITE_$$RF(true, BV32_ADD(2598912, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1448757083);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2598912, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1448757083;
    $$RF[BV32_ADD(2598912, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1448757083;
    call {:sourceloc} {:sourceloc_num 191} _LOG_WRITE_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-993191210, v3$1), 1106362386), 1069066811)), $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_189"} {:captureState "check_state_189"} {:sourceloc} {:sourceloc_num 191} true;
    call {:check_id "check_state_189"} {:sourceloc} {:sourceloc_num 191} _CHECK_WRITE_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-993191210, v3$2), 1106362386), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-993191210, v3$1), 1106362386), 1069066811));
    $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-993191210, v3$2), 1106362386), 1069066811));
    call {:sourceloc} {:sourceloc_num 192} _LOG_WRITE_$$RF(true, BV32_ADD(2626560, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-978333773, v3$1), FADD32(FMUL32(-1072106045, v2$1), 1112310252)), 1069066811)), $$RF[BV32_ADD(2626560, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2626560, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_190"} {:captureState "check_state_190"} {:sourceloc} {:sourceloc_num 192} true;
    call {:check_id "check_state_190"} {:sourceloc} {:sourceloc_num 192} _CHECK_WRITE_$$RF(true, BV32_ADD(2626560, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-978333773, v3$2), FADD32(FMUL32(-1072106045, v2$2), 1112310252)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2626560, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-978333773, v3$1), FADD32(FMUL32(-1072106045, v2$1), 1112310252)), 1069066811));
    $$RF[BV32_ADD(2626560, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-978333773, v3$2), FADD32(FMUL32(-1072106045, v2$2), 1112310252)), 1069066811));
    call {:sourceloc} {:sourceloc_num 193} _LOG_WRITE_$$RF(true, BV32_ADD(2640384, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-996368306, v3$1), FADD32(FMUL32(1075838976, v2$1), 1094759013)), 1069066811)), $$RF[BV32_ADD(2640384, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2640384, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_191"} {:captureState "check_state_191"} {:sourceloc} {:sourceloc_num 193} true;
    call {:check_id "check_state_191"} {:sourceloc} {:sourceloc_num 193} _CHECK_WRITE_$$RF(true, BV32_ADD(2640384, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-996368306, v3$2), FADD32(FMUL32(1075838976, v2$2), 1094759013)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2640384, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-996368306, v3$1), FADD32(FMUL32(1075838976, v2$1), 1094759013)), 1069066811));
    $$RF[BV32_ADD(2640384, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-996368306, v3$2), FADD32(FMUL32(1075838976, v2$2), 1094759013)), 1069066811));
    call {:sourceloc} {:sourceloc_num 194} _LOG_WRITE_$$RF(true, BV32_ADD(2654208, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-1021014714, v3$1), FADD32(FMUL32(1070805811, v2$1), 1100272371)), 1069066811)), $$RF[BV32_ADD(2654208, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2654208, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_192"} {:captureState "check_state_192"} {:sourceloc} {:sourceloc_num 194} true;
    call {:check_id "check_state_192"} {:sourceloc} {:sourceloc_num 194} _CHECK_WRITE_$$RF(true, BV32_ADD(2654208, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-1021014714, v3$2), FADD32(FMUL32(1070805811, v2$2), 1100272371)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2654208, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-1021014714, v3$1), FADD32(FMUL32(1070805811, v2$1), 1100272371)), 1069066811));
    $$RF[BV32_ADD(2654208, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-1021014714, v3$2), FADD32(FMUL32(1070805811, v2$2), 1100272371)), 1069066811));
    call {:sourceloc} {:sourceloc_num 195} _LOG_WRITE_$$RF(true, BV32_ADD(2668032, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1140101172, v3$1), FADD32(FMUL32(1070805811, v2$1), 1099626373)), 1069066811)), $$RF[BV32_ADD(2668032, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2668032, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_193"} {:captureState "check_state_193"} {:sourceloc} {:sourceloc_num 195} true;
    call {:check_id "check_state_193"} {:sourceloc} {:sourceloc_num 195} _CHECK_WRITE_$$RF(true, BV32_ADD(2668032, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1140101172, v3$2), FADD32(FMUL32(1070805811, v2$2), 1099626373)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2668032, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1140101172, v3$1), FADD32(FMUL32(1070805811, v2$1), 1099626373)), 1069066811));
    $$RF[BV32_ADD(2668032, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1140101172, v3$2), FADD32(FMUL32(1070805811, v2$2), 1099626373)), 1069066811));
    call {:sourceloc} {:sourceloc_num 196} _LOG_WRITE_$$RF(true, BV32_ADD(2681856, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-986124640, v3$1), FADD32(FMUL32(1060320051, v2$1), 1104106605)), 1069066811)), $$RF[BV32_ADD(2681856, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2681856, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_194"} {:captureState "check_state_194"} {:sourceloc} {:sourceloc_num 196} true;
    call {:check_id "check_state_194"} {:sourceloc} {:sourceloc_num 196} _CHECK_WRITE_$$RF(true, BV32_ADD(2681856, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-986124640, v3$2), FADD32(FMUL32(1060320051, v2$2), 1104106605)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2681856, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-986124640, v3$1), FADD32(FMUL32(1060320051, v2$1), 1104106605)), 1069066811));
    $$RF[BV32_ADD(2681856, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-986124640, v3$2), FADD32(FMUL32(1060320051, v2$2), 1104106605)), 1069066811));
    call {:sourceloc} {:sourceloc_num 197} _LOG_WRITE_$$RF(true, BV32_ADD(2695680, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(1125512549, v3$1), FADD32(FMUL32(1073741824, v2$1), 1097803406)), 1069066811)), $$RF[BV32_ADD(2695680, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2695680, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_195"} {:captureState "check_state_195"} {:sourceloc} {:sourceloc_num 197} true;
    call {:check_id "check_state_195"} {:sourceloc} {:sourceloc_num 197} _CHECK_WRITE_$$RF(true, BV32_ADD(2695680, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(1125512549, v3$2), FADD32(FMUL32(1073741824, v2$2), 1097803406)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2695680, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(1125512549, v3$1), FADD32(FMUL32(1073741824, v2$1), 1097803406)), 1069066811));
    $$RF[BV32_ADD(2695680, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(1125512549, v3$2), FADD32(FMUL32(1073741824, v2$2), 1097803406)), 1069066811));
    call {:sourceloc} {:sourceloc_num 198} _LOG_WRITE_$$RF(true, BV32_ADD(2709504, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-975520269, v3$1), FADD32(FMUL32(1076258406, v2$1), 1091745369)), 1069066811)), $$RF[BV32_ADD(2709504, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2709504, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_196"} {:captureState "check_state_196"} {:sourceloc} {:sourceloc_num 198} true;
    call {:check_id "check_state_196"} {:sourceloc} {:sourceloc_num 198} _CHECK_WRITE_$$RF(true, BV32_ADD(2709504, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-975520269, v3$2), FADD32(FMUL32(1076258406, v2$2), 1091745369)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2709504, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-975520269, v3$1), FADD32(FMUL32(1076258406, v2$1), 1091745369)), 1069066811));
    $$RF[BV32_ADD(2709504, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-975520269, v3$2), FADD32(FMUL32(1076258406, v2$2), 1091745369)), 1069066811));
    call {:sourceloc} {:sourceloc_num 199} _LOG_WRITE_$$RF(true, BV32_ADD(2723328, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-986547181, v3$1), FADD32(FMUL32(1080033280, v2$1), 1061804119)), 1069066811)), $$RF[BV32_ADD(2723328, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2723328, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_197"} {:captureState "check_state_197"} {:sourceloc} {:sourceloc_num 199} true;
    call {:check_id "check_state_197"} {:sourceloc} {:sourceloc_num 199} _CHECK_WRITE_$$RF(true, BV32_ADD(2723328, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-986547181, v3$2), FADD32(FMUL32(1080033280, v2$2), 1061804119)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2723328, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-986547181, v3$1), FADD32(FMUL32(1080033280, v2$1), 1061804119)), 1069066811));
    $$RF[BV32_ADD(2723328, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-986547181, v3$2), FADD32(FMUL32(1080033280, v2$2), 1061804119)), 1069066811));
    call {:sourceloc} {:sourceloc_num 200} _LOG_WRITE_$$RF(true, BV32_ADD(2737152, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-976968244, v3$1), FADD32(FMUL32(-1069883064, v2$1), 1113737232)), 1069066811)), $$RF[BV32_ADD(2737152, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2737152, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_198"} {:captureState "check_state_198"} {:sourceloc} {:sourceloc_num 200} true;
    call {:check_id "check_state_198"} {:sourceloc} {:sourceloc_num 200} _CHECK_WRITE_$$RF(true, BV32_ADD(2737152, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-976968244, v3$2), FADD32(FMUL32(-1069883064, v2$2), 1113737232)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2737152, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-976968244, v3$1), FADD32(FMUL32(-1069883064, v2$1), 1113737232)), 1069066811));
    $$RF[BV32_ADD(2737152, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-976968244, v3$2), FADD32(FMUL32(-1069883064, v2$2), 1113737232)), 1069066811));
    call {:sourceloc} {:sourceloc_num 201} _LOG_WRITE_$$RF(true, BV32_ADD(2750976, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1406241838, $$RF[BV32_ADD(2750976, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2750976, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_199"} {:captureState "check_state_199"} {:sourceloc} {:sourceloc_num 201} true;
    call {:check_id "check_state_199"} {:sourceloc} {:sourceloc_num 201} _CHECK_WRITE_$$RF(true, BV32_ADD(2750976, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1406241838);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2750976, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1406241838;
    $$RF[BV32_ADD(2750976, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1406241838;
    call {:sourceloc} {:sourceloc_num 202} _LOG_WRITE_$$RF(true, BV32_ADD(2764800, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1454284668, $$RF[BV32_ADD(2764800, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2764800, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_200"} {:captureState "check_state_200"} {:sourceloc} {:sourceloc_num 202} true;
    call {:check_id "check_state_200"} {:sourceloc} {:sourceloc_num 202} _CHECK_WRITE_$$RF(true, BV32_ADD(2764800, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1454284668);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2764800, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1454284668;
    $$RF[BV32_ADD(2764800, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1454284668;
    call {:sourceloc} {:sourceloc_num 203} _LOG_WRITE_$$RF(true, BV32_ADD(2778624, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1437507452, $$RF[BV32_ADD(2778624, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2778624, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_201"} {:captureState "check_state_201"} {:sourceloc} {:sourceloc_num 203} true;
    call {:check_id "check_state_201"} {:sourceloc} {:sourceloc_num 203} _CHECK_WRITE_$$RF(true, BV32_ADD(2778624, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1437507452);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2778624, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1437507452;
    $$RF[BV32_ADD(2778624, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1437507452;
    call {:sourceloc} {:sourceloc_num 204} _LOG_WRITE_$$RF(true, BV32_ADD(2792448, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1369940824, $$RF[BV32_ADD(2792448, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2792448, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_202"} {:captureState "check_state_202"} {:sourceloc} {:sourceloc_num 204} true;
    call {:check_id "check_state_202"} {:sourceloc} {:sourceloc_num 204} _CHECK_WRITE_$$RF(true, BV32_ADD(2792448, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1369940824);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2792448, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1369940824;
    $$RF[BV32_ADD(2792448, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1369940824;
    call {:sourceloc} {:sourceloc_num 205} _LOG_WRITE_$$RF(true, BV32_ADD(2806272, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1437507452, $$RF[BV32_ADD(2806272, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2806272, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_203"} {:captureState "check_state_203"} {:sourceloc} {:sourceloc_num 205} true;
    call {:check_id "check_state_203"} {:sourceloc} {:sourceloc_num 205} _CHECK_WRITE_$$RF(true, BV32_ADD(2806272, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1437507452);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2806272, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1437507452;
    $$RF[BV32_ADD(2806272, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1437507452;
    call {:sourceloc} {:sourceloc_num 206} _LOG_WRITE_$$RF(true, BV32_ADD(2820096, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 1428165169, $$RF[BV32_ADD(2820096, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2820096, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_204"} {:captureState "check_state_204"} {:sourceloc} {:sourceloc_num 206} true;
    call {:check_id "check_state_204"} {:sourceloc} {:sourceloc_num 206} _CHECK_WRITE_$$RF(true, BV32_ADD(2820096, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), 1428165169);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2820096, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := 1428165169;
    $$RF[BV32_ADD(2820096, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := 1428165169;
    call {:sourceloc} {:sourceloc_num 207} _LOG_WRITE_$$RF(true, BV32_ADD(2833920, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FEXP32(FMUL32(FADD32(FMUL32(-971291628, v3$1), FADD32(FMUL32(-1062794691, v2$1), 1117132384)), 1069066811)), $$RF[BV32_ADD(2833920, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2833920, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_205"} {:captureState "check_state_205"} {:sourceloc} {:sourceloc_num 207} true;
    call {:check_id "check_state_205"} {:sourceloc} {:sourceloc_num 207} _CHECK_WRITE_$$RF(true, BV32_ADD(2833920, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FEXP32(FMUL32(FADD32(FMUL32(-971291628, v3$2), FADD32(FMUL32(-1062794691, v2$2), 1117132384)), 1069066811)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2833920, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FEXP32(FMUL32(FADD32(FMUL32(-971291628, v3$1), FADD32(FMUL32(-1062794691, v2$1), 1117132384)), 1069066811));
    $$RF[BV32_ADD(2833920, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FEXP32(FMUL32(FADD32(FMUL32(-971291628, v3$2), FADD32(FMUL32(-1062794691, v2$2), 1117132384)), 1069066811));
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
