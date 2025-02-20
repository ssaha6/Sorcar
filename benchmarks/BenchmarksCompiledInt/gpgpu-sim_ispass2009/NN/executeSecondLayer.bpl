type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$Layer2_Neurons_GPU"} {:global} {:elem_width 32} {:source_name "Layer2_Neurons_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU: bool;

axiom {:array_info "$$Layer2_Weights_GPU"} {:global} {:elem_width 32} {:source_name "Layer2_Weights_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer2_Weights_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer2_Weights_GPU: bool;

var {:source_name "Layer3_Neurons_GPU"} {:global} $$Layer3_Neurons_GPU: [int]int;

axiom {:array_info "$$Layer3_Neurons_GPU"} {:global} {:elem_width 32} {:source_name "Layer3_Neurons_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer3_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer3_Neurons_GPU: bool;

var {:source_name "kernelTemplate2"} {:constant} $$kernelTemplate2$1: [int]int;

var {:source_name "kernelTemplate2"} {:constant} $$kernelTemplate2$2: [int]int;

axiom {:array_info "$$kernelTemplate2"} {:constant} {:elem_width 32} {:source_name "kernelTemplate2"} {:source_elem_width 32} {:source_dimensions "25"} true;

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

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "executeSecondLayer"} {:kernel} $_Z18executeSecondLayerPfS_S_();
  requires !_READ_HAS_OCCURRED_$$Layer2_Neurons_GPU && !_WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU;
  requires !_READ_HAS_OCCURRED_$$Layer2_Weights_GPU && !_WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer2_Weights_GPU;
  requires !_READ_HAS_OCCURRED_$$Layer3_Neurons_GPU && !_WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer3_Neurons_GPU;
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
  modifies _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU;



implementation {:source_name "executeSecondLayer"} {:kernel} $_Z18executeSecondLayerPfS_S_()
{
  var $result.0$1: int;
  var $result.0$2: int;
  var $result.1$1: int;
  var $result.1$2: int;
  var $i.0: int;
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
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9: bool;
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


  $0:
    v0$1 := BV32_MUL(BV32_MUL(group_id_x$1, 26), 6);
    v0$2 := BV32_MUL(BV32_MUL(group_id_x$2, 26), 6);
    v1$1 := BV32_MUL(local_id_x$1, 2);
    v1$2 := BV32_MUL(local_id_x$2, 2);
    v2$1 := BV32_MUL(local_id_y$1, 2);
    v2$2 := BV32_MUL(local_id_y$2, 2);
    havoc v3$1, v3$2;
    v4$1 := FADD32(0, v3$1);
    v4$2 := FADD32(0, v3$2);
    v5$1 := group_id_x$1 == 1;
    v5$2 := group_id_x$2 == 1;
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
    p0$1 := (if v5$1 then v5$1 else p0$1);
    p0$2 := (if v5$2 then v5$2 else p0$2);
    p5$1 := (if !v5$1 then !v5$1 else p5$1);
    p5$2 := (if !v5$2 then !v5$2 else p5$2);
    v6$1 := (if p0$1 then local_id_x$1 == 0 else v6$1);
    v6$2 := (if p0$2 then local_id_x$2 == 0 else v6$2);
    p1$1 := (if p0$1 && v6$1 then v6$1 else p1$1);
    p1$2 := (if p0$2 && v6$2 then v6$2 else p1$2);
    p4$1 := (if p0$1 && !v6$1 then !v6$1 else p4$1);
    p4$2 := (if p0$2 && !v6$2 then !v6$2 else p4$2);
    v7$1 := (if p1$1 then local_id_y$1 == 0 else v7$1);
    v7$2 := (if p1$2 then local_id_y$2 == 0 else v7$2);
    p2$1 := (if p1$1 && v7$1 then v7$1 else p2$1);
    p2$2 := (if p1$2 && v7$2 then v7$2 else p2$2);
    p3$1 := (if p1$1 && !v7$1 then !v7$1 else p3$1);
    p3$2 := (if p1$2 && !v7$2 then !v7$2 else p3$2);
    $result.0$1 := (if p2$1 then FADD32(v4$1, 0) else $result.0$1);
    $result.0$2 := (if p2$2 then FADD32(v4$2, 0) else $result.0$2);
    $result.0$1 := (if p3$1 then v4$1 else $result.0$1);
    $result.0$2 := (if p3$2 then v4$2 else $result.0$2);
    $result.0$1 := (if p4$1 then v4$1 else $result.0$1);
    $result.0$2 := (if p4$2 then v4$2 else $result.0$2);
    $result.0$1 := (if p5$1 then v4$1 else $result.0$1);
    $result.0$2 := (if p5$2 then v4$2 else $result.0$2);
    v8$1 := BV32_ADD(v0$1, 1);
    v8$2 := BV32_ADD(v0$2, 1);
    $result.1$1, $i.0 := $result.0$1, 0;
    $result.1$2 := $result.0$2;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 6} true;
    v9 := BV32_SLT($i.0, 25);
    goto $truebb2, $falsebb2;

  $falsebb2:
    assume {:partition} !v9;
    call {:sourceloc_num 28} v28$1, v28$2 := $tanhf(FP64_CONV32(FMUL64(4604180019078461075, FP32_CONV64($result.1$1))), FP64_CONV32(FMUL64(4604180019078461075, FP32_CONV64($result.1$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "$tanhf"} true;
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$Layer3_Neurons_GPU(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(25, group_id_x$1), BV32_MUL(local_id_y$1, 5)), local_id_x$1), BV32_MUL(1250, group_id_y$1)), FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v28$1))), $$Layer3_Neurons_GPU[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(25, group_id_x$1), BV32_MUL(local_id_y$1, 5)), local_id_x$1), BV32_MUL(1250, group_id_y$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(25, group_id_x$2), BV32_MUL(local_id_y$2, 5)), local_id_x$2), BV32_MUL(1250, group_id_y$2)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$Layer3_Neurons_GPU(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(25, group_id_x$2), BV32_MUL(local_id_y$2, 5)), local_id_x$2), BV32_MUL(1250, group_id_y$2)), FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v28$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Layer3_Neurons_GPU"} true;
    $$Layer3_Neurons_GPU[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(25, group_id_x$1), BV32_MUL(local_id_y$1, 5)), local_id_x$1), BV32_MUL(1250, group_id_y$1))] := FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v28$1)));
    $$Layer3_Neurons_GPU[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(25, group_id_x$2), BV32_MUL(local_id_y$2, 5)), local_id_x$2), BV32_MUL(1250, group_id_y$2))] := FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v28$2)));
    return;

  $truebb2:
    assume {:partition} v9;
    v10$1 := $$kernelTemplate2$1[$i.0];
    v10$2 := $$kernelTemplate2$2[$i.0];
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    v13$1 := $$kernelTemplate2$1[$i.0];
    v13$2 := $$kernelTemplate2$2[$i.0];
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    v16$1 := $$kernelTemplate2$1[$i.0];
    v16$2 := $$kernelTemplate2$2[$i.0];
    havoc v17$1, v17$2;
    havoc v18$1, v18$2;
    v19$1 := $$kernelTemplate2$1[$i.0];
    v19$2 := $$kernelTemplate2$2[$i.0];
    havoc v20$1, v20$2;
    havoc v21$1, v21$2;
    v22$1 := $$kernelTemplate2$1[$i.0];
    v22$2 := $$kernelTemplate2$2[$i.0];
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    v25$1 := $$kernelTemplate2$1[$i.0];
    v25$2 := $$kernelTemplate2$2[$i.0];
    havoc v26$1, v26$2;
    havoc v27$1, v27$2;
    $result.1$1, $i.0 := FADD32(FADD32(FADD32(FADD32(FADD32(FADD32($result.1$1, FMUL32(v11$1, v12$1)), FMUL32(v14$1, v15$1)), FMUL32(v17$1, v18$1)), FMUL32(v20$1, v21$1)), FMUL32(v23$1, v24$1)), FMUL32(v26$1, v27$1)), BV32_ADD($i.0, 1);
    $result.1$2 := FADD32(FADD32(FADD32(FADD32(FADD32(FADD32($result.1$2, FMUL32(v11$2, v12$2)), FMUL32(v14$2, v15$2)), FMUL32(v17$2, v18$2)), FMUL32(v20$2, v21$2)), FMUL32(v23$2, v24$2)), FMUL32(v26$2, v27$2));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;
}



