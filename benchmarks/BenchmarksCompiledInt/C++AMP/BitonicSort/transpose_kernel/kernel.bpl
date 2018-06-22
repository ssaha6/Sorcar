type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$data_in"} {:global} {:elem_width 32} {:source_name "data_in"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_in: bool;

var {:source_name "data_out"} {:global} $$data_out: [int]int;

axiom {:array_info "$$data_out"} {:global} {:elem_width 32} {:source_name "data_out"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_out: bool;

var {:source_name "transpose_shared_data"} {:group_shared} $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data: [bv1][int]int;

axiom {:array_info "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:group_shared} {:elem_width 32} {:source_name "transpose_shared_data"} {:source_elem_width 32} {:source_dimensions "16,16"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,16"} _READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,16"} _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,16"} _ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data: bool;

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

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "transpose_kernel"} {:kernel} $_Z16transpose_kernelPfS_jj($width: int, $height: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$data_in && !_WRITE_HAS_OCCURRED_$$data_in && !_ATOMIC_HAS_OCCURRED_$$data_in;
  requires !_READ_HAS_OCCURRED_$$data_out && !_WRITE_HAS_OCCURRED_$$data_out && !_ATOMIC_HAS_OCCURRED_$$data_out;
  requires !_READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && !_WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && !_ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;
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
  modifies $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data, _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data, _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data, _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data, $$data_out, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data, _WRITE_HAS_OCCURRED_$$data_out, _WRITE_READ_BENIGN_FLAG_$$data_out, _WRITE_READ_BENIGN_FLAG_$$data_out;



implementation {:source_name "transpose_kernel"} {:kernel} $_Z16transpose_kernelPfS_jj($width: int, $height: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;


  __partitioned_block_$0_0:
    havoc v0$1, v0$2;
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(true, BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1), v0$1, $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(true, BV32_ADD(BV32_MUL(local_id_y$2, 16), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(true, BV32_ADD(BV32_MUL(local_id_y$2, 16), local_id_x$2), v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} true;
    $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1)] := v0$1;
    $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 16), local_id_x$2)] := v0$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 4} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(true, BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1), $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(true, BV32_ADD(BV32_MUL(local_id_y$2, 16), local_id_x$2), $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 16), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} true;
    v1$1 := $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1)];
    v1$2 := $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 16), local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$data_out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $width), BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1)), v1$1, $$data_out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $width), BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2), $width), BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$data_out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2), $width), BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2)), v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out"} true;
    $$data_out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $width), BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1))] := v1$1;
    $$data_out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2), $width), BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2))] := v1$2;
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data, $$data_out, _TRACKING;



const _WATCHED_VALUE_$$data_in: int;

procedure {:inline 1} _LOG_READ_$$data_in(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_in;



implementation {:inline 1} _LOG_READ_$$data_in(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in == _value then true else _READ_HAS_OCCURRED_$$data_in);
    return;
}



procedure _CHECK_READ_$$data_in(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_in"} {:array "$$data_in"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_in);
  requires {:source_name "data_in"} {:array "$$data_in"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_in: bool;

procedure {:inline 1} _LOG_WRITE_$$data_in(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_in, _WRITE_READ_BENIGN_FLAG_$$data_in;



implementation {:inline 1} _LOG_WRITE_$$data_in(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in == _value then true else _WRITE_HAS_OCCURRED_$$data_in);
    _WRITE_READ_BENIGN_FLAG_$$data_in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_in);
    return;
}



procedure _CHECK_WRITE_$$data_in(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_in"} {:array "$$data_in"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in != _value);
  requires {:source_name "data_in"} {:array "$$data_in"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in != _value);
  requires {:source_name "data_in"} {:array "$$data_in"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_in(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_in;



implementation {:inline 1} _LOG_ATOMIC_$$data_in(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_in);
    return;
}



procedure _CHECK_ATOMIC_$$data_in(_P: bool, _offset: int);
  requires {:source_name "data_in"} {:array "$$data_in"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_in"} {:array "$$data_in"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_in(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_in;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_in(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_in := (if _P && _WRITE_HAS_OCCURRED_$$data_in && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_in);
    return;
}



const _WATCHED_VALUE_$$data_out: int;

procedure {:inline 1} _LOG_READ_$$data_out(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_out;



implementation {:inline 1} _LOG_READ_$$data_out(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out == _value then true else _READ_HAS_OCCURRED_$$data_out);
    return;
}



procedure _CHECK_READ_$$data_out(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_out"} {:array "$$data_out"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_out);
  requires {:source_name "data_out"} {:array "$$data_out"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_out: bool;

procedure {:inline 1} _LOG_WRITE_$$data_out(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_out, _WRITE_READ_BENIGN_FLAG_$$data_out;



implementation {:inline 1} _LOG_WRITE_$$data_out(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out == _value then true else _WRITE_HAS_OCCURRED_$$data_out);
    _WRITE_READ_BENIGN_FLAG_$$data_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_out);
    return;
}



procedure _CHECK_WRITE_$$data_out(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_out"} {:array "$$data_out"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out != _value);
  requires {:source_name "data_out"} {:array "$$data_out"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out != _value);
  requires {:source_name "data_out"} {:array "$$data_out"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_out(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_out;



implementation {:inline 1} _LOG_ATOMIC_$$data_out(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_out);
    return;
}



procedure _CHECK_ATOMIC_$$data_out(_P: bool, _offset: int);
  requires {:source_name "data_out"} {:array "$$data_out"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_out"} {:array "$$data_out"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_out;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_out := (if _P && _WRITE_HAS_OCCURRED_$$data_out && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_out);
    return;
}



const _WATCHED_VALUE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data: int;

procedure {:inline 1} _LOG_READ_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;



implementation {:inline 1} _LOG_READ_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data == _value then true else _READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data);
    return;
}



procedure _CHECK_READ_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "transpose_shared_data"} {:array "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "transpose_shared_data"} {:array "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data, _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;



implementation {:inline 1} _LOG_WRITE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data);
    return;
}



procedure _CHECK_WRITE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "transpose_shared_data"} {:array "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "transpose_shared_data"} {:array "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "transpose_shared_data"} {:array "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int);
  requires {:source_name "transpose_shared_data"} {:array "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "transpose_shared_data"} {:array "$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$data_out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data_out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data_out;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$data_out;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ16transpose_kernelPfS_jjE21transpose_shared_data;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



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
