type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "v"} {:global} $$v: [int]int;

axiom {:array_info "$$v"} {:global} {:elem_width 8} {:source_name "v"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v: bool;

axiom {:array_info "$$vterm"} {:elem_width 8} {:source_name "vterm"} {:source_elem_width 64} {:source_dimensions "1"} true;

const _WATCHED_OFFSET: int;

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

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function SI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "addForces_k"} {:kernel} $_Z11addForces_kP6float2iiiiffij($dx: int, $dy: int, $spx: int, $spy: int, $fx: int, $fy: int, $r: int, $pitch: int);
  requires {:sourceloc_num 0} {:thread 1} (if $dx == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $dy == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $spx == 1 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $spy == 1 then 1 else 0) != 0;
  requires {:sourceloc_num 4} {:thread 1} (if $r == 4 then 1 else 0) != 0;
  requires {:sourceloc_num 5} {:thread 1} (if $pitch == 4096 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$v && !_WRITE_HAS_OCCURRED_$$v && !_ATOMIC_HAS_OCCURRED_$$v;
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
  modifies _READ_HAS_OCCURRED_$$v, _WRITE_HAS_OCCURRED_$$v, _WRITE_READ_BENIGN_FLAG_$$v, _WRITE_READ_BENIGN_FLAG_$$v;



implementation {:source_name "addForces_k"} {:kernel} $_Z11addForces_kP6float2iiiiffij($dx: int, $dy: int, $spx: int, $spy: int, $fx: int, $fy: int, $r: int, $pitch: int)
{
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


  $0:
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), $$v[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8))]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), $$v[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v0$1 := $$v[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8))];
    v0$2 := $$v[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8))];
    $$vterm$0$1 := v0$1;
    $$vterm$0$2 := v0$2;
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 1), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 1), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v1$1 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 1)];
    v1$2 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 1)];
    $$vterm$1$1 := v1$1;
    $$vterm$1$2 := v1$2;
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 2), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 2), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v2$1 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 2)];
    v2$2 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 2)];
    $$vterm$2$1 := v2$1;
    $$vterm$2$2 := v2$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 3), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 3), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v3$1 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 3)];
    v3$2 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 3)];
    $$vterm$3$1 := v3$1;
    $$vterm$3$2 := v3$2;
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 4), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 4), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v4$1 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 4)];
    v4$2 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 4)];
    $$vterm$4$1 := v4$1;
    $$vterm$4$2 := v4$2;
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 5), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 5), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v5$1 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 5)];
    v5$2 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 5)];
    $$vterm$5$1 := v5$1;
    $$vterm$5$2 := v5$2;
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 6), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 6)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 6), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 6)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v6$1 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 6)];
    v6$2 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 6)];
    $$vterm$6$1 := v6$1;
    $$vterm$6$2 := v6$2;
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 7), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 7)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 7), $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 7)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$v"} true;
    v7$1 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 7)];
    v7$2 := $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 7)];
    $$vterm$7$1 := v7$1;
    $$vterm$7$2 := v7$2;
    v8$1 := BV32_SUB(local_id_x$1, $r);
    v8$2 := BV32_SUB(local_id_x$2, $r);
    v9$1 := BV32_SUB(local_id_y$1, $r);
    v9$2 := BV32_SUB(local_id_y$2, $r);
    v10$1 := FDIV32(1065353216, FADD32(FADD32(1065353216, SI32_TO_FP32(BV32_MUL(BV32_MUL(BV32_MUL(v8$1, v8$1), v8$1), v8$1))), SI32_TO_FP32(BV32_MUL(BV32_MUL(BV32_MUL(v9$1, v9$1), v9$1), v9$1))));
    v10$2 := FDIV32(1065353216, FADD32(FADD32(1065353216, SI32_TO_FP32(BV32_MUL(BV32_MUL(BV32_MUL(v8$2, v8$2), v8$2), v8$2))), SI32_TO_FP32(BV32_MUL(BV32_MUL(BV32_MUL(v9$2, v9$2), v9$2), v9$2))));
    v11$1 := $$vterm$0$1;
    v11$2 := $$vterm$0$2;
    v12$1 := $$vterm$1$1;
    v12$2 := $$vterm$1$2;
    v13$1 := $$vterm$2$1;
    v13$2 := $$vterm$2$2;
    v14$1 := $$vterm$3$1;
    v14$2 := $$vterm$3$2;
    v15$1 := FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v14$1, v13$1), v12$1), v11$1), FMUL32(v10$1, $fx));
    v15$2 := FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v14$2, v13$2), v12$2), v11$2), FMUL32(v10$2, $fx));
    $$vterm$0$1 := BV_EXTRACT(v15$1, 8, 0);
    $$vterm$0$2 := BV_EXTRACT(v15$2, 8, 0);
    $$vterm$1$1 := BV_EXTRACT(v15$1, 16, 8);
    $$vterm$1$2 := BV_EXTRACT(v15$2, 16, 8);
    $$vterm$2$1 := BV_EXTRACT(v15$1, 24, 16);
    $$vterm$2$2 := BV_EXTRACT(v15$2, 24, 16);
    $$vterm$3$1 := BV_EXTRACT(v15$1, 32, 24);
    $$vterm$3$2 := BV_EXTRACT(v15$2, 32, 24);
    v16$1 := $$vterm$4$1;
    v16$2 := $$vterm$4$2;
    v17$1 := $$vterm$5$1;
    v17$2 := $$vterm$5$2;
    v18$1 := $$vterm$6$1;
    v18$2 := $$vterm$6$2;
    v19$1 := $$vterm$7$1;
    v19$2 := $$vterm$7$2;
    v20$1 := FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v19$1, v18$1), v17$1), v16$1), FMUL32(v10$1, $fy));
    v20$2 := FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v19$2, v18$2), v17$2), v16$2), FMUL32(v10$2, $fy));
    $$vterm$4$1 := BV_EXTRACT(v20$1, 8, 0);
    $$vterm$4$2 := BV_EXTRACT(v20$2, 8, 0);
    $$vterm$5$1 := BV_EXTRACT(v20$1, 16, 8);
    $$vterm$5$2 := BV_EXTRACT(v20$2, 16, 8);
    $$vterm$6$1 := BV_EXTRACT(v20$1, 24, 16);
    $$vterm$6$2 := BV_EXTRACT(v20$2, 24, 16);
    $$vterm$7$1 := BV_EXTRACT(v20$1, 32, 24);
    $$vterm$7$2 := BV_EXTRACT(v20$2, 32, 24);
    v21$1 := $$vterm$0$1;
    v21$2 := $$vterm$0$2;
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), v21$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), v21$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8))] := v21$1;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8))] := v21$2;
    v22$1 := $$vterm$1$1;
    v22$2 := $$vterm$1$2;
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 1), v22$1, $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 1), v22$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 1)] := v22$1;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 1)] := v22$2;
    v23$1 := $$vterm$2$1;
    v23$2 := $$vterm$2$2;
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 2), v23$1, $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 2), v23$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 2)] := v23$1;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 2)] := v23$2;
    v24$1 := $$vterm$3$1;
    v24$2 := $$vterm$3$2;
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 3), v24$1, $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 3), v24$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 3)] := v24$1;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 3)] := v24$2;
    v25$1 := $$vterm$4$1;
    v25$2 := $$vterm$4$2;
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 4), v25$1, $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 4), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 4)] := v25$1;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 4)] := v25$2;
    v26$1 := $$vterm$5$1;
    v26$2 := $$vterm$5$2;
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 5), v26$1, $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 5)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 5));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 5), v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 5)] := v26$1;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 5)] := v26$2;
    v27$1 := $$vterm$6$1;
    v27$2 := $$vterm$6$2;
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 6), v27$1, $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 6)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 6));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 6), v27$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 6)] := v27$1;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 6)] := v27$2;
    v28$1 := $$vterm$7$1;
    v28$2 := $$vterm$7$2;
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 7), v28$1, $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 7)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 7));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$v(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 7), v28$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, $spy), $pitch), BV32_MUL(local_id_x$1, 8)), BV32_MUL($spx, 8)), 7)] := v28$1;
    $$v[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$2, $spy), $pitch), BV32_MUL(local_id_x$2, 8)), BV32_MUL($spx, 8)), 7)] := v28$2;
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 9 then 1 else 0) != 0;