procedure {:source_name "tanhf"} $tanhf($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 5 then 1 else 0) != 0;

axiom (if group_size_y == 5 then 1 else 0) != 0;

axiom (if num_groups_x == 50 then 1 else 0) != 0;

axiom (if num_groups_y == 10 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$Layer2_Neurons_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU;



implementation {:inline 1} _LOG_READ_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU);
    return;
}



procedure _CHECK_READ_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU != _value);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU != _value);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer2_Neurons_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer2_Neurons_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer2_Neurons_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU);
    return;
}



const _WATCHED_VALUE_$$Layer2_Weights_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer2_Weights_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer2_Weights_GPU;



implementation {:inline 1} _LOG_READ_$$Layer2_Weights_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer2_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Weights_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer2_Weights_GPU);
    return;
}



procedure _CHECK_READ_$$Layer2_Weights_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer2_Weights_GPU"} {:array "$$Layer2_Weights_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU);
  requires {:source_name "Layer2_Weights_GPU"} {:array "$$Layer2_Weights_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer2_Weights_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer2_Weights_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Weights_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Weights_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer2_Weights_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer2_Weights_GPU"} {:array "$$Layer2_Weights_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Weights_GPU != _value);
  requires {:source_name "Layer2_Weights_GPU"} {:array "$$Layer2_Weights_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Weights_GPU != _value);
  requires {:source_name "Layer2_Weights_GPU"} {:array "$$Layer2_Weights_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer2_Weights_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer2_Weights_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer2_Weights_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer2_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer2_Weights_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer2_Weights_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer2_Weights_GPU"} {:array "$$Layer2_Weights_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer2_Weights_GPU"} {:array "$$Layer2_Weights_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer2_Weights_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer2_Weights_GPU);
    return;
}



const _WATCHED_VALUE_$$Layer3_Neurons_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer3_Neurons_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer3_Neurons_GPU;



implementation {:inline 1} _LOG_READ_$$Layer3_Neurons_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer3_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer3_Neurons_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer3_Neurons_GPU);
    return;
}



procedure _CHECK_READ_$$Layer3_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer3_Neurons_GPU"} {:array "$$Layer3_Neurons_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU);
  requires {:source_name "Layer3_Neurons_GPU"} {:array "$$Layer3_Neurons_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer3_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer3_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer3_Neurons_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer3_Neurons_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer3_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer3_Neurons_GPU"} {:array "$$Layer3_Neurons_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer3_Neurons_GPU != _value);
  requires {:source_name "Layer3_Neurons_GPU"} {:array "$$Layer3_Neurons_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer3_Neurons_GPU != _value);
  requires {:source_name "Layer3_Neurons_GPU"} {:array "$$Layer3_Neurons_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer3_Neurons_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer3_Neurons_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer3_Neurons_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer3_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer3_Neurons_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer3_Neurons_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer3_Neurons_GPU"} {:array "$$Layer3_Neurons_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer3_Neurons_GPU"} {:array "$$Layer3_Neurons_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer3_Neurons_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer3_Neurons_GPU);
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