axiom (if group_size_y == 9 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$vterm$0$1: int;

var $$vterm$0$2: int;

var $$vterm$1$1: int;

var $$vterm$1$2: int;

var $$vterm$2$1: int;

var $$vterm$2$2: int;

var $$vterm$3$1: int;

var $$vterm$3$2: int;

var $$vterm$4$1: int;

var $$vterm$4$2: int;

var $$vterm$5$1: int;

var $$vterm$5$2: int;

var $$vterm$6$1: int;

var $$vterm$6$2: int;

var $$vterm$7$1: int;

var $$vterm$7$2: int;

const _WATCHED_VALUE_$$v: int;

procedure {:inline 1} _LOG_READ_$$v(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$v;



implementation {:inline 1} _LOG_READ_$$v(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v == _value then true else _READ_HAS_OCCURRED_$$v);
    return;
}



procedure _CHECK_READ_$$v(_P: bool, _offset: int, _value: int);
  requires {:source_name "v"} {:array "$$v"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$v);
  requires {:source_name "v"} {:array "$$v"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$v: bool;

procedure {:inline 1} _LOG_WRITE_$$v(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$v, _WRITE_READ_BENIGN_FLAG_$$v;



implementation {:inline 1} _LOG_WRITE_$$v(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v == _value then true else _WRITE_HAS_OCCURRED_$$v);
    _WRITE_READ_BENIGN_FLAG_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$v);
    return;
}



procedure _CHECK_WRITE_$$v(_P: bool, _offset: int, _value: int);
  requires {:source_name "v"} {:array "$$v"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v != _value);
  requires {:source_name "v"} {:array "$$v"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v != _value);
  requires {:source_name "v"} {:array "$$v"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$v(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$v;



implementation {:inline 1} _LOG_ATOMIC_$$v(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$v);
    return;
}



procedure _CHECK_ATOMIC_$$v(_P: bool, _offset: int);
  requires {:source_name "v"} {:array "$$v"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);
  requires {:source_name "v"} {:array "$$v"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$v;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$v := (if _P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$v);
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
