function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool,
 b0010: bool,
 b0011: bool,
 b0012: bool,
 b0013: bool,
 b0014: bool,
 b0015: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$data_in_pos"} {:global} {:elem_width 32} {:source_name "data_in_pos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_in_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_in_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_in_pos: bool;

axiom {:array_info "$$data_in_vel"} {:global} {:elem_width 32} {:source_name "data_in_vel"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_in_vel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_in_vel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_in_vel: bool;

var {:source_name "data_out_pos"} {:global} $$data_out_pos: [int]int;

axiom {:array_info "$$data_out_pos"} {:global} {:elem_width 32} {:source_name "data_out_pos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_out_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_out_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_out_pos: bool;

var {:source_name "data_out_vel"} {:global} $$data_out_vel: [int]int;

axiom {:array_info "$$data_out_vel"} {:global} {:elem_width 32} {:source_name "data_out_vel"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_out_vel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_out_vel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_out_vel: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i35"} {:elem_width 32} {:source_name "b.i35"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i34"} {:elem_width 32} {:source_name "a.i34"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i"} {:elem_width 32} {:source_name "b.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i"} {:elem_width 32} {:source_name "a.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$11"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i2.i23"} {:elem_width 32} {:source_name "a.i2.i23"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$12"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i1.i24"} {:elem_width 32} {:source_name "b.i1.i24"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$13"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$14"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$15"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i25"} {:elem_width 32} {:source_name "a.i.i25"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i26"} {:elem_width 32} {:source_name "b.i.i26"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$my_curr_pos.i27"} {:elem_width 32} {:source_name "my_curr_pos.i27"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$other_element_old_pos.i28"} {:elem_width 32} {:source_name "other_element_old_pos.i28"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$r.i29"} {:elem_width 32} {:source_name "r.i29"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$16"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$17"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$18"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$19"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$20"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$21"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i2.i12"} {:elem_width 32} {:source_name "a.i2.i12"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$22"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i1.i13"} {:elem_width 32} {:source_name "b.i1.i13"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$23"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$24"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$25"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i14"} {:elem_width 32} {:source_name "a.i.i14"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i15"} {:elem_width 32} {:source_name "b.i.i15"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$my_curr_pos.i16"} {:elem_width 32} {:source_name "my_curr_pos.i16"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$other_element_old_pos.i17"} {:elem_width 32} {:source_name "other_element_old_pos.i17"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$r.i18"} {:elem_width 32} {:source_name "r.i18"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$26"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$27"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$28"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$29"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$30"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$31"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i2.i1"} {:elem_width 32} {:source_name "a.i2.i1"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$32"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i1.i2"} {:elem_width 32} {:source_name "b.i1.i2"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$33"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$34"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$35"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i3"} {:elem_width 32} {:source_name "a.i.i3"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i4"} {:elem_width 32} {:source_name "b.i.i4"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$my_curr_pos.i5"} {:elem_width 32} {:source_name "my_curr_pos.i5"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$other_element_old_pos.i6"} {:elem_width 32} {:source_name "other_element_old_pos.i6"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$r.i7"} {:elem_width 32} {:source_name "r.i7"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$36"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$37"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$38"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$39"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$40"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$41"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i2.i"} {:elem_width 32} {:source_name "a.i2.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$42"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i1.i"} {:elem_width 32} {:source_name "b.i1.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$43"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$44"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$45"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i"} {:elem_width 32} {:source_name "a.i.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i"} {:elem_width 32} {:source_name "b.i.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$my_curr_pos.i"} {:elem_width 32} {:source_name "my_curr_pos.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$other_element_old_pos.i"} {:elem_width 32} {:source_name "other_element_old_pos.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$r.i"} {:elem_width 32} {:source_name "r.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$46"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$47"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$48"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$49"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$p_pos"} {:elem_width 32} {:source_name "p_pos"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$p_vel"} {:elem_width 32} {:source_name "p_vel"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$acc"} {:elem_width 32} {:source_name "acc"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$50"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$51"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$52"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$53"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$54"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$55"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$56"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$57"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$58"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$59"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$60"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$61"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:source_name "tile_mem"} {:group_shared} $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem: [bv1][int]int;

axiom {:array_info "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:group_shared} {:elem_width 32} {:source_name "tile_mem"} {:source_elem_width 128} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem: bool;

const _WATCHED_OFFSET: int;

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

function FMUL32(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FRSQRT64(int) : int;

function FSUB32(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "tiling_implementation"} {:kernel} $_Z21tiling_implementationP6float4S0_S0_S0_iii($offset: int, $size: int, $num_bodies: int);
  requires !_READ_HAS_OCCURRED_$$data_in_pos && !_WRITE_HAS_OCCURRED_$$data_in_pos && !_ATOMIC_HAS_OCCURRED_$$data_in_pos;
  requires !_READ_HAS_OCCURRED_$$data_in_vel && !_WRITE_HAS_OCCURRED_$$data_in_vel && !_ATOMIC_HAS_OCCURRED_$$data_in_vel;
  requires !_READ_HAS_OCCURRED_$$data_out_pos && !_WRITE_HAS_OCCURRED_$$data_out_pos && !_ATOMIC_HAS_OCCURRED_$$data_out_pos;
  requires !_READ_HAS_OCCURRED_$$data_out_vel && !_WRITE_HAS_OCCURRED_$$data_out_vel && !_ATOMIC_HAS_OCCURRED_$$data_out_vel;
  requires !_READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && !_WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && !_ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
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
  modifies $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem, _WRITE_HAS_OCCURRED_$$data_out_pos, _WRITE_READ_BENIGN_FLAG_$$data_out_pos, _WRITE_READ_BENIGN_FLAG_$$data_out_pos, _WRITE_HAS_OCCURRED_$$data_out_vel, _WRITE_READ_BENIGN_FLAG_$$data_out_vel, _WRITE_READ_BENIGN_FLAG_$$data_out_vel, _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem, _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem, _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem, $$data_out_pos, $$data_out_vel, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;



implementation {:source_name "tiling_implementation"} {:kernel} $_Z21tiling_implementationP6float4S0_S0_S0_iii($offset: int, $size: int, $num_bodies: int)
{
  var $particle_idx.0$1: int;
  var $particle_idx.0$2: int;
  var $tile.0: int;
  var $j.0: int;
  var v9: bool;
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
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14: bool;
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
  var v58$1: int;
  var v58$2: int;
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
  var v176$1: int;
  var v176$2: int;
  var v334$1: int;
  var v334$2: int;
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
  var v162$1: int;
  var v162$2: int;
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
  var v169$1: int;
  var v169$2: int;
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
  var v335$1: int;
  var v335$2: int;
  var v336$1: int;
  var v336$2: int;
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
  var v208$1: int;
  var v208$2: int;
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
  var v218$1: int;
  var v218$2: int;
  var v219$1: int;
  var v219$2: int;
  var v220$1: int;
  var v220$2: int;
  var v221$1: int;
  var v221$2: int;
  var v222$1: int;
  var v222$2: int;
  var v223$1: int;
  var v223$2: int;
  var v224$1: int;
  var v224$2: int;
  var v225$1: int;
  var v225$2: int;
  var v226$1: int;
  var v226$2: int;
  var v227$1: int;
  var v227$2: int;
  var v228$1: int;
  var v228$2: int;
  var v229$1: int;
  var v229$2: int;
  var v230$1: int;
  var v230$2: int;
  var v231$1: int;
  var v231$2: int;
  var v232$1: int;
  var v232$2: int;
  var v233$1: int;
  var v233$2: int;
  var v234$1: int;
  var v234$2: int;
  var v235$1: int;
  var v235$2: int;
  var v236$1: int;
  var v236$2: int;
  var v237$1: int;
  var v237$2: int;
  var v238$1: int;
  var v238$2: int;
  var v239$1: int;
  var v239$2: int;
  var v240$1: int;
  var v240$2: int;
  var v241$1: int;
  var v241$2: int;
  var v242$1: int;
  var v242$2: int;
  var v243$1: int;
  var v243$2: int;
  var v244$1: int;
  var v244$2: int;
  var v245$1: int;
  var v245$2: int;
  var v246$1: int;
  var v246$2: int;
  var v247$1: int;
  var v247$2: int;
  var v248$1: int;
  var v248$2: int;
  var v249$1: int;
  var v249$2: int;
  var v250$1: int;
  var v250$2: int;
  var v251$1: int;
  var v251$2: int;
  var v252$1: int;
  var v252$2: int;
  var v253$1: int;
  var v253$2: int;
  var v254$1: int;
  var v254$2: int;
  var v255$1: int;
  var v255$2: int;
  var v256$1: int;
  var v256$2: int;
  var v257$1: int;
  var v257$2: int;
  var v258$1: int;
  var v258$2: int;
  var v259$1: int;
  var v259$2: int;
  var v260$1: int;
  var v260$2: int;
  var v261$1: int;
  var v261$2: int;
  var v262$1: int;
  var v262$2: int;
  var v263$1: int;
  var v263$2: int;
  var v264$1: int;
  var v264$2: int;
  var v265$1: int;
  var v265$2: int;
  var v266$1: int;
  var v266$2: int;
  var v267$1: int;
  var v267$2: int;
  var v268$1: int;
  var v268$2: int;
  var v269$1: int;
  var v269$2: int;
  var v270$1: int;
  var v270$2: int;
  var v271$1: int;
  var v271$2: int;
  var v272$1: int;
  var v272$2: int;
  var v273$1: int;
  var v273$2: int;
  var v274$1: int;
  var v274$2: int;
  var v275$1: int;
  var v275$2: int;
  var v276$1: int;
  var v276$2: int;
  var v277$1: int;
  var v277$2: int;
  var v278$1: int;
  var v278$2: int;
  var v279$1: int;
  var v279$2: int;
  var v280$1: int;
  var v280$2: int;
  var v281$1: int;
  var v281$2: int;
  var v282$1: int;
  var v282$2: int;
  var v283$1: int;
  var v283$2: int;
  var v284$1: int;
  var v284$2: int;
  var v285$1: int;
  var v285$2: int;
  var v286$1: int;
  var v286$2: int;
  var v287$1: int;
  var v287$2: int;
  var v288$1: int;
  var v288$2: int;
  var v289$1: int;
  var v289$2: int;
  var v290$1: int;
  var v290$2: int;
  var v291$1: int;
  var v291$2: int;
  var v292$1: int;
  var v292$2: int;
  var v293$1: int;
  var v293$2: int;
  var v294$1: int;
  var v294$2: int;
  var v295$1: int;
  var v295$2: int;
  var v296$1: int;
  var v296$2: int;
  var v297$1: int;
  var v297$2: int;
  var v298$1: int;
  var v298$2: int;
  var v299$1: int;
  var v299$2: int;
  var v300$1: int;
  var v300$2: int;
  var v301$1: int;
  var v301$2: int;
  var v302$1: int;
  var v302$2: int;
  var v303$1: int;
  var v303$2: int;
  var v304$1: int;
  var v304$2: int;
  var v305$1: int;
  var v305$2: int;
  var v306$1: int;
  var v306$2: int;
  var v307$1: int;
  var v307$2: int;
  var v308$1: int;
  var v308$2: int;
  var v309$1: int;
  var v309$2: int;
  var v310$1: int;
  var v310$2: int;
  var v311$1: int;
  var v311$2: int;
  var v312$1: int;
  var v312$2: int;
  var v313$1: int;
  var v313$2: int;
  var v314$1: int;
  var v314$2: int;
  var v315$1: int;
  var v315$2: int;
  var v316$1: int;
  var v316$2: int;
  var v317$1: int;
  var v317$2: int;
  var v318$1: int;
  var v318$2: int;
  var v319$1: int;
  var v319$2: int;
  var v320$1: int;
  var v320$2: int;
  var v321$1: int;
  var v321$2: int;
  var v322$1: int;
  var v322$2: int;
  var v323$1: int;
  var v323$2: int;
  var v324$1: int;
  var v324$2: int;
  var v325$1: int;
  var v325$2: int;
  var v326$1: int;
  var v326$2: int;
  var v327$1: int;
  var v327$2: int;
  var v328$1: int;
  var v328$2: int;
  var v329$1: int;
  var v329$2: int;
  var v330$1: int;
  var v330$2: int;
  var v331$1: int;
  var v331$2: int;
  var v332$1: int;
  var v332$2: int;
  var v333$1: int;
  var v333$2: int;
  var v337$1: int;
  var v337$2: int;
  var v338$1: int;
  var v338$2: int;
  var v339$1: int;
  var v339$2: int;
  var v340$1: int;
  var v340$2: int;
  var v341$1: int;
  var v341$2: int;
  var v342$1: int;
  var v342$2: int;
  var v343$1: int;
  var v343$2: int;
  var v344$1: int;
  var v344$2: int;
  var v345$1: int;
  var v345$2: int;
  var v346$1: int;
  var v346$2: int;
  var v347$1: int;
  var v347$2: int;
  var v348$1: int;
  var v348$2: int;
  var v349$1: int;
  var v349$2: int;
  var v350$1: int;
  var v350$2: int;
  var v351$1: int;
  var v351$2: int;
  var v352$1: int;
  var v352$2: int;
  var v353$1: int;
  var v353$2: int;
  var v354$1: int;
  var v354$2: int;
  var v355$1: int;
  var v355$2: int;
  var v356$1: int;
  var v356$2: int;
  var v357$1: int;
  var v357$2: int;
  var v358$1: int;
  var v358$2: int;
  var v359$1: int;
  var v359$2: int;
  var v360$1: int;
  var v360$2: int;
  var v361$1: int;
  var v361$2: int;
  var v362$1: int;
  var v362$2: int;
  var v363$1: int;
  var v363$2: int;
  var v364$1: int;
  var v364$2: int;
  var v365$1: int;
  var v365$2: int;
  var v366$1: int;
  var v366$2: int;
  var v367$1: int;
  var v367$2: int;
  var v368$1: int;
  var v368$2: int;
  var v369$1: int;
  var v369$2: int;
  var v370$1: int;
  var v370$2: int;
  var v371$1: int;
  var v371$2: int;
  var v372$1: int;
  var v372$2: int;
  var v373$1: int;
  var v373$2: int;
  var v374$1: int;
  var v374$2: int;
  var v375$1: int;
  var v375$2: int;
  var v376$1: int;
  var v376$2: int;
  var v377$1: int;
  var v377$2: int;
  var v378$1: int;
  var v378$2: int;
  var v379$1: int;
  var v379$2: int;
  var v380$1: int;
  var v380$2: int;
  var v381$1: int;
  var v381$2: int;
  var v382$1: int;
  var v382$2: int;
  var v383$1: int;
  var v383$2: int;
  var v384$1: int;
  var v384$2: int;
  var v385$1: int;
  var v385$2: int;
  var v386$1: int;
  var v386$2: int;
  var v387$1: int;
  var v387$2: int;
  var v388$1: int;
  var v388$2: int;
  var v389$1: int;
  var v389$2: int;
  var v390$1: int;
  var v390$2: int;
  var v391$1: int;
  var v391$2: int;
  var v392$1: int;
  var v392$2: int;
  var v393$1: int;
  var v393$2: int;
  var v394$1: int;
  var v394$2: int;
  var v395$1: int;
  var v395$2: int;
  var v396$1: int;
  var v396$2: int;
  var v397$1: int;
  var v397$2: int;
  var v398$1: int;
  var v398$2: int;
  var v399$1: int;
  var v399$2: int;
  var v400$1: int;
  var v400$2: int;
  var v401$1: int;
  var v401$2: int;
  var v402$1: int;
  var v402$2: int;
  var v403$1: int;
  var v403$2: int;
  var v404$1: int;
  var v404$2: int;
  var v405$1: int;
  var v405$2: int;
  var v406$1: int;
  var v406$2: int;
  var v407$1: int;
  var v407$2: int;
  var v408$1: int;
  var v408$2: int;
  var v409$1: int;
  var v409$2: int;
  var v410$1: int;
  var v410$2: int;
  var v411$1: int;
  var v411$2: int;
  var v412$1: int;
  var v412$2: int;
  var v413$1: int;
  var v413$2: int;
  var v414$1: int;
  var v414$2: int;
  var v415$1: int;
  var v415$2: int;
  var v416$1: int;
  var v416$2: int;
  var v417$1: int;
  var v417$2: int;
  var v418$1: int;
  var v418$2: int;
  var v438$1: int;
  var v438$2: int;
  var v419$1: int;
  var v419$2: int;
  var v420$1: int;
  var v420$2: int;
  var v421$1: int;
  var v421$2: int;
  var v422$1: int;
  var v422$2: int;
  var v423$1: int;
  var v423$2: int;
  var v424$1: int;
  var v424$2: int;
  var v425$1: int;
  var v425$2: int;
  var v426$1: int;
  var v426$2: int;
  var v427$1: int;
  var v427$2: int;
  var v428$1: int;
  var v428$2: int;
  var v429$1: int;
  var v429$2: int;
  var v430$1: int;
  var v430$2: int;
  var v431$1: int;
  var v431$2: int;
  var v432$1: int;
  var v432$2: int;
  var v433$1: int;
  var v433$2: int;
  var v434$1: int;
  var v434$2: int;
  var v436$1: int;
  var v436$2: int;
  var v437$1: int;
  var v437$2: int;
  var v435$1: int;
  var v435$2: int;
  var v439$1: int;
  var v439$2: int;
  var v440$1: int;
  var v440$2: int;
  var v441$1: int;
  var v441$2: int;
  var v442$1: int;
  var v442$2: int;
  var v443$1: int;
  var v443$2: int;
  var v444$1: int;
  var v444$2: int;
  var v445$1: int;
  var v445$2: int;
  var v446$1: int;
  var v446$2: int;
  var v447$1: int;
  var v447$2: int;
  var v448$1: int;
  var v448$2: int;
  var v449$1: int;
  var v449$2: int;
  var v450$1: int;
  var v450$2: int;
  var v451$1: int;
  var v451$2: int;
  var v452$1: int;
  var v452$2: int;
  var v453$1: int;
  var v453$2: int;
  var v454$1: int;
  var v454$2: int;
  var v455$1: int;
  var v455$2: int;
  var v456$1: int;
  var v456$2: int;
  var v457$1: int;
  var v457$2: int;
  var v458$1: int;
  var v458$2: int;
  var v459$1: int;
  var v459$2: int;
  var v460$1: int;
  var v460$2: int;
  var v461$1: int;
  var v461$2: int;
  var v462$1: int;
  var v462$2: int;
  var v463$1: int;
  var v463$2: int;
  var v464$1: int;
  var v464$2: int;
  var v465$1: int;
  var v465$2: int;
  var v466$1: int;
  var v466$2: int;
  var v467$1: int;
  var v467$2: int;
  var v468$1: int;
  var v468$2: int;
  var v469$1: int;
  var v469$2: int;
  var v470$1: int;
  var v470$2: int;
  var v471$1: int;
  var v471$2: int;
  var v472$1: int;
  var v472$2: int;
  var v473$1: int;
  var v473$2: int;
  var v474$1: int;
  var v474$2: int;
  var v475$1: int;
  var v475$2: int;
  var v476$1: int;
  var v476$2: int;
  var v477$1: int;
  var v477$2: int;
  var v478$1: int;
  var v478$2: int;
  var v479$1: int;
  var v479$2: int;
  var v480$1: int;
  var v480$2: int;
  var v481$1: int;
  var v481$2: int;
  var v482$1: int;
  var v482$2: int;
  var v483$1: int;
  var v483$2: int;
  var v484$1: int;
  var v484$2: int;
  var v485$1: int;
  var v485$2: int;
  var v486$1: int;
  var v486$2: int;
  var v487$1: int;
  var v487$2: int;
  var v488$1: int;
  var v488$2: int;
  var v489$1: int;
  var v489$2: int;
  var v490$1: int;
  var v490$2: int;
  var v491$1: int;
  var v491$2: int;
  var v492$1: int;
  var v492$2: int;
  var v493$1: int;
  var v493$2: int;
  var v494$1: int;
  var v494$2: int;
  var v495$1: int;
  var v495$2: int;
  var v496$1: int;
  var v496$2: int;
  var v497$1: int;
  var v497$2: int;
  var v498$1: int;
  var v498$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $offset);
    v0$2 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $offset);
    havoc v1$1, v1$2;
    $$p_pos$0$1 := v1$1;
    $$p_pos$0$2 := v1$2;
    havoc v2$1, v2$2;
    $$p_pos$1$1 := v2$1;
    $$p_pos$1$2 := v2$2;
    havoc v3$1, v3$2;
    $$p_pos$2$1 := v3$1;
    $$p_pos$2$2 := v3$2;
    havoc v4$1, v4$2;
    $$p_pos$3$1 := v4$1;
    $$p_pos$3$2 := v4$2;
    havoc v5$1, v5$2;
    $$p_vel$0$1 := v5$1;
    $$p_vel$0$2 := v5$2;
    havoc v6$1, v6$2;
    $$p_vel$1$1 := v6$1;
    $$p_vel$1$2 := v6$2;
    havoc v7$1, v7$2;
    $$p_vel$2$1 := v7$1;
    $$p_vel$2$2 := v7$2;
    havoc v8$1, v8$2;
    $$p_vel$3$1 := v8$1;
    $$p_vel$3$2 := v8$2;
    $$acc$0$1 := 0;
    $$acc$0$2 := 0;
    $$acc$1$1 := 0;
    $$acc$1$2 := 0;
    $$acc$2$1 := 0;
    $$acc$2$2 := 0;
    $$acc$3$1 := 0;
    $$acc$3$2 := 0;
    $particle_idx.0$1, $tile.0 := local_id_x$1, 0;
    $particle_idx.0$2 := local_id_x$2;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
assert  my_inv (  (  $particle_idx.0$1 mod 256 == local_id_x$1 mod 256 )  && (  $particle_idx.0$2 mod 256 == local_id_x$2 mod 256 ) ,  (  $tile.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($tile.0, 0) ) ,  (  BV32_SGE($tile.0, 0) ) ,  (  BV32_ULE($tile.0, 0) ) ,  (  BV32_UGE($tile.0, 0) ) ,  true ,  true ,  true ,  true ,  true ,  (  !_READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ) ,  (  _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(0, 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(BV32_ADD(0, 1), 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 1), 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 1), 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 1), 4), 3) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(BV32_ADD(0, 2), 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 2), 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 2), 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 2), 4), 3) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(BV32_ADD(0, 3), 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 3), 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 3), 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 3), 4), 3) mod BV32_MUL(4, 4) ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 3) ) ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 21} true;
    v9 := BV32_ULT($tile.0, BV32_SDIV($num_bodies, 256));
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v9;
    v399$1 := $$acc$0$1;
    v399$2 := $$acc$0$2;
    $$59$0$1 := v399$1;
    $$59$0$2 := v399$2;
    v400$1 := $$acc$1$1;
    v400$2 := $$acc$1$2;
    $$59$1$1 := v400$1;
    $$59$1$2 := v400$2;
    v401$1 := $$acc$2$1;
    v401$2 := $$acc$2$2;
    $$59$2$1 := v401$1;
    $$59$2$2 := v401$2;
    v402$1 := $$acc$3$1;
    v402$2 := $$acc$3$2;
    $$59$3$1 := v402$1;
    $$59$3$2 := v402$2;
    v403$1 := $$59$0$1;
    v403$2 := $$59$0$2;
    v404$1 := $$59$1$1;
    v404$2 := $$59$1$2;
    v405$1 := $$59$2$1;
    v405$2 := $$59$2$2;
    v406$1 := $$59$3$1;
    v406$2 := $$59$3$2;
    $$a.i$0$1 := v403$1;
    $$a.i$0$2 := v403$2;
    $$a.i$1$1 := v404$1;
    $$a.i$1$2 := v404$2;
    $$a.i$2$1 := v405$1;
    $$a.i$2$2 := v405$2;
    $$a.i$3$1 := v406$1;
    $$a.i$3$2 := v406$2;
    v407$1 := $$a.i$0$1;
    v407$2 := $$a.i$0$2;
    v408$1 := $$a.i$1$1;
    v408$2 := $$a.i$1$2;
    v409$1 := $$a.i$2$1;
    v409$2 := $$a.i$2$2;
    v410$1 := $$a.i$3$1;
    v410$2 := $$a.i$3$2;
    $$8$0$1 := FMUL32(v407$1, 1036831949);
    $$8$0$2 := FMUL32(v407$2, 1036831949);
    $$8$1$1 := FMUL32(v408$1, 1036831949);
    $$8$1$2 := FMUL32(v408$2, 1036831949);
    $$8$2$1 := FMUL32(v409$1, 1036831949);
    $$8$2$2 := FMUL32(v409$2, 1036831949);
    $$8$3$1 := FMUL32(v410$1, 1036831949);
    $$8$3$2 := FMUL32(v410$2, 1036831949);
    v411$1 := $$8$0$1;
    v411$2 := $$8$0$2;
    v412$1 := $$8$1$1;
    v412$2 := $$8$1$2;
    v413$1 := $$8$2$1;
    v413$2 := $$8$2$2;
    v414$1 := $$8$3$1;
    v414$2 := $$8$3$2;
    $$9$0$1 := v411$1;
    $$9$0$2 := v411$2;
    $$9$1$1 := v412$1;
    $$9$1$2 := v412$2;
    $$9$2$1 := v413$1;
    $$9$2$2 := v413$2;
    $$9$3$1 := v414$1;
    $$9$3$2 := v414$2;
    v415$1 := $$9$0$1;
    v415$2 := $$9$0$2;
    v416$1 := $$9$1$1;
    v416$2 := $$9$1$2;
    v417$1 := $$9$2$1;
    v417$2 := $$9$2$2;
    v418$1 := $$9$3$1;
    v418$2 := $$9$3$2;
    $$58$0$1 := v415$1;
    $$58$0$2 := v415$2;
    $$58$1$1 := v416$1;
    $$58$1$2 := v416$2;
    $$58$2$1 := v417$1;
    $$58$2$2 := v417$2;
    $$58$3$1 := v418$1;
    $$58$3$2 := v418$2;
    v419$1 := $$58$0$1;
    v419$2 := $$58$0$2;
    v420$1 := $$58$1$1;
    v420$2 := $$58$1$2;
    v421$1 := $$58$2$1;
    v421$2 := $$58$2$2;
    v422$1 := $$58$3$1;
    v422$2 := $$58$3$2;
    $$b.i35$0$1 := v419$1;
    $$b.i35$0$2 := v419$2;
    $$b.i35$1$1 := v420$1;
    $$b.i35$1$2 := v420$2;
    $$b.i35$2$1 := v421$1;
    $$b.i35$2$2 := v421$2;
    $$b.i35$3$1 := v422$1;
    $$b.i35$3$2 := v422$2;
    v423$1 := $$p_vel$0$1;
    v423$2 := $$p_vel$0$2;
    v424$1 := $$b.i35$0$1;
    v424$2 := $$b.i35$0$2;
    v425$1 := $$p_vel$1$1;
    v425$2 := $$p_vel$1$2;
    v426$1 := $$b.i35$1$1;
    v426$2 := $$b.i35$1$2;
    v427$1 := $$p_vel$2$1;
    v427$2 := $$p_vel$2$2;
    v428$1 := $$b.i35$2$1;
    v428$2 := $$b.i35$2$2;
    v429$1 := $$p_vel$3$1;
    v429$2 := $$p_vel$3$2;
    v430$1 := $$b.i35$3$1;
    v430$2 := $$b.i35$3$2;
    $$0$0$1 := FADD32(v423$1, v424$1);
    $$0$0$2 := FADD32(v423$2, v424$2);
    $$0$1$1 := FADD32(v425$1, v426$1);
    $$0$1$2 := FADD32(v425$2, v426$2);
    $$0$2$1 := FADD32(v427$1, v428$1);
    $$0$2$2 := FADD32(v427$2, v428$2);
    $$0$3$1 := FADD32(v429$1, v430$1);
    $$0$3$2 := FADD32(v429$2, v430$2);
    v431$1 := $$0$0$1;
    v431$2 := $$0$0$2;
    v432$1 := $$0$1$1;
    v432$2 := $$0$1$2;
    v433$1 := $$0$2$1;
    v433$2 := $$0$2$2;
    v434$1 := $$0$3$1;
    v434$2 := $$0$3$2;
    $$1$0$1 := v431$1;
    $$1$0$2 := v431$2;
    $$1$1$1 := v432$1;
    $$1$1$2 := v432$2;
    $$1$2$1 := v433$1;
    $$1$2$2 := v433$2;
    $$1$3$1 := v434$1;
    $$1$3$2 := v434$2;
    v435$1 := $$1$0$1;
    v435$2 := $$1$0$2;
    $$p_vel$0$1 := v435$1;
    $$p_vel$0$2 := v435$2;
    v436$1 := $$1$1$1;
    v436$2 := $$1$1$2;
    $$p_vel$1$1 := v436$1;
    $$p_vel$1$2 := v436$2;
    v437$1 := $$1$2$1;
    v437$2 := $$1$2$2;
    $$p_vel$2$1 := v437$1;
    $$p_vel$2$2 := v437$2;
    v438$1 := $$1$3$1;
    v438$2 := $$1$3$2;
    $$p_vel$3$1 := v438$1;
    $$p_vel$3$2 := v438$2;
    v439$1 := $$p_vel$0$1;
    v439$2 := $$p_vel$0$2;
    v440$1 := $$p_vel$1$1;
    v440$2 := $$p_vel$1$2;
    v441$1 := $$p_vel$2$1;
    v441$2 := $$p_vel$2$2;
    v442$1 := $$p_vel$3$1;
    v442$2 := $$p_vel$3$2;
    $$2$0$1 := FMUL32(v439$1, 1065353216);
    $$2$0$2 := FMUL32(v439$2, 1065353216);
    $$2$1$1 := FMUL32(v440$1, 1065353216);
    $$2$1$2 := FMUL32(v440$2, 1065353216);
    $$2$2$1 := FMUL32(v441$1, 1065353216);
    $$2$2$2 := FMUL32(v441$2, 1065353216);
    $$2$3$1 := FMUL32(v442$1, 1065353216);
    $$2$3$2 := FMUL32(v442$2, 1065353216);
    v443$1 := $$2$0$1;
    v443$2 := $$2$0$2;
    v444$1 := $$2$1$1;
    v444$2 := $$2$1$2;
    v445$1 := $$2$2$1;
    v445$2 := $$2$2$2;
    v446$1 := $$2$3$1;
    v446$2 := $$2$3$2;
    $$3$0$1 := v443$1;
    $$3$0$2 := v443$2;
    $$3$1$1 := v444$1;
    $$3$1$2 := v444$2;
    $$3$2$1 := v445$1;
    $$3$2$2 := v445$2;
    $$3$3$1 := v446$1;
    $$3$3$2 := v446$2;
    v447$1 := $$3$0$1;
    v447$2 := $$3$0$2;
    $$p_vel$0$1 := v447$1;
    $$p_vel$0$2 := v447$2;
    v448$1 := $$3$1$1;
    v448$2 := $$3$1$2;
    $$p_vel$1$1 := v448$1;
    $$p_vel$1$2 := v448$2;
    v449$1 := $$3$2$1;
    v449$2 := $$3$2$2;
    $$p_vel$2$1 := v449$1;
    $$p_vel$2$2 := v449$2;
    v450$1 := $$3$3$1;
    v450$2 := $$3$3$2;
    $$p_vel$3$1 := v450$1;
    $$p_vel$3$2 := v450$2;
    v451$1 := $$p_vel$0$1;
    v451$2 := $$p_vel$0$2;
    $$61$0$1 := v451$1;
    $$61$0$2 := v451$2;
    v452$1 := $$p_vel$1$1;
    v452$2 := $$p_vel$1$2;
    $$61$1$1 := v452$1;
    $$61$1$2 := v452$2;
    v453$1 := $$p_vel$2$1;
    v453$2 := $$p_vel$2$2;
    $$61$2$1 := v453$1;
    $$61$2$2 := v453$2;
    v454$1 := $$p_vel$3$1;
    v454$2 := $$p_vel$3$2;
    $$61$3$1 := v454$1;
    $$61$3$2 := v454$2;
    v455$1 := $$61$0$1;
    v455$2 := $$61$0$2;
    v456$1 := $$61$1$1;
    v456$2 := $$61$1$2;
    v457$1 := $$61$2$1;
    v457$2 := $$61$2$2;
    v458$1 := $$61$3$1;
    v458$2 := $$61$3$2;
    $$a.i34$0$1 := v455$1;
    $$a.i34$0$2 := v455$2;
    $$a.i34$1$1 := v456$1;
    $$a.i34$1$2 := v456$2;
    $$a.i34$2$1 := v457$1;
    $$a.i34$2$2 := v457$2;
    $$a.i34$3$1 := v458$1;
    $$a.i34$3$2 := v458$2;
    v459$1 := $$a.i34$0$1;
    v459$2 := $$a.i34$0$2;
    v460$1 := $$a.i34$1$1;
    v460$2 := $$a.i34$1$2;
    v461$1 := $$a.i34$2$1;
    v461$2 := $$a.i34$2$2;
    v462$1 := $$a.i34$3$1;
    v462$2 := $$a.i34$3$2;
    $$4$0$1 := FMUL32(v459$1, 1036831949);
    $$4$0$2 := FMUL32(v459$2, 1036831949);
    $$4$1$1 := FMUL32(v460$1, 1036831949);
    $$4$1$2 := FMUL32(v460$2, 1036831949);
    $$4$2$1 := FMUL32(v461$1, 1036831949);
    $$4$2$2 := FMUL32(v461$2, 1036831949);
    $$4$3$1 := FMUL32(v462$1, 1036831949);
    $$4$3$2 := FMUL32(v462$2, 1036831949);
    v463$1 := $$4$0$1;
    v463$2 := $$4$0$2;
    v464$1 := $$4$1$1;
    v464$2 := $$4$1$2;
    v465$1 := $$4$2$1;
    v465$2 := $$4$2$2;
    v466$1 := $$4$3$1;
    v466$2 := $$4$3$2;
    $$5$0$1 := v463$1;
    $$5$0$2 := v463$2;
    $$5$1$1 := v464$1;
    $$5$1$2 := v464$2;
    $$5$2$1 := v465$1;
    $$5$2$2 := v465$2;
    $$5$3$1 := v466$1;
    $$5$3$2 := v466$2;
    v467$1 := $$5$0$1;
    v467$2 := $$5$0$2;
    v468$1 := $$5$1$1;
    v468$2 := $$5$1$2;
    v469$1 := $$5$2$1;
    v469$2 := $$5$2$2;
    v470$1 := $$5$3$1;
    v470$2 := $$5$3$2;
    $$60$0$1 := v467$1;
    $$60$0$2 := v467$2;
    $$60$1$1 := v468$1;
    $$60$1$2 := v468$2;
    $$60$2$1 := v469$1;
    $$60$2$2 := v469$2;
    $$60$3$1 := v470$1;
    $$60$3$2 := v470$2;
    v471$1 := $$60$0$1;
    v471$2 := $$60$0$2;
    v472$1 := $$60$1$1;
    v472$2 := $$60$1$2;
    v473$1 := $$60$2$1;
    v473$2 := $$60$2$2;
    v474$1 := $$60$3$1;
    v474$2 := $$60$3$2;
    $$b.i$0$1 := v471$1;
    $$b.i$0$2 := v471$2;
    $$b.i$1$1 := v472$1;
    $$b.i$1$2 := v472$2;
    $$b.i$2$1 := v473$1;
    $$b.i$2$2 := v473$2;
    $$b.i$3$1 := v474$1;
    $$b.i$3$2 := v474$2;
    v475$1 := $$p_pos$0$1;
    v475$2 := $$p_pos$0$2;
    v476$1 := $$b.i$0$1;
    v476$2 := $$b.i$0$2;
    v477$1 := $$p_pos$1$1;
    v477$2 := $$p_pos$1$2;
    v478$1 := $$b.i$1$1;
    v478$2 := $$b.i$1$2;
    v479$1 := $$p_pos$2$1;
    v479$2 := $$p_pos$2$2;
    v480$1 := $$b.i$2$1;
    v480$2 := $$b.i$2$2;
    v481$1 := $$p_pos$3$1;
    v481$2 := $$p_pos$3$2;
    v482$1 := $$b.i$3$1;
    v482$2 := $$b.i$3$2;
    $$6$0$1 := FADD32(v475$1, v476$1);
    $$6$0$2 := FADD32(v475$2, v476$2);
    $$6$1$1 := FADD32(v477$1, v478$1);
    $$6$1$2 := FADD32(v477$2, v478$2);
    $$6$2$1 := FADD32(v479$1, v480$1);
    $$6$2$2 := FADD32(v479$2, v480$2);
    $$6$3$1 := FADD32(v481$1, v482$1);
    $$6$3$2 := FADD32(v481$2, v482$2);
    v483$1 := $$6$0$1;
    v483$2 := $$6$0$2;
    v484$1 := $$6$1$1;
    v484$2 := $$6$1$2;
    v485$1 := $$6$2$1;
    v485$2 := $$6$2$2;
    v486$1 := $$6$3$1;
    v486$2 := $$6$3$2;
    $$7$0$1 := v483$1;
    $$7$0$2 := v483$2;
    $$7$1$1 := v484$1;
    $$7$1$2 := v484$2;
    $$7$2$1 := v485$1;
    $$7$2$2 := v485$2;
    $$7$3$1 := v486$1;
    $$7$3$2 := v486$2;
    v487$1 := $$7$0$1;
    v487$2 := $$7$0$2;
    $$p_pos$0$1 := v487$1;
    $$p_pos$0$2 := v487$2;
    v488$1 := $$7$1$1;
    v488$2 := $$7$1$2;
    $$p_pos$1$1 := v488$1;
    $$p_pos$1$2 := v488$2;
    v489$1 := $$7$2$1;
    v489$2 := $$7$2$2;
    $$p_pos$2$1 := v489$1;
    $$p_pos$2$2 := v489$2;
    v490$1 := $$7$3$1;
    v490$2 := $$7$3$2;
    $$p_pos$3$1 := v490$1;
    $$p_pos$3$2 := v490$2;
    v491$1 := $$p_pos$0$1;
    v491$2 := $$p_pos$0$2;
    call {:sourceloc} {:sourceloc_num 912} _LOG_WRITE_$$data_out_pos(true, BV32_MUL(v0$1, 4), v491$1, $$data_out_pos[BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_pos(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 912} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 912} _CHECK_WRITE_$$data_out_pos(true, BV32_MUL(v0$2, 4), v491$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_pos"} true;
    $$data_out_pos[BV32_MUL(v0$1, 4)] := v491$1;
    $$data_out_pos[BV32_MUL(v0$2, 4)] := v491$2;
    v492$1 := $$p_pos$1$1;
    v492$2 := $$p_pos$1$2;
    call {:sourceloc} {:sourceloc_num 914} _LOG_WRITE_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v492$1, $$data_out_pos[BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 914} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 914} _CHECK_WRITE_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v492$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_pos"} true;
    $$data_out_pos[BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v492$1;
    $$data_out_pos[BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v492$2;
    v493$1 := $$p_pos$2$1;
    v493$2 := $$p_pos$2$2;
    call {:sourceloc} {:sourceloc_num 916} _LOG_WRITE_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v493$1, $$data_out_pos[BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 916} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 916} _CHECK_WRITE_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v493$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_pos"} true;
    $$data_out_pos[BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v493$1;
    $$data_out_pos[BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v493$2;
    v494$1 := $$p_pos$3$1;
    v494$2 := $$p_pos$3$2;
    call {:sourceloc} {:sourceloc_num 918} _LOG_WRITE_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v494$1, $$data_out_pos[BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 918} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 918} _CHECK_WRITE_$$data_out_pos(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v494$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_pos"} true;
    $$data_out_pos[BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v494$1;
    $$data_out_pos[BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v494$2;
    v495$1 := $$p_vel$0$1;
    v495$2 := $$p_vel$0$2;
    call {:sourceloc} {:sourceloc_num 920} _LOG_WRITE_$$data_out_vel(true, BV32_MUL(v0$1, 4), v495$1, $$data_out_vel[BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_vel(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 920} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 920} _CHECK_WRITE_$$data_out_vel(true, BV32_MUL(v0$2, 4), v495$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_vel"} true;
    $$data_out_vel[BV32_MUL(v0$1, 4)] := v495$1;
    $$data_out_vel[BV32_MUL(v0$2, 4)] := v495$2;
    v496$1 := $$p_vel$1$1;
    v496$2 := $$p_vel$1$2;
    call {:sourceloc} {:sourceloc_num 922} _LOG_WRITE_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v496$1, $$data_out_vel[BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 922} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 922} _CHECK_WRITE_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v496$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_vel"} true;
    $$data_out_vel[BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v496$1;
    $$data_out_vel[BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v496$2;
    v497$1 := $$p_vel$2$1;
    v497$2 := $$p_vel$2$2;
    call {:sourceloc} {:sourceloc_num 924} _LOG_WRITE_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v497$1, $$data_out_vel[BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 924} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 924} _CHECK_WRITE_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v497$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_vel"} true;
    $$data_out_vel[BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v497$1;
    $$data_out_vel[BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v497$2;
    v498$1 := $$p_vel$3$1;
    v498$2 := $$p_vel$3$2;
    call {:sourceloc} {:sourceloc_num 926} _LOG_WRITE_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v498$1, $$data_out_vel[BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 926} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 926} _CHECK_WRITE_$$data_out_vel(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v498$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_out_vel"} true;
    $$data_out_vel[BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v498$1;
    $$data_out_vel[BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v498$2;
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v9;
    havoc v10$1, v10$2;
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(local_id_x$1, 4), v10$1, $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(local_id_x$2, 4), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(local_id_x$1, 4)] := v10$1;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := v10$2;
    havoc v11$1, v11$2;
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), v11$1, $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := v11$1;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := v11$2;
    havoc v12$1, v12$2;
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), v12$1, $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := v12$1;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := v12$2;
    havoc v13$1, v13$2;
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), v13$1, $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := v13$1;
    $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := v13$2;
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 31} $bugle_barrier_duplicated_0(-1, -1);
    $j.0 := 0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  (  $j.0 mod 4 == 0 mod 4 ) ,  (  BV32_SLE($j.0, 0) ) ,  (  BV32_SGE($j.0, 0) ) ,  (  BV32_ULE($j.0, 0) ) ,  (  BV32_UGE($j.0, 0) ) ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem ==> _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(0, 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(BV32_ADD(0, 1), 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 1), 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 1), 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 1), 4), 3) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(BV32_ADD(0, 2), 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 2), 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 2), 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 2), 4), 3) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_MUL(BV32_ADD(0, 3), 4) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 3), 4), 1) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 3), 4), 2) mod BV32_MUL(4, 4) || _WATCHED_OFFSET mod BV32_MUL(4, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, 3), 4), 3) mod BV32_MUL(4, 4) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 32} true;
    v14 := BV32_ULT($j.0, 256);
    goto $truebb0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v14;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 732} $bugle_barrier_duplicated_1(-1, -1);
    $particle_idx.0$1, $tile.0 := BV32_ADD($particle_idx.0$1, 256), BV32_ADD($tile.0, 1);
    $particle_idx.0$2 := BV32_ADD($particle_idx.0$2, 256);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb0:
    assume {:partition} v14;
    v15$1 := $$p_pos$0$1;
    v15$2 := $$p_pos$0$2;
    $$50$0$1 := v15$1;
    $$50$0$2 := v15$2;
    v16$1 := $$p_pos$1$1;
    v16$2 := $$p_pos$1$2;
    $$50$1$1 := v16$1;
    $$50$1$2 := v16$2;
    v17$1 := $$p_pos$2$1;
    v17$2 := $$p_pos$2$2;
    $$50$2$1 := v17$1;
    $$50$2$2 := v17$2;
    v18$1 := $$p_pos$3$1;
    v18$2 := $$p_pos$3$2;
    $$50$3$1 := v18$1;
    $$50$3$2 := v18$2;
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL($j.0, 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL($j.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL($j.0, 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v19$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL($j.0, 4)];
    v19$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0, 4)];
    $$51$0$1 := v19$1;
    $$51$0$2 := v19$2;
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL($j.0, 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL($j.0, 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v20$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 1)];
    v20$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 1)];
    $$51$1$1 := v20$1;
    $$51$1$2 := v20$2;
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL($j.0, 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL($j.0, 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v21$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 2)];
    v21$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 2)];
    $$51$2$1 := v21$1;
    $$51$2$2 := v21$2;
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL($j.0, 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL($j.0, 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v22$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 3)];
    v22$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 3)];
    $$51$3$1 := v22$1;
    $$51$3$2 := v22$2;
    v23$1 := $$50$0$1;
    v23$2 := $$50$0$2;
    v24$1 := $$50$1$1;
    v24$2 := $$50$1$2;
    v25$1 := $$50$2$1;
    v25$2 := $$50$2$2;
    v26$1 := $$50$3$1;
    v26$2 := $$50$3$2;
    v27$1 := $$51$0$1;
    v27$2 := $$51$0$2;
    v28$1 := $$51$1$1;
    v28$2 := $$51$1$2;
    v29$1 := $$51$2$1;
    v29$2 := $$51$2$2;
    v30$1 := $$51$3$1;
    v30$2 := $$51$3$2;
    $$my_curr_pos.i$0$1 := v23$1;
    $$my_curr_pos.i$0$2 := v23$2;
    $$my_curr_pos.i$1$1 := v24$1;
    $$my_curr_pos.i$1$2 := v24$2;
    $$my_curr_pos.i$2$1 := v25$1;
    $$my_curr_pos.i$2$2 := v25$2;
    $$my_curr_pos.i$3$1 := v26$1;
    $$my_curr_pos.i$3$2 := v26$2;
    $$other_element_old_pos.i$0$1 := v27$1;
    $$other_element_old_pos.i$0$2 := v27$2;
    $$other_element_old_pos.i$1$1 := v28$1;
    $$other_element_old_pos.i$1$2 := v28$2;
    $$other_element_old_pos.i$2$1 := v29$1;
    $$other_element_old_pos.i$2$2 := v29$2;
    $$other_element_old_pos.i$3$1 := v30$1;
    $$other_element_old_pos.i$3$2 := v30$2;
    v31$1 := $$other_element_old_pos.i$0$1;
    v31$2 := $$other_element_old_pos.i$0$2;
    $$46$0$1 := v31$1;
    $$46$0$2 := v31$2;
    v32$1 := $$other_element_old_pos.i$1$1;
    v32$2 := $$other_element_old_pos.i$1$2;
    $$46$1$1 := v32$1;
    $$46$1$2 := v32$2;
    v33$1 := $$other_element_old_pos.i$2$1;
    v33$2 := $$other_element_old_pos.i$2$2;
    $$46$2$1 := v33$1;
    $$46$2$2 := v33$2;
    v34$1 := $$other_element_old_pos.i$3$1;
    v34$2 := $$other_element_old_pos.i$3$2;
    $$46$3$1 := v34$1;
    $$46$3$2 := v34$2;
    v35$1 := $$my_curr_pos.i$0$1;
    v35$2 := $$my_curr_pos.i$0$2;
    $$47$0$1 := v35$1;
    $$47$0$2 := v35$2;
    v36$1 := $$my_curr_pos.i$1$1;
    v36$2 := $$my_curr_pos.i$1$2;
    $$47$1$1 := v36$1;
    $$47$1$2 := v36$2;
    v37$1 := $$my_curr_pos.i$2$1;
    v37$2 := $$my_curr_pos.i$2$2;
    $$47$2$1 := v37$1;
    $$47$2$2 := v37$2;
    v38$1 := $$my_curr_pos.i$3$1;
    v38$2 := $$my_curr_pos.i$3$2;
    $$47$3$1 := v38$1;
    $$47$3$2 := v38$2;
    v39$1 := $$46$0$1;
    v39$2 := $$46$0$2;
    v40$1 := $$46$1$1;
    v40$2 := $$46$1$2;
    v41$1 := $$46$2$1;
    v41$2 := $$46$2$2;
    v42$1 := $$46$3$1;
    v42$2 := $$46$3$2;
    v43$1 := $$47$0$1;
    v43$2 := $$47$0$2;
    v44$1 := $$47$1$1;
    v44$2 := $$47$1$2;
    v45$1 := $$47$2$1;
    v45$2 := $$47$2$2;
    v46$1 := $$47$3$1;
    v46$2 := $$47$3$2;
    $$a.i.i$0$1 := v39$1;
    $$a.i.i$0$2 := v39$2;
    $$a.i.i$1$1 := v40$1;
    $$a.i.i$1$2 := v40$2;
    $$a.i.i$2$1 := v41$1;
    $$a.i.i$2$2 := v41$2;
    $$a.i.i$3$1 := v42$1;
    $$a.i.i$3$2 := v42$2;
    $$b.i.i$0$1 := v43$1;
    $$b.i.i$0$2 := v43$2;
    $$b.i.i$1$1 := v44$1;
    $$b.i.i$1$2 := v44$2;
    $$b.i.i$2$1 := v45$1;
    $$b.i.i$2$2 := v45$2;
    $$b.i.i$3$1 := v46$1;
    $$b.i.i$3$2 := v46$2;
    v47$1 := $$a.i.i$0$1;
    v47$2 := $$a.i.i$0$2;
    v48$1 := $$b.i.i$0$1;
    v48$2 := $$b.i.i$0$2;
    v49$1 := $$a.i.i$1$1;
    v49$2 := $$a.i.i$1$2;
    v50$1 := $$b.i.i$1$1;
    v50$2 := $$b.i.i$1$2;
    v51$1 := $$a.i.i$2$1;
    v51$2 := $$a.i.i$2$2;
    v52$1 := $$b.i.i$2$1;
    v52$2 := $$b.i.i$2$2;
    v53$1 := $$a.i.i$3$1;
    v53$2 := $$a.i.i$3$2;
    v54$1 := $$b.i.i$3$1;
    v54$2 := $$b.i.i$3$2;
    $$44$0$1 := FSUB32(v47$1, v48$1);
    $$44$0$2 := FSUB32(v47$2, v48$2);
    $$44$1$1 := FSUB32(v49$1, v50$1);
    $$44$1$2 := FSUB32(v49$2, v50$2);
    $$44$2$1 := FSUB32(v51$1, v52$1);
    $$44$2$2 := FSUB32(v51$2, v52$2);
    $$44$3$1 := FSUB32(v53$1, v54$1);
    $$44$3$2 := FSUB32(v53$2, v54$2);
    v55$1 := $$44$0$1;
    v55$2 := $$44$0$2;
    v56$1 := $$44$1$1;
    v56$2 := $$44$1$2;
    v57$1 := $$44$2$1;
    v57$2 := $$44$2$2;
    v58$1 := $$44$3$1;
    v58$2 := $$44$3$2;
    $$45$0$1 := v55$1;
    $$45$0$2 := v55$2;
    $$45$1$1 := v56$1;
    $$45$1$2 := v56$2;
    $$45$2$1 := v57$1;
    $$45$2$2 := v57$2;
    $$45$3$1 := v58$1;
    $$45$3$2 := v58$2;
    v59$1 := $$45$0$1;
    v59$2 := $$45$0$2;
    v60$1 := $$45$1$1;
    v60$2 := $$45$1$2;
    v61$1 := $$45$2$1;
    v61$2 := $$45$2$2;
    v62$1 := $$45$3$1;
    v62$2 := $$45$3$2;
    $$r.i$0$1 := v59$1;
    $$r.i$0$2 := v59$2;
    $$r.i$1$1 := v60$1;
    $$r.i$1$2 := v60$2;
    $$r.i$2$1 := v61$1;
    $$r.i$2$2 := v61$2;
    $$r.i$3$1 := v62$1;
    $$r.i$3$2 := v62$2;
    v63$1 := $$r.i$0$1;
    v63$2 := $$r.i$0$2;
    v64$1 := $$r.i$0$1;
    v64$2 := $$r.i$0$2;
    v65$1 := $$r.i$1$1;
    v65$2 := $$r.i$1$2;
    v66$1 := $$r.i$1$1;
    v66$2 := $$r.i$1$2;
    v67$1 := $$r.i$2$1;
    v67$2 := $$r.i$2$2;
    v68$1 := $$r.i$2$1;
    v68$2 := $$r.i$2$2;
    v69$1 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v63$1, v64$1), FMUL32(v65$1, v66$1)), FMUL32(v67$1, v68$1)), 902936343))));
    v69$2 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v63$2, v64$2), FMUL32(v65$2, v66$2)), FMUL32(v67$2, v68$2)), 902936343))));
    v70$1 := FMUL32(1116042691, FMUL32(FMUL32(v69$1, v69$1), v69$1));
    v70$2 := FMUL32(1116042691, FMUL32(FMUL32(v69$2, v69$2), v69$2));
    v71$1 := $$r.i$0$1;
    v71$2 := $$r.i$0$2;
    $$49$0$1 := v71$1;
    $$49$0$2 := v71$2;
    v72$1 := $$r.i$1$1;
    v72$2 := $$r.i$1$2;
    $$49$1$1 := v72$1;
    $$49$1$2 := v72$2;
    v73$1 := $$r.i$2$1;
    v73$2 := $$r.i$2$2;
    $$49$2$1 := v73$1;
    $$49$2$2 := v73$2;
    v74$1 := $$r.i$3$1;
    v74$2 := $$r.i$3$2;
    $$49$3$1 := v74$1;
    $$49$3$2 := v74$2;
    v75$1 := $$49$0$1;
    v75$2 := $$49$0$2;
    v76$1 := $$49$1$1;
    v76$2 := $$49$1$2;
    v77$1 := $$49$2$1;
    v77$2 := $$49$2$2;
    v78$1 := $$49$3$1;
    v78$2 := $$49$3$2;
    $$a.i2.i$0$1 := v75$1;
    $$a.i2.i$0$2 := v75$2;
    $$a.i2.i$1$1 := v76$1;
    $$a.i2.i$1$2 := v76$2;
    $$a.i2.i$2$1 := v77$1;
    $$a.i2.i$2$2 := v77$2;
    $$a.i2.i$3$1 := v78$1;
    $$a.i2.i$3$2 := v78$2;
    v79$1 := $$a.i2.i$0$1;
    v79$2 := $$a.i2.i$0$2;
    v80$1 := $$a.i2.i$1$1;
    v80$2 := $$a.i2.i$1$2;
    v81$1 := $$a.i2.i$2$1;
    v81$2 := $$a.i2.i$2$2;
    v82$1 := $$a.i2.i$3$1;
    v82$2 := $$a.i2.i$3$2;
    $$40$0$1 := FMUL32(v79$1, v70$1);
    $$40$0$2 := FMUL32(v79$2, v70$2);
    $$40$1$1 := FMUL32(v80$1, v70$1);
    $$40$1$2 := FMUL32(v80$2, v70$2);
    $$40$2$1 := FMUL32(v81$1, v70$1);
    $$40$2$2 := FMUL32(v81$2, v70$2);
    $$40$3$1 := FMUL32(v82$1, v70$1);
    $$40$3$2 := FMUL32(v82$2, v70$2);
    v83$1 := $$40$0$1;
    v83$2 := $$40$0$2;
    v84$1 := $$40$1$1;
    v84$2 := $$40$1$2;
    v85$1 := $$40$2$1;
    v85$2 := $$40$2$2;
    v86$1 := $$40$3$1;
    v86$2 := $$40$3$2;
    $$41$0$1 := v83$1;
    $$41$0$2 := v83$2;
    $$41$1$1 := v84$1;
    $$41$1$2 := v84$2;
    $$41$2$1 := v85$1;
    $$41$2$2 := v85$2;
    $$41$3$1 := v86$1;
    $$41$3$2 := v86$2;
    v87$1 := $$41$0$1;
    v87$2 := $$41$0$2;
    v88$1 := $$41$1$1;
    v88$2 := $$41$1$2;
    v89$1 := $$41$2$1;
    v89$2 := $$41$2$2;
    v90$1 := $$41$3$1;
    v90$2 := $$41$3$2;
    $$48$0$1 := v87$1;
    $$48$0$2 := v87$2;
    $$48$1$1 := v88$1;
    $$48$1$2 := v88$2;
    $$48$2$1 := v89$1;
    $$48$2$2 := v89$2;
    $$48$3$1 := v90$1;
    $$48$3$2 := v90$2;
    v91$1 := $$48$0$1;
    v91$2 := $$48$0$2;
    v92$1 := $$48$1$1;
    v92$2 := $$48$1$2;
    v93$1 := $$48$2$1;
    v93$2 := $$48$2$2;
    v94$1 := $$48$3$1;
    v94$2 := $$48$3$2;
    $$b.i1.i$0$1 := v91$1;
    $$b.i1.i$0$2 := v91$2;
    $$b.i1.i$1$1 := v92$1;
    $$b.i1.i$1$2 := v92$2;
    $$b.i1.i$2$1 := v93$1;
    $$b.i1.i$2$2 := v93$2;
    $$b.i1.i$3$1 := v94$1;
    $$b.i1.i$3$2 := v94$2;
    v95$1 := $$acc$0$1;
    v95$2 := $$acc$0$2;
    v96$1 := $$b.i1.i$0$1;
    v96$2 := $$b.i1.i$0$2;
    v97$1 := $$acc$1$1;
    v97$2 := $$acc$1$2;
    v98$1 := $$b.i1.i$1$1;
    v98$2 := $$b.i1.i$1$2;
    v99$1 := $$acc$2$1;
    v99$2 := $$acc$2$2;
    v100$1 := $$b.i1.i$2$1;
    v100$2 := $$b.i1.i$2$2;
    v101$1 := $$acc$3$1;
    v101$2 := $$acc$3$2;
    v102$1 := $$b.i1.i$3$1;
    v102$2 := $$b.i1.i$3$2;
    $$42$0$1 := FADD32(v95$1, v96$1);
    $$42$0$2 := FADD32(v95$2, v96$2);
    $$42$1$1 := FADD32(v97$1, v98$1);
    $$42$1$2 := FADD32(v97$2, v98$2);
    $$42$2$1 := FADD32(v99$1, v100$1);
    $$42$2$2 := FADD32(v99$2, v100$2);
    $$42$3$1 := FADD32(v101$1, v102$1);
    $$42$3$2 := FADD32(v101$2, v102$2);
    v103$1 := $$42$0$1;
    v103$2 := $$42$0$2;
    v104$1 := $$42$1$1;
    v104$2 := $$42$1$2;
    v105$1 := $$42$2$1;
    v105$2 := $$42$2$2;
    v106$1 := $$42$3$1;
    v106$2 := $$42$3$2;
    $$43$0$1 := v103$1;
    $$43$0$2 := v103$2;
    $$43$1$1 := v104$1;
    $$43$1$2 := v104$2;
    $$43$2$1 := v105$1;
    $$43$2$2 := v105$2;
    $$43$3$1 := v106$1;
    $$43$3$2 := v106$2;
    v107$1 := $$43$0$1;
    v107$2 := $$43$0$2;
    $$acc$0$1 := v107$1;
    $$acc$0$2 := v107$2;
    v108$1 := $$43$1$1;
    v108$2 := $$43$1$2;
    $$acc$1$1 := v108$1;
    $$acc$1$2 := v108$2;
    v109$1 := $$43$2$1;
    v109$2 := $$43$2$2;
    $$acc$2$1 := v109$1;
    $$acc$2$2 := v109$2;
    v110$1 := $$43$3$1;
    v110$2 := $$43$3$2;
    $$acc$3$1 := v110$1;
    $$acc$3$2 := v110$2;
    v111$1 := $$p_pos$0$1;
    v111$2 := $$p_pos$0$2;
    $$52$0$1 := v111$1;
    $$52$0$2 := v111$2;
    v112$1 := $$p_pos$1$1;
    v112$2 := $$p_pos$1$2;
    $$52$1$1 := v112$1;
    $$52$1$2 := v112$2;
    v113$1 := $$p_pos$2$1;
    v113$2 := $$p_pos$2$2;
    $$52$2$1 := v113$1;
    $$52$2$2 := v113$2;
    v114$1 := $$p_pos$3$1;
    v114$2 := $$p_pos$3$2;
    $$52$3$1 := v114$1;
    $$52$3$2 := v114$2;
    call {:sourceloc} {:sourceloc_num 216} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(BV32_ADD($j.0, 1), 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(BV32_ADD($j.0, 1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 216} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 216} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(BV32_ADD($j.0, 1), 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD($j.0, 1), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v115$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(BV32_ADD($j.0, 1), 4)];
    v115$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD($j.0, 1), 4)];
    $$53$0$1 := v115$1;
    $$53$0$2 := v115$2;
    call {:sourceloc} {:sourceloc_num 218} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 218} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 218} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v116$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 1)];
    v116$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 1)];
    $$53$1$1 := v116$1;
    $$53$1$2 := v116$2;
    call {:sourceloc} {:sourceloc_num 220} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 220} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 220} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v117$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 2)];
    v117$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 2)];
    $$53$2$1 := v117$1;
    $$53$2$2 := v117$2;
    call {:sourceloc} {:sourceloc_num 222} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 222} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 222} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v118$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 3)];
    v118$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 1), 4), 3)];
    $$53$3$1 := v118$1;
    $$53$3$2 := v118$2;
    v119$1 := $$52$0$1;
    v119$2 := $$52$0$2;
    v120$1 := $$52$1$1;
    v120$2 := $$52$1$2;
    v121$1 := $$52$2$1;
    v121$2 := $$52$2$2;
    v122$1 := $$52$3$1;
    v122$2 := $$52$3$2;
    v123$1 := $$53$0$1;
    v123$2 := $$53$0$2;
    v124$1 := $$53$1$1;
    v124$2 := $$53$1$2;
    v125$1 := $$53$2$1;
    v125$2 := $$53$2$2;
    v126$1 := $$53$3$1;
    v126$2 := $$53$3$2;
    $$my_curr_pos.i5$0$1 := v119$1;
    $$my_curr_pos.i5$0$2 := v119$2;
    $$my_curr_pos.i5$1$1 := v120$1;
    $$my_curr_pos.i5$1$2 := v120$2;
    $$my_curr_pos.i5$2$1 := v121$1;
    $$my_curr_pos.i5$2$2 := v121$2;
    $$my_curr_pos.i5$3$1 := v122$1;
    $$my_curr_pos.i5$3$2 := v122$2;
    $$other_element_old_pos.i6$0$1 := v123$1;
    $$other_element_old_pos.i6$0$2 := v123$2;
    $$other_element_old_pos.i6$1$1 := v124$1;
    $$other_element_old_pos.i6$1$2 := v124$2;
    $$other_element_old_pos.i6$2$1 := v125$1;
    $$other_element_old_pos.i6$2$2 := v125$2;
    $$other_element_old_pos.i6$3$1 := v126$1;
    $$other_element_old_pos.i6$3$2 := v126$2;
    v127$1 := $$other_element_old_pos.i6$0$1;
    v127$2 := $$other_element_old_pos.i6$0$2;
    $$36$0$1 := v127$1;
    $$36$0$2 := v127$2;
    v128$1 := $$other_element_old_pos.i6$1$1;
    v128$2 := $$other_element_old_pos.i6$1$2;
    $$36$1$1 := v128$1;
    $$36$1$2 := v128$2;
    v129$1 := $$other_element_old_pos.i6$2$1;
    v129$2 := $$other_element_old_pos.i6$2$2;
    $$36$2$1 := v129$1;
    $$36$2$2 := v129$2;
    v130$1 := $$other_element_old_pos.i6$3$1;
    v130$2 := $$other_element_old_pos.i6$3$2;
    $$36$3$1 := v130$1;
    $$36$3$2 := v130$2;
    v131$1 := $$my_curr_pos.i5$0$1;
    v131$2 := $$my_curr_pos.i5$0$2;
    $$37$0$1 := v131$1;
    $$37$0$2 := v131$2;
    v132$1 := $$my_curr_pos.i5$1$1;
    v132$2 := $$my_curr_pos.i5$1$2;
    $$37$1$1 := v132$1;
    $$37$1$2 := v132$2;
    v133$1 := $$my_curr_pos.i5$2$1;
    v133$2 := $$my_curr_pos.i5$2$2;
    $$37$2$1 := v133$1;
    $$37$2$2 := v133$2;
    v134$1 := $$my_curr_pos.i5$3$1;
    v134$2 := $$my_curr_pos.i5$3$2;
    $$37$3$1 := v134$1;
    $$37$3$2 := v134$2;
    v135$1 := $$36$0$1;
    v135$2 := $$36$0$2;
    v136$1 := $$36$1$1;
    v136$2 := $$36$1$2;
    v137$1 := $$36$2$1;
    v137$2 := $$36$2$2;
    v138$1 := $$36$3$1;
    v138$2 := $$36$3$2;
    v139$1 := $$37$0$1;
    v139$2 := $$37$0$2;
    v140$1 := $$37$1$1;
    v140$2 := $$37$1$2;
    v141$1 := $$37$2$1;
    v141$2 := $$37$2$2;
    v142$1 := $$37$3$1;
    v142$2 := $$37$3$2;
    $$a.i.i3$0$1 := v135$1;
    $$a.i.i3$0$2 := v135$2;
    $$a.i.i3$1$1 := v136$1;
    $$a.i.i3$1$2 := v136$2;
    $$a.i.i3$2$1 := v137$1;
    $$a.i.i3$2$2 := v137$2;
    $$a.i.i3$3$1 := v138$1;
    $$a.i.i3$3$2 := v138$2;
    $$b.i.i4$0$1 := v139$1;
    $$b.i.i4$0$2 := v139$2;
    $$b.i.i4$1$1 := v140$1;
    $$b.i.i4$1$2 := v140$2;
    $$b.i.i4$2$1 := v141$1;
    $$b.i.i4$2$2 := v141$2;
    $$b.i.i4$3$1 := v142$1;
    $$b.i.i4$3$2 := v142$2;
    v143$1 := $$a.i.i3$0$1;
    v143$2 := $$a.i.i3$0$2;
    v144$1 := $$b.i.i4$0$1;
    v144$2 := $$b.i.i4$0$2;
    v145$1 := $$a.i.i3$1$1;
    v145$2 := $$a.i.i3$1$2;
    v146$1 := $$b.i.i4$1$1;
    v146$2 := $$b.i.i4$1$2;
    v147$1 := $$a.i.i3$2$1;
    v147$2 := $$a.i.i3$2$2;
    v148$1 := $$b.i.i4$2$1;
    v148$2 := $$b.i.i4$2$2;
    v149$1 := $$a.i.i3$3$1;
    v149$2 := $$a.i.i3$3$2;
    v150$1 := $$b.i.i4$3$1;
    v150$2 := $$b.i.i4$3$2;
    $$34$0$1 := FSUB32(v143$1, v144$1);
    $$34$0$2 := FSUB32(v143$2, v144$2);
    $$34$1$1 := FSUB32(v145$1, v146$1);
    $$34$1$2 := FSUB32(v145$2, v146$2);
    $$34$2$1 := FSUB32(v147$1, v148$1);
    $$34$2$2 := FSUB32(v147$2, v148$2);
    $$34$3$1 := FSUB32(v149$1, v150$1);
    $$34$3$2 := FSUB32(v149$2, v150$2);
    v151$1 := $$34$0$1;
    v151$2 := $$34$0$2;
    v152$1 := $$34$1$1;
    v152$2 := $$34$1$2;
    v153$1 := $$34$2$1;
    v153$2 := $$34$2$2;
    v154$1 := $$34$3$1;
    v154$2 := $$34$3$2;
    $$35$0$1 := v151$1;
    $$35$0$2 := v151$2;
    $$35$1$1 := v152$1;
    $$35$1$2 := v152$2;
    $$35$2$1 := v153$1;
    $$35$2$2 := v153$2;
    $$35$3$1 := v154$1;
    $$35$3$2 := v154$2;
    v155$1 := $$35$0$1;
    v155$2 := $$35$0$2;
    v156$1 := $$35$1$1;
    v156$2 := $$35$1$2;
    v157$1 := $$35$2$1;
    v157$2 := $$35$2$2;
    v158$1 := $$35$3$1;
    v158$2 := $$35$3$2;
    $$r.i7$0$1 := v155$1;
    $$r.i7$0$2 := v155$2;
    $$r.i7$1$1 := v156$1;
    $$r.i7$1$2 := v156$2;
    $$r.i7$2$1 := v157$1;
    $$r.i7$2$2 := v157$2;
    $$r.i7$3$1 := v158$1;
    $$r.i7$3$2 := v158$2;
    v159$1 := $$r.i7$0$1;
    v159$2 := $$r.i7$0$2;
    v160$1 := $$r.i7$0$1;
    v160$2 := $$r.i7$0$2;
    v161$1 := $$r.i7$1$1;
    v161$2 := $$r.i7$1$2;
    v162$1 := $$r.i7$1$1;
    v162$2 := $$r.i7$1$2;
    v163$1 := $$r.i7$2$1;
    v163$2 := $$r.i7$2$2;
    v164$1 := $$r.i7$2$1;
    v164$2 := $$r.i7$2$2;
    v165$1 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v159$1, v160$1), FMUL32(v161$1, v162$1)), FMUL32(v163$1, v164$1)), 902936343))));
    v165$2 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v159$2, v160$2), FMUL32(v161$2, v162$2)), FMUL32(v163$2, v164$2)), 902936343))));
    v166$1 := FMUL32(1116042691, FMUL32(FMUL32(v165$1, v165$1), v165$1));
    v166$2 := FMUL32(1116042691, FMUL32(FMUL32(v165$2, v165$2), v165$2));
    v167$1 := $$r.i7$0$1;
    v167$2 := $$r.i7$0$2;
    $$39$0$1 := v167$1;
    $$39$0$2 := v167$2;
    v168$1 := $$r.i7$1$1;
    v168$2 := $$r.i7$1$2;
    $$39$1$1 := v168$1;
    $$39$1$2 := v168$2;
    v169$1 := $$r.i7$2$1;
    v169$2 := $$r.i7$2$2;
    $$39$2$1 := v169$1;
    $$39$2$2 := v169$2;
    v170$1 := $$r.i7$3$1;
    v170$2 := $$r.i7$3$2;
    $$39$3$1 := v170$1;
    $$39$3$2 := v170$2;
    v171$1 := $$39$0$1;
    v171$2 := $$39$0$2;
    v172$1 := $$39$1$1;
    v172$2 := $$39$1$2;
    v173$1 := $$39$2$1;
    v173$2 := $$39$2$2;
    v174$1 := $$39$3$1;
    v174$2 := $$39$3$2;
    $$a.i2.i1$0$1 := v171$1;
    $$a.i2.i1$0$2 := v171$2;
    $$a.i2.i1$1$1 := v172$1;
    $$a.i2.i1$1$2 := v172$2;
    $$a.i2.i1$2$1 := v173$1;
    $$a.i2.i1$2$2 := v173$2;
    $$a.i2.i1$3$1 := v174$1;
    $$a.i2.i1$3$2 := v174$2;
    v175$1 := $$a.i2.i1$0$1;
    v175$2 := $$a.i2.i1$0$2;
    v176$1 := $$a.i2.i1$1$1;
    v176$2 := $$a.i2.i1$1$2;
    v177$1 := $$a.i2.i1$2$1;
    v177$2 := $$a.i2.i1$2$2;
    v178$1 := $$a.i2.i1$3$1;
    v178$2 := $$a.i2.i1$3$2;
    $$30$0$1 := FMUL32(v175$1, v166$1);
    $$30$0$2 := FMUL32(v175$2, v166$2);
    $$30$1$1 := FMUL32(v176$1, v166$1);
    $$30$1$2 := FMUL32(v176$2, v166$2);
    $$30$2$1 := FMUL32(v177$1, v166$1);
    $$30$2$2 := FMUL32(v177$2, v166$2);
    $$30$3$1 := FMUL32(v178$1, v166$1);
    $$30$3$2 := FMUL32(v178$2, v166$2);
    v179$1 := $$30$0$1;
    v179$2 := $$30$0$2;
    v180$1 := $$30$1$1;
    v180$2 := $$30$1$2;
    v181$1 := $$30$2$1;
    v181$2 := $$30$2$2;
    v182$1 := $$30$3$1;
    v182$2 := $$30$3$2;
    $$31$0$1 := v179$1;
    $$31$0$2 := v179$2;
    $$31$1$1 := v180$1;
    $$31$1$2 := v180$2;
    $$31$2$1 := v181$1;
    $$31$2$2 := v181$2;
    $$31$3$1 := v182$1;
    $$31$3$2 := v182$2;
    v183$1 := $$31$0$1;
    v183$2 := $$31$0$2;
    v184$1 := $$31$1$1;
    v184$2 := $$31$1$2;
    v185$1 := $$31$2$1;
    v185$2 := $$31$2$2;
    v186$1 := $$31$3$1;
    v186$2 := $$31$3$2;
    $$38$0$1 := v183$1;
    $$38$0$2 := v183$2;
    $$38$1$1 := v184$1;
    $$38$1$2 := v184$2;
    $$38$2$1 := v185$1;
    $$38$2$2 := v185$2;
    $$38$3$1 := v186$1;
    $$38$3$2 := v186$2;
    v187$1 := $$38$0$1;
    v187$2 := $$38$0$2;
    v188$1 := $$38$1$1;
    v188$2 := $$38$1$2;
    v189$1 := $$38$2$1;
    v189$2 := $$38$2$2;
    v190$1 := $$38$3$1;
    v190$2 := $$38$3$2;
    $$b.i1.i2$0$1 := v187$1;
    $$b.i1.i2$0$2 := v187$2;
    $$b.i1.i2$1$1 := v188$1;
    $$b.i1.i2$1$2 := v188$2;
    $$b.i1.i2$2$1 := v189$1;
    $$b.i1.i2$2$2 := v189$2;
    $$b.i1.i2$3$1 := v190$1;
    $$b.i1.i2$3$2 := v190$2;
    v191$1 := $$acc$0$1;
    v191$2 := $$acc$0$2;
    v192$1 := $$b.i1.i2$0$1;
    v192$2 := $$b.i1.i2$0$2;
    v193$1 := $$acc$1$1;
    v193$2 := $$acc$1$2;
    v194$1 := $$b.i1.i2$1$1;
    v194$2 := $$b.i1.i2$1$2;
    v195$1 := $$acc$2$1;
    v195$2 := $$acc$2$2;
    v196$1 := $$b.i1.i2$2$1;
    v196$2 := $$b.i1.i2$2$2;
    v197$1 := $$acc$3$1;
    v197$2 := $$acc$3$2;
    v198$1 := $$b.i1.i2$3$1;
    v198$2 := $$b.i1.i2$3$2;
    $$32$0$1 := FADD32(v191$1, v192$1);
    $$32$0$2 := FADD32(v191$2, v192$2);
    $$32$1$1 := FADD32(v193$1, v194$1);
    $$32$1$2 := FADD32(v193$2, v194$2);
    $$32$2$1 := FADD32(v195$1, v196$1);
    $$32$2$2 := FADD32(v195$2, v196$2);
    $$32$3$1 := FADD32(v197$1, v198$1);
    $$32$3$2 := FADD32(v197$2, v198$2);
    v199$1 := $$32$0$1;
    v199$2 := $$32$0$2;
    v200$1 := $$32$1$1;
    v200$2 := $$32$1$2;
    v201$1 := $$32$2$1;
    v201$2 := $$32$2$2;
    v202$1 := $$32$3$1;
    v202$2 := $$32$3$2;
    $$33$0$1 := v199$1;
    $$33$0$2 := v199$2;
    $$33$1$1 := v200$1;
    $$33$1$2 := v200$2;
    $$33$2$1 := v201$1;
    $$33$2$2 := v201$2;
    $$33$3$1 := v202$1;
    $$33$3$2 := v202$2;
    v203$1 := $$33$0$1;
    v203$2 := $$33$0$2;
    $$acc$0$1 := v203$1;
    $$acc$0$2 := v203$2;
    v204$1 := $$33$1$1;
    v204$2 := $$33$1$2;
    $$acc$1$1 := v204$1;
    $$acc$1$2 := v204$2;
    v205$1 := $$33$2$1;
    v205$2 := $$33$2$2;
    $$acc$2$1 := v205$1;
    $$acc$2$2 := v205$2;
    v206$1 := $$33$3$1;
    v206$2 := $$33$3$2;
    $$acc$3$1 := v206$1;
    $$acc$3$2 := v206$2;
    v207$1 := $$p_pos$0$1;
    v207$2 := $$p_pos$0$2;
    $$54$0$1 := v207$1;
    $$54$0$2 := v207$2;
    v208$1 := $$p_pos$1$1;
    v208$2 := $$p_pos$1$2;
    $$54$1$1 := v208$1;
    $$54$1$2 := v208$2;
    v209$1 := $$p_pos$2$1;
    v209$2 := $$p_pos$2$2;
    $$54$2$1 := v209$1;
    $$54$2$2 := v209$2;
    v210$1 := $$p_pos$3$1;
    v210$2 := $$p_pos$3$2;
    $$54$3$1 := v210$1;
    $$54$3$2 := v210$2;
    call {:sourceloc} {:sourceloc_num 390} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(BV32_ADD($j.0, 2), 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(BV32_ADD($j.0, 2), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 390} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 390} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(BV32_ADD($j.0, 2), 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD($j.0, 2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v211$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(BV32_ADD($j.0, 2), 4)];
    v211$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD($j.0, 2), 4)];
    $$55$0$1 := v211$1;
    $$55$0$2 := v211$2;
    call {:sourceloc} {:sourceloc_num 392} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 392} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 392} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v212$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 1)];
    v212$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 1)];
    $$55$1$1 := v212$1;
    $$55$1$2 := v212$2;
    call {:sourceloc} {:sourceloc_num 394} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 394} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 394} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v213$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 2)];
    v213$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 2)];
    $$55$2$1 := v213$1;
    $$55$2$2 := v213$2;
    call {:sourceloc} {:sourceloc_num 396} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 396} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 396} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v214$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 3)];
    v214$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 2), 4), 3)];
    $$55$3$1 := v214$1;
    $$55$3$2 := v214$2;
    v215$1 := $$54$0$1;
    v215$2 := $$54$0$2;
    v216$1 := $$54$1$1;
    v216$2 := $$54$1$2;
    v217$1 := $$54$2$1;
    v217$2 := $$54$2$2;
    v218$1 := $$54$3$1;
    v218$2 := $$54$3$2;
    v219$1 := $$55$0$1;
    v219$2 := $$55$0$2;
    v220$1 := $$55$1$1;
    v220$2 := $$55$1$2;
    v221$1 := $$55$2$1;
    v221$2 := $$55$2$2;
    v222$1 := $$55$3$1;
    v222$2 := $$55$3$2;
    $$my_curr_pos.i16$0$1 := v215$1;
    $$my_curr_pos.i16$0$2 := v215$2;
    $$my_curr_pos.i16$1$1 := v216$1;
    $$my_curr_pos.i16$1$2 := v216$2;
    $$my_curr_pos.i16$2$1 := v217$1;
    $$my_curr_pos.i16$2$2 := v217$2;
    $$my_curr_pos.i16$3$1 := v218$1;
    $$my_curr_pos.i16$3$2 := v218$2;
    $$other_element_old_pos.i17$0$1 := v219$1;
    $$other_element_old_pos.i17$0$2 := v219$2;
    $$other_element_old_pos.i17$1$1 := v220$1;
    $$other_element_old_pos.i17$1$2 := v220$2;
    $$other_element_old_pos.i17$2$1 := v221$1;
    $$other_element_old_pos.i17$2$2 := v221$2;
    $$other_element_old_pos.i17$3$1 := v222$1;
    $$other_element_old_pos.i17$3$2 := v222$2;
    v223$1 := $$other_element_old_pos.i17$0$1;
    v223$2 := $$other_element_old_pos.i17$0$2;
    $$26$0$1 := v223$1;
    $$26$0$2 := v223$2;
    v224$1 := $$other_element_old_pos.i17$1$1;
    v224$2 := $$other_element_old_pos.i17$1$2;
    $$26$1$1 := v224$1;
    $$26$1$2 := v224$2;
    v225$1 := $$other_element_old_pos.i17$2$1;
    v225$2 := $$other_element_old_pos.i17$2$2;
    $$26$2$1 := v225$1;
    $$26$2$2 := v225$2;
    v226$1 := $$other_element_old_pos.i17$3$1;
    v226$2 := $$other_element_old_pos.i17$3$2;
    $$26$3$1 := v226$1;
    $$26$3$2 := v226$2;
    v227$1 := $$my_curr_pos.i16$0$1;
    v227$2 := $$my_curr_pos.i16$0$2;
    $$27$0$1 := v227$1;
    $$27$0$2 := v227$2;
    v228$1 := $$my_curr_pos.i16$1$1;
    v228$2 := $$my_curr_pos.i16$1$2;
    $$27$1$1 := v228$1;
    $$27$1$2 := v228$2;
    v229$1 := $$my_curr_pos.i16$2$1;
    v229$2 := $$my_curr_pos.i16$2$2;
    $$27$2$1 := v229$1;
    $$27$2$2 := v229$2;
    v230$1 := $$my_curr_pos.i16$3$1;
    v230$2 := $$my_curr_pos.i16$3$2;
    $$27$3$1 := v230$1;
    $$27$3$2 := v230$2;
    v231$1 := $$26$0$1;
    v231$2 := $$26$0$2;
    v232$1 := $$26$1$1;
    v232$2 := $$26$1$2;
    v233$1 := $$26$2$1;
    v233$2 := $$26$2$2;
    v234$1 := $$26$3$1;
    v234$2 := $$26$3$2;
    v235$1 := $$27$0$1;
    v235$2 := $$27$0$2;
    v236$1 := $$27$1$1;
    v236$2 := $$27$1$2;
    v237$1 := $$27$2$1;
    v237$2 := $$27$2$2;
    v238$1 := $$27$3$1;
    v238$2 := $$27$3$2;
    $$a.i.i14$0$1 := v231$1;
    $$a.i.i14$0$2 := v231$2;
    $$a.i.i14$1$1 := v232$1;
    $$a.i.i14$1$2 := v232$2;
    $$a.i.i14$2$1 := v233$1;
    $$a.i.i14$2$2 := v233$2;
    $$a.i.i14$3$1 := v234$1;
    $$a.i.i14$3$2 := v234$2;
    $$b.i.i15$0$1 := v235$1;
    $$b.i.i15$0$2 := v235$2;
    $$b.i.i15$1$1 := v236$1;
    $$b.i.i15$1$2 := v236$2;
    $$b.i.i15$2$1 := v237$1;
    $$b.i.i15$2$2 := v237$2;
    $$b.i.i15$3$1 := v238$1;
    $$b.i.i15$3$2 := v238$2;
    v239$1 := $$a.i.i14$0$1;
    v239$2 := $$a.i.i14$0$2;
    v240$1 := $$b.i.i15$0$1;
    v240$2 := $$b.i.i15$0$2;
    v241$1 := $$a.i.i14$1$1;
    v241$2 := $$a.i.i14$1$2;
    v242$1 := $$b.i.i15$1$1;
    v242$2 := $$b.i.i15$1$2;
    v243$1 := $$a.i.i14$2$1;
    v243$2 := $$a.i.i14$2$2;
    v244$1 := $$b.i.i15$2$1;
    v244$2 := $$b.i.i15$2$2;
    v245$1 := $$a.i.i14$3$1;
    v245$2 := $$a.i.i14$3$2;
    v246$1 := $$b.i.i15$3$1;
    v246$2 := $$b.i.i15$3$2;
    $$24$0$1 := FSUB32(v239$1, v240$1);
    $$24$0$2 := FSUB32(v239$2, v240$2);
    $$24$1$1 := FSUB32(v241$1, v242$1);
    $$24$1$2 := FSUB32(v241$2, v242$2);
    $$24$2$1 := FSUB32(v243$1, v244$1);
    $$24$2$2 := FSUB32(v243$2, v244$2);
    $$24$3$1 := FSUB32(v245$1, v246$1);
    $$24$3$2 := FSUB32(v245$2, v246$2);
    v247$1 := $$24$0$1;
    v247$2 := $$24$0$2;
    v248$1 := $$24$1$1;
    v248$2 := $$24$1$2;
    v249$1 := $$24$2$1;
    v249$2 := $$24$2$2;
    v250$1 := $$24$3$1;
    v250$2 := $$24$3$2;
    $$25$0$1 := v247$1;
    $$25$0$2 := v247$2;
    $$25$1$1 := v248$1;
    $$25$1$2 := v248$2;
    $$25$2$1 := v249$1;
    $$25$2$2 := v249$2;
    $$25$3$1 := v250$1;
    $$25$3$2 := v250$2;
    v251$1 := $$25$0$1;
    v251$2 := $$25$0$2;
    v252$1 := $$25$1$1;
    v252$2 := $$25$1$2;
    v253$1 := $$25$2$1;
    v253$2 := $$25$2$2;
    v254$1 := $$25$3$1;
    v254$2 := $$25$3$2;
    $$r.i18$0$1 := v251$1;
    $$r.i18$0$2 := v251$2;
    $$r.i18$1$1 := v252$1;
    $$r.i18$1$2 := v252$2;
    $$r.i18$2$1 := v253$1;
    $$r.i18$2$2 := v253$2;
    $$r.i18$3$1 := v254$1;
    $$r.i18$3$2 := v254$2;
    v255$1 := $$r.i18$0$1;
    v255$2 := $$r.i18$0$2;
    v256$1 := $$r.i18$0$1;
    v256$2 := $$r.i18$0$2;
    v257$1 := $$r.i18$1$1;
    v257$2 := $$r.i18$1$2;
    v258$1 := $$r.i18$1$1;
    v258$2 := $$r.i18$1$2;
    v259$1 := $$r.i18$2$1;
    v259$2 := $$r.i18$2$2;
    v260$1 := $$r.i18$2$1;
    v260$2 := $$r.i18$2$2;
    v261$1 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v255$1, v256$1), FMUL32(v257$1, v258$1)), FMUL32(v259$1, v260$1)), 902936343))));
    v261$2 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v255$2, v256$2), FMUL32(v257$2, v258$2)), FMUL32(v259$2, v260$2)), 902936343))));
    v262$1 := FMUL32(1116042691, FMUL32(FMUL32(v261$1, v261$1), v261$1));
    v262$2 := FMUL32(1116042691, FMUL32(FMUL32(v261$2, v261$2), v261$2));
    v263$1 := $$r.i18$0$1;
    v263$2 := $$r.i18$0$2;
    $$29$0$1 := v263$1;
    $$29$0$2 := v263$2;
    v264$1 := $$r.i18$1$1;
    v264$2 := $$r.i18$1$2;
    $$29$1$1 := v264$1;
    $$29$1$2 := v264$2;
    v265$1 := $$r.i18$2$1;
    v265$2 := $$r.i18$2$2;
    $$29$2$1 := v265$1;
    $$29$2$2 := v265$2;
    v266$1 := $$r.i18$3$1;
    v266$2 := $$r.i18$3$2;
    $$29$3$1 := v266$1;
    $$29$3$2 := v266$2;
    v267$1 := $$29$0$1;
    v267$2 := $$29$0$2;
    v268$1 := $$29$1$1;
    v268$2 := $$29$1$2;
    v269$1 := $$29$2$1;
    v269$2 := $$29$2$2;
    v270$1 := $$29$3$1;
    v270$2 := $$29$3$2;
    $$a.i2.i12$0$1 := v267$1;
    $$a.i2.i12$0$2 := v267$2;
    $$a.i2.i12$1$1 := v268$1;
    $$a.i2.i12$1$2 := v268$2;
    $$a.i2.i12$2$1 := v269$1;
    $$a.i2.i12$2$2 := v269$2;
    $$a.i2.i12$3$1 := v270$1;
    $$a.i2.i12$3$2 := v270$2;
    v271$1 := $$a.i2.i12$0$1;
    v271$2 := $$a.i2.i12$0$2;
    v272$1 := $$a.i2.i12$1$1;
    v272$2 := $$a.i2.i12$1$2;
    v273$1 := $$a.i2.i12$2$1;
    v273$2 := $$a.i2.i12$2$2;
    v274$1 := $$a.i2.i12$3$1;
    v274$2 := $$a.i2.i12$3$2;
    $$20$0$1 := FMUL32(v271$1, v262$1);
    $$20$0$2 := FMUL32(v271$2, v262$2);
    $$20$1$1 := FMUL32(v272$1, v262$1);
    $$20$1$2 := FMUL32(v272$2, v262$2);
    $$20$2$1 := FMUL32(v273$1, v262$1);
    $$20$2$2 := FMUL32(v273$2, v262$2);
    $$20$3$1 := FMUL32(v274$1, v262$1);
    $$20$3$2 := FMUL32(v274$2, v262$2);
    v275$1 := $$20$0$1;
    v275$2 := $$20$0$2;
    v276$1 := $$20$1$1;
    v276$2 := $$20$1$2;
    v277$1 := $$20$2$1;
    v277$2 := $$20$2$2;
    v278$1 := $$20$3$1;
    v278$2 := $$20$3$2;
    $$21$0$1 := v275$1;
    $$21$0$2 := v275$2;
    $$21$1$1 := v276$1;
    $$21$1$2 := v276$2;
    $$21$2$1 := v277$1;
    $$21$2$2 := v277$2;
    $$21$3$1 := v278$1;
    $$21$3$2 := v278$2;
    v279$1 := $$21$0$1;
    v279$2 := $$21$0$2;
    v280$1 := $$21$1$1;
    v280$2 := $$21$1$2;
    v281$1 := $$21$2$1;
    v281$2 := $$21$2$2;
    v282$1 := $$21$3$1;
    v282$2 := $$21$3$2;
    $$28$0$1 := v279$1;
    $$28$0$2 := v279$2;
    $$28$1$1 := v280$1;
    $$28$1$2 := v280$2;
    $$28$2$1 := v281$1;
    $$28$2$2 := v281$2;
    $$28$3$1 := v282$1;
    $$28$3$2 := v282$2;
    v283$1 := $$28$0$1;
    v283$2 := $$28$0$2;
    v284$1 := $$28$1$1;
    v284$2 := $$28$1$2;
    v285$1 := $$28$2$1;
    v285$2 := $$28$2$2;
    v286$1 := $$28$3$1;
    v286$2 := $$28$3$2;
    $$b.i1.i13$0$1 := v283$1;
    $$b.i1.i13$0$2 := v283$2;
    $$b.i1.i13$1$1 := v284$1;
    $$b.i1.i13$1$2 := v284$2;
    $$b.i1.i13$2$1 := v285$1;
    $$b.i1.i13$2$2 := v285$2;
    $$b.i1.i13$3$1 := v286$1;
    $$b.i1.i13$3$2 := v286$2;
    v287$1 := $$acc$0$1;
    v287$2 := $$acc$0$2;
    v288$1 := $$b.i1.i13$0$1;
    v288$2 := $$b.i1.i13$0$2;
    v289$1 := $$acc$1$1;
    v289$2 := $$acc$1$2;
    v290$1 := $$b.i1.i13$1$1;
    v290$2 := $$b.i1.i13$1$2;
    v291$1 := $$acc$2$1;
    v291$2 := $$acc$2$2;
    v292$1 := $$b.i1.i13$2$1;
    v292$2 := $$b.i1.i13$2$2;
    v293$1 := $$acc$3$1;
    v293$2 := $$acc$3$2;
    v294$1 := $$b.i1.i13$3$1;
    v294$2 := $$b.i1.i13$3$2;
    $$22$0$1 := FADD32(v287$1, v288$1);
    $$22$0$2 := FADD32(v287$2, v288$2);
    $$22$1$1 := FADD32(v289$1, v290$1);
    $$22$1$2 := FADD32(v289$2, v290$2);
    $$22$2$1 := FADD32(v291$1, v292$1);
    $$22$2$2 := FADD32(v291$2, v292$2);
    $$22$3$1 := FADD32(v293$1, v294$1);
    $$22$3$2 := FADD32(v293$2, v294$2);
    v295$1 := $$22$0$1;
    v295$2 := $$22$0$2;
    v296$1 := $$22$1$1;
    v296$2 := $$22$1$2;
    v297$1 := $$22$2$1;
    v297$2 := $$22$2$2;
    v298$1 := $$22$3$1;
    v298$2 := $$22$3$2;
    $$23$0$1 := v295$1;
    $$23$0$2 := v295$2;
    $$23$1$1 := v296$1;
    $$23$1$2 := v296$2;
    $$23$2$1 := v297$1;
    $$23$2$2 := v297$2;
    $$23$3$1 := v298$1;
    $$23$3$2 := v298$2;
    v299$1 := $$23$0$1;
    v299$2 := $$23$0$2;
    $$acc$0$1 := v299$1;
    $$acc$0$2 := v299$2;
    v300$1 := $$23$1$1;
    v300$2 := $$23$1$2;
    $$acc$1$1 := v300$1;
    $$acc$1$2 := v300$2;
    v301$1 := $$23$2$1;
    v301$2 := $$23$2$2;
    $$acc$2$1 := v301$1;
    $$acc$2$2 := v301$2;
    v302$1 := $$23$3$1;
    v302$2 := $$23$3$2;
    $$acc$3$1 := v302$1;
    $$acc$3$2 := v302$2;
    v303$1 := $$p_pos$0$1;
    v303$2 := $$p_pos$0$2;
    $$56$0$1 := v303$1;
    $$56$0$2 := v303$2;
    v304$1 := $$p_pos$1$1;
    v304$2 := $$p_pos$1$2;
    $$56$1$1 := v304$1;
    $$56$1$2 := v304$2;
    v305$1 := $$p_pos$2$1;
    v305$2 := $$p_pos$2$2;
    $$56$2$1 := v305$1;
    $$56$2$2 := v305$2;
    v306$1 := $$p_pos$3$1;
    v306$2 := $$p_pos$3$2;
    $$56$3$1 := v306$1;
    $$56$3$2 := v306$2;
    call {:sourceloc} {:sourceloc_num 564} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(BV32_ADD($j.0, 3), 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(BV32_ADD($j.0, 3), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 564} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 564} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_MUL(BV32_ADD($j.0, 3), 4), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD($j.0, 3), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v307$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_MUL(BV32_ADD($j.0, 3), 4)];
    v307$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD($j.0, 3), 4)];
    $$57$0$1 := v307$1;
    $$57$0$2 := v307$2;
    call {:sourceloc} {:sourceloc_num 566} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 566} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 566} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 1), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v308$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 1)];
    v308$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 1)];
    $$57$1$1 := v308$1;
    $$57$1$2 := v308$2;
    call {:sourceloc} {:sourceloc_num 568} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 568} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 568} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 2), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v309$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 2)];
    v309$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 2)];
    $$57$2$1 := v309$1;
    $$57$2$2 := v309$2;
    call {:sourceloc} {:sourceloc_num 570} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 570} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 570} _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(true, BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 3), $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} true;
    v310$1 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[1bv1][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 3)];
    v310$2 := $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD($j.0, 3), 4), 3)];
    $$57$3$1 := v310$1;
    $$57$3$2 := v310$2;
    v311$1 := $$56$0$1;
    v311$2 := $$56$0$2;
    v312$1 := $$56$1$1;
    v312$2 := $$56$1$2;
    v313$1 := $$56$2$1;
    v313$2 := $$56$2$2;
    v314$1 := $$56$3$1;
    v314$2 := $$56$3$2;
    v315$1 := $$57$0$1;
    v315$2 := $$57$0$2;
    v316$1 := $$57$1$1;
    v316$2 := $$57$1$2;
    v317$1 := $$57$2$1;
    v317$2 := $$57$2$2;
    v318$1 := $$57$3$1;
    v318$2 := $$57$3$2;
    $$my_curr_pos.i27$0$1 := v311$1;
    $$my_curr_pos.i27$0$2 := v311$2;
    $$my_curr_pos.i27$1$1 := v312$1;
    $$my_curr_pos.i27$1$2 := v312$2;
    $$my_curr_pos.i27$2$1 := v313$1;
    $$my_curr_pos.i27$2$2 := v313$2;
    $$my_curr_pos.i27$3$1 := v314$1;
    $$my_curr_pos.i27$3$2 := v314$2;
    $$other_element_old_pos.i28$0$1 := v315$1;
    $$other_element_old_pos.i28$0$2 := v315$2;
    $$other_element_old_pos.i28$1$1 := v316$1;
    $$other_element_old_pos.i28$1$2 := v316$2;
    $$other_element_old_pos.i28$2$1 := v317$1;
    $$other_element_old_pos.i28$2$2 := v317$2;
    $$other_element_old_pos.i28$3$1 := v318$1;
    $$other_element_old_pos.i28$3$2 := v318$2;
    v319$1 := $$other_element_old_pos.i28$0$1;
    v319$2 := $$other_element_old_pos.i28$0$2;
    $$16$0$1 := v319$1;
    $$16$0$2 := v319$2;
    v320$1 := $$other_element_old_pos.i28$1$1;
    v320$2 := $$other_element_old_pos.i28$1$2;
    $$16$1$1 := v320$1;
    $$16$1$2 := v320$2;
    v321$1 := $$other_element_old_pos.i28$2$1;
    v321$2 := $$other_element_old_pos.i28$2$2;
    $$16$2$1 := v321$1;
    $$16$2$2 := v321$2;
    v322$1 := $$other_element_old_pos.i28$3$1;
    v322$2 := $$other_element_old_pos.i28$3$2;
    $$16$3$1 := v322$1;
    $$16$3$2 := v322$2;
    v323$1 := $$my_curr_pos.i27$0$1;
    v323$2 := $$my_curr_pos.i27$0$2;
    $$17$0$1 := v323$1;
    $$17$0$2 := v323$2;
    v324$1 := $$my_curr_pos.i27$1$1;
    v324$2 := $$my_curr_pos.i27$1$2;
    $$17$1$1 := v324$1;
    $$17$1$2 := v324$2;
    v325$1 := $$my_curr_pos.i27$2$1;
    v325$2 := $$my_curr_pos.i27$2$2;
    $$17$2$1 := v325$1;
    $$17$2$2 := v325$2;
    v326$1 := $$my_curr_pos.i27$3$1;
    v326$2 := $$my_curr_pos.i27$3$2;
    $$17$3$1 := v326$1;
    $$17$3$2 := v326$2;
    v327$1 := $$16$0$1;
    v327$2 := $$16$0$2;
    v328$1 := $$16$1$1;
    v328$2 := $$16$1$2;
    v329$1 := $$16$2$1;
    v329$2 := $$16$2$2;
    v330$1 := $$16$3$1;
    v330$2 := $$16$3$2;
    v331$1 := $$17$0$1;
    v331$2 := $$17$0$2;
    v332$1 := $$17$1$1;
    v332$2 := $$17$1$2;
    v333$1 := $$17$2$1;
    v333$2 := $$17$2$2;
    v334$1 := $$17$3$1;
    v334$2 := $$17$3$2;
    $$a.i.i25$0$1 := v327$1;
    $$a.i.i25$0$2 := v327$2;
    $$a.i.i25$1$1 := v328$1;
    $$a.i.i25$1$2 := v328$2;
    $$a.i.i25$2$1 := v329$1;
    $$a.i.i25$2$2 := v329$2;
    $$a.i.i25$3$1 := v330$1;
    $$a.i.i25$3$2 := v330$2;
    $$b.i.i26$0$1 := v331$1;
    $$b.i.i26$0$2 := v331$2;
    $$b.i.i26$1$1 := v332$1;
    $$b.i.i26$1$2 := v332$2;
    $$b.i.i26$2$1 := v333$1;
    $$b.i.i26$2$2 := v333$2;
    $$b.i.i26$3$1 := v334$1;
    $$b.i.i26$3$2 := v334$2;
    v335$1 := $$a.i.i25$0$1;
    v335$2 := $$a.i.i25$0$2;
    v336$1 := $$b.i.i26$0$1;
    v336$2 := $$b.i.i26$0$2;
    v337$1 := $$a.i.i25$1$1;
    v337$2 := $$a.i.i25$1$2;
    v338$1 := $$b.i.i26$1$1;
    v338$2 := $$b.i.i26$1$2;
    v339$1 := $$a.i.i25$2$1;
    v339$2 := $$a.i.i25$2$2;
    v340$1 := $$b.i.i26$2$1;
    v340$2 := $$b.i.i26$2$2;
    v341$1 := $$a.i.i25$3$1;
    v341$2 := $$a.i.i25$3$2;
    v342$1 := $$b.i.i26$3$1;
    v342$2 := $$b.i.i26$3$2;
    $$14$0$1 := FSUB32(v335$1, v336$1);
    $$14$0$2 := FSUB32(v335$2, v336$2);
    $$14$1$1 := FSUB32(v337$1, v338$1);
    $$14$1$2 := FSUB32(v337$2, v338$2);
    $$14$2$1 := FSUB32(v339$1, v340$1);
    $$14$2$2 := FSUB32(v339$2, v340$2);
    $$14$3$1 := FSUB32(v341$1, v342$1);
    $$14$3$2 := FSUB32(v341$2, v342$2);
    v343$1 := $$14$0$1;
    v343$2 := $$14$0$2;
    v344$1 := $$14$1$1;
    v344$2 := $$14$1$2;
    v345$1 := $$14$2$1;
    v345$2 := $$14$2$2;
    v346$1 := $$14$3$1;
    v346$2 := $$14$3$2;
    $$15$0$1 := v343$1;
    $$15$0$2 := v343$2;
    $$15$1$1 := v344$1;
    $$15$1$2 := v344$2;
    $$15$2$1 := v345$1;
    $$15$2$2 := v345$2;
    $$15$3$1 := v346$1;
    $$15$3$2 := v346$2;
    v347$1 := $$15$0$1;
    v347$2 := $$15$0$2;
    v348$1 := $$15$1$1;
    v348$2 := $$15$1$2;
    v349$1 := $$15$2$1;
    v349$2 := $$15$2$2;
    v350$1 := $$15$3$1;
    v350$2 := $$15$3$2;
    $$r.i29$0$1 := v347$1;
    $$r.i29$0$2 := v347$2;
    $$r.i29$1$1 := v348$1;
    $$r.i29$1$2 := v348$2;
    $$r.i29$2$1 := v349$1;
    $$r.i29$2$2 := v349$2;
    $$r.i29$3$1 := v350$1;
    $$r.i29$3$2 := v350$2;
    v351$1 := $$r.i29$0$1;
    v351$2 := $$r.i29$0$2;
    v352$1 := $$r.i29$0$1;
    v352$2 := $$r.i29$0$2;
    v353$1 := $$r.i29$1$1;
    v353$2 := $$r.i29$1$2;
    v354$1 := $$r.i29$1$1;
    v354$2 := $$r.i29$1$2;
    v355$1 := $$r.i29$2$1;
    v355$2 := $$r.i29$2$2;
    v356$1 := $$r.i29$2$1;
    v356$2 := $$r.i29$2$2;
    v357$1 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v351$1, v352$1), FMUL32(v353$1, v354$1)), FMUL32(v355$1, v356$1)), 902936343))));
    v357$2 := FP64_CONV32(FRSQRT64(FP32_CONV64(FADD32(FADD32(FADD32(FMUL32(v351$2, v352$2), FMUL32(v353$2, v354$2)), FMUL32(v355$2, v356$2)), 902936343))));
    v358$1 := FMUL32(1116042691, FMUL32(FMUL32(v357$1, v357$1), v357$1));
    v358$2 := FMUL32(1116042691, FMUL32(FMUL32(v357$2, v357$2), v357$2));
    v359$1 := $$r.i29$0$1;
    v359$2 := $$r.i29$0$2;
    $$19$0$1 := v359$1;
    $$19$0$2 := v359$2;
    v360$1 := $$r.i29$1$1;
    v360$2 := $$r.i29$1$2;
    $$19$1$1 := v360$1;
    $$19$1$2 := v360$2;
    v361$1 := $$r.i29$2$1;
    v361$2 := $$r.i29$2$2;
    $$19$2$1 := v361$1;
    $$19$2$2 := v361$2;
    v362$1 := $$r.i29$3$1;
    v362$2 := $$r.i29$3$2;
    $$19$3$1 := v362$1;
    $$19$3$2 := v362$2;
    v363$1 := $$19$0$1;
    v363$2 := $$19$0$2;
    v364$1 := $$19$1$1;
    v364$2 := $$19$1$2;
    v365$1 := $$19$2$1;
    v365$2 := $$19$2$2;
    v366$1 := $$19$3$1;
    v366$2 := $$19$3$2;
    $$a.i2.i23$0$1 := v363$1;
    $$a.i2.i23$0$2 := v363$2;
    $$a.i2.i23$1$1 := v364$1;
    $$a.i2.i23$1$2 := v364$2;
    $$a.i2.i23$2$1 := v365$1;
    $$a.i2.i23$2$2 := v365$2;
    $$a.i2.i23$3$1 := v366$1;
    $$a.i2.i23$3$2 := v366$2;
    v367$1 := $$a.i2.i23$0$1;
    v367$2 := $$a.i2.i23$0$2;
    v368$1 := $$a.i2.i23$1$1;
    v368$2 := $$a.i2.i23$1$2;
    v369$1 := $$a.i2.i23$2$1;
    v369$2 := $$a.i2.i23$2$2;
    v370$1 := $$a.i2.i23$3$1;
    v370$2 := $$a.i2.i23$3$2;
    $$10$0$1 := FMUL32(v367$1, v358$1);
    $$10$0$2 := FMUL32(v367$2, v358$2);
    $$10$1$1 := FMUL32(v368$1, v358$1);
    $$10$1$2 := FMUL32(v368$2, v358$2);
    $$10$2$1 := FMUL32(v369$1, v358$1);
    $$10$2$2 := FMUL32(v369$2, v358$2);
    $$10$3$1 := FMUL32(v370$1, v358$1);
    $$10$3$2 := FMUL32(v370$2, v358$2);
    v371$1 := $$10$0$1;
    v371$2 := $$10$0$2;
    v372$1 := $$10$1$1;
    v372$2 := $$10$1$2;
    v373$1 := $$10$2$1;
    v373$2 := $$10$2$2;
    v374$1 := $$10$3$1;
    v374$2 := $$10$3$2;
    $$11$0$1 := v371$1;
    $$11$0$2 := v371$2;
    $$11$1$1 := v372$1;
    $$11$1$2 := v372$2;
    $$11$2$1 := v373$1;
    $$11$2$2 := v373$2;
    $$11$3$1 := v374$1;
    $$11$3$2 := v374$2;
    v375$1 := $$11$0$1;
    v375$2 := $$11$0$2;
    v376$1 := $$11$1$1;
    v376$2 := $$11$1$2;
    v377$1 := $$11$2$1;
    v377$2 := $$11$2$2;
    v378$1 := $$11$3$1;
    v378$2 := $$11$3$2;
    $$18$0$1 := v375$1;
    $$18$0$2 := v375$2;
    $$18$1$1 := v376$1;
    $$18$1$2 := v376$2;
    $$18$2$1 := v377$1;
    $$18$2$2 := v377$2;
    $$18$3$1 := v378$1;
    $$18$3$2 := v378$2;
    v379$1 := $$18$0$1;
    v379$2 := $$18$0$2;
    v380$1 := $$18$1$1;
    v380$2 := $$18$1$2;
    v381$1 := $$18$2$1;
    v381$2 := $$18$2$2;
    v382$1 := $$18$3$1;
    v382$2 := $$18$3$2;
    $$b.i1.i24$0$1 := v379$1;
    $$b.i1.i24$0$2 := v379$2;
    $$b.i1.i24$1$1 := v380$1;
    $$b.i1.i24$1$2 := v380$2;
    $$b.i1.i24$2$1 := v381$1;
    $$b.i1.i24$2$2 := v381$2;
    $$b.i1.i24$3$1 := v382$1;
    $$b.i1.i24$3$2 := v382$2;
    v383$1 := $$acc$0$1;
    v383$2 := $$acc$0$2;
    v384$1 := $$b.i1.i24$0$1;
    v384$2 := $$b.i1.i24$0$2;
    v385$1 := $$acc$1$1;
    v385$2 := $$acc$1$2;
    v386$1 := $$b.i1.i24$1$1;
    v386$2 := $$b.i1.i24$1$2;
    v387$1 := $$acc$2$1;
    v387$2 := $$acc$2$2;
    v388$1 := $$b.i1.i24$2$1;
    v388$2 := $$b.i1.i24$2$2;
    v389$1 := $$acc$3$1;
    v389$2 := $$acc$3$2;
    v390$1 := $$b.i1.i24$3$1;
    v390$2 := $$b.i1.i24$3$2;
    $$12$0$1 := FADD32(v383$1, v384$1);
    $$12$0$2 := FADD32(v383$2, v384$2);
    $$12$1$1 := FADD32(v385$1, v386$1);
    $$12$1$2 := FADD32(v385$2, v386$2);
    $$12$2$1 := FADD32(v387$1, v388$1);
    $$12$2$2 := FADD32(v387$2, v388$2);
    $$12$3$1 := FADD32(v389$1, v390$1);
    $$12$3$2 := FADD32(v389$2, v390$2);
    v391$1 := $$12$0$1;
    v391$2 := $$12$0$2;
    v392$1 := $$12$1$1;
    v392$2 := $$12$1$2;
    v393$1 := $$12$2$1;
    v393$2 := $$12$2$2;
    v394$1 := $$12$3$1;
    v394$2 := $$12$3$2;
    $$13$0$1 := v391$1;
    $$13$0$2 := v391$2;
    $$13$1$1 := v392$1;
    $$13$1$2 := v392$2;
    $$13$2$1 := v393$1;
    $$13$2$2 := v393$2;
    $$13$3$1 := v394$1;
    $$13$3$2 := v394$2;
    v395$1 := $$13$0$1;
    v395$2 := $$13$0$2;
    $$acc$0$1 := v395$1;
    $$acc$0$2 := v395$2;
    v396$1 := $$13$1$1;
    v396$2 := $$13$1$2;
    $$acc$1$1 := v396$1;
    $$acc$1$2 := v396$2;
    v397$1 := $$13$2$1;
    v397$2 := $$13$2$2;
    $$acc$2$1 := v397$1;
    $$acc$2$2 := v397$2;
    v398$1 := $$13$3$1;
    v398$2 := $$13$3$2;
    $$acc$3$1 := v398$1;
    $$acc$3$2 := v398$2;
    $j.0 := BV32_ADD($j.0, 4);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 1024 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem, $$data_out_pos, $$data_out_vel, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem, $$data_out_pos, $$data_out_vel, _TRACKING;



var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$0$3$1: int;

var $$0$3$2: int;

var $$b.i35$0$1: int;

var $$b.i35$0$2: int;

var $$b.i35$1$1: int;

var $$b.i35$1$2: int;

var $$b.i35$2$1: int;

var $$b.i35$2$2: int;

var $$b.i35$3$1: int;

var $$b.i35$3$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$1$3$1: int;

var $$1$3$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$2$3$1: int;

var $$2$3$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$4$3$1: int;

var $$4$3$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$5$2$1: int;

var $$5$2$2: int;

var $$5$3$1: int;

var $$5$3$2: int;

var $$a.i34$0$1: int;

var $$a.i34$0$2: int;

var $$a.i34$1$1: int;

var $$a.i34$1$2: int;

var $$a.i34$2$1: int;

var $$a.i34$2$2: int;

var $$a.i34$3$1: int;

var $$a.i34$3$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$6$3$1: int;

var $$6$3$2: int;

var $$b.i$0$1: int;

var $$b.i$0$2: int;

var $$b.i$1$1: int;

var $$b.i$1$2: int;

var $$b.i$2$1: int;

var $$b.i$2$2: int;

var $$b.i$3$1: int;

var $$b.i$3$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$7$3$1: int;

var $$7$3$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$8$3$1: int;

var $$8$3$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$9$2$1: int;

var $$9$2$2: int;

var $$9$3$1: int;

var $$9$3$2: int;

var $$a.i$0$1: int;

var $$a.i$0$2: int;

var $$a.i$1$1: int;

var $$a.i$1$2: int;

var $$a.i$2$1: int;

var $$a.i$2$2: int;

var $$a.i$3$1: int;

var $$a.i$3$2: int;

var $$10$0$1: int;

var $$10$0$2: int;

var $$10$1$1: int;

var $$10$1$2: int;

var $$10$2$1: int;

var $$10$2$2: int;

var $$10$3$1: int;

var $$10$3$2: int;

var $$11$0$1: int;

var $$11$0$2: int;

var $$11$1$1: int;

var $$11$1$2: int;

var $$11$2$1: int;

var $$11$2$2: int;

var $$11$3$1: int;

var $$11$3$2: int;

var $$a.i2.i23$0$1: int;

var $$a.i2.i23$0$2: int;

var $$a.i2.i23$1$1: int;

var $$a.i2.i23$1$2: int;

var $$a.i2.i23$2$1: int;

var $$a.i2.i23$2$2: int;

var $$a.i2.i23$3$1: int;

var $$a.i2.i23$3$2: int;

var $$12$0$1: int;

var $$12$0$2: int;

var $$12$1$1: int;

var $$12$1$2: int;

var $$12$2$1: int;

var $$12$2$2: int;

var $$12$3$1: int;

var $$12$3$2: int;

var $$b.i1.i24$0$1: int;

var $$b.i1.i24$0$2: int;

var $$b.i1.i24$1$1: int;

var $$b.i1.i24$1$2: int;

var $$b.i1.i24$2$1: int;

var $$b.i1.i24$2$2: int;

var $$b.i1.i24$3$1: int;

var $$b.i1.i24$3$2: int;

var $$13$0$1: int;

var $$13$0$2: int;

var $$13$1$1: int;

var $$13$1$2: int;

var $$13$2$1: int;

var $$13$2$2: int;

var $$13$3$1: int;

var $$13$3$2: int;

var $$14$0$1: int;

var $$14$0$2: int;

var $$14$1$1: int;

var $$14$1$2: int;

var $$14$2$1: int;

var $$14$2$2: int;

var $$14$3$1: int;

var $$14$3$2: int;

var $$15$0$1: int;

var $$15$0$2: int;

var $$15$1$1: int;

var $$15$1$2: int;

var $$15$2$1: int;

var $$15$2$2: int;

var $$15$3$1: int;

var $$15$3$2: int;

var $$a.i.i25$0$1: int;

var $$a.i.i25$0$2: int;

var $$a.i.i25$1$1: int;

var $$a.i.i25$1$2: int;

var $$a.i.i25$2$1: int;

var $$a.i.i25$2$2: int;

var $$a.i.i25$3$1: int;

var $$a.i.i25$3$2: int;

var $$b.i.i26$0$1: int;

var $$b.i.i26$0$2: int;

var $$b.i.i26$1$1: int;

var $$b.i.i26$1$2: int;

var $$b.i.i26$2$1: int;

var $$b.i.i26$2$2: int;

var $$b.i.i26$3$1: int;

var $$b.i.i26$3$2: int;

var $$my_curr_pos.i27$0$1: int;

var $$my_curr_pos.i27$0$2: int;

var $$my_curr_pos.i27$1$1: int;

var $$my_curr_pos.i27$1$2: int;

var $$my_curr_pos.i27$2$1: int;

var $$my_curr_pos.i27$2$2: int;

var $$my_curr_pos.i27$3$1: int;

var $$my_curr_pos.i27$3$2: int;

var $$other_element_old_pos.i28$0$1: int;

var $$other_element_old_pos.i28$0$2: int;

var $$other_element_old_pos.i28$1$1: int;

var $$other_element_old_pos.i28$1$2: int;

var $$other_element_old_pos.i28$2$1: int;

var $$other_element_old_pos.i28$2$2: int;

var $$other_element_old_pos.i28$3$1: int;

var $$other_element_old_pos.i28$3$2: int;

var $$r.i29$0$1: int;

var $$r.i29$0$2: int;

var $$r.i29$1$1: int;

var $$r.i29$1$2: int;

var $$r.i29$2$1: int;

var $$r.i29$2$2: int;

var $$r.i29$3$1: int;

var $$r.i29$3$2: int;

var $$16$0$1: int;

var $$16$0$2: int;

var $$16$1$1: int;

var $$16$1$2: int;

var $$16$2$1: int;

var $$16$2$2: int;

var $$16$3$1: int;

var $$16$3$2: int;

var $$17$0$1: int;

var $$17$0$2: int;

var $$17$1$1: int;

var $$17$1$2: int;

var $$17$2$1: int;

var $$17$2$2: int;

var $$17$3$1: int;

var $$17$3$2: int;

var $$18$0$1: int;

var $$18$0$2: int;

var $$18$1$1: int;

var $$18$1$2: int;

var $$18$2$1: int;

var $$18$2$2: int;

var $$18$3$1: int;

var $$18$3$2: int;

var $$19$0$1: int;

var $$19$0$2: int;

var $$19$1$1: int;

var $$19$1$2: int;

var $$19$2$1: int;

var $$19$2$2: int;

var $$19$3$1: int;

var $$19$3$2: int;

var $$20$0$1: int;

var $$20$0$2: int;

var $$20$1$1: int;

var $$20$1$2: int;

var $$20$2$1: int;

var $$20$2$2: int;

var $$20$3$1: int;

var $$20$3$2: int;

var $$21$0$1: int;

var $$21$0$2: int;

var $$21$1$1: int;

var $$21$1$2: int;

var $$21$2$1: int;

var $$21$2$2: int;

var $$21$3$1: int;

var $$21$3$2: int;

var $$a.i2.i12$0$1: int;

var $$a.i2.i12$0$2: int;

var $$a.i2.i12$1$1: int;

var $$a.i2.i12$1$2: int;

var $$a.i2.i12$2$1: int;

var $$a.i2.i12$2$2: int;

var $$a.i2.i12$3$1: int;

var $$a.i2.i12$3$2: int;

var $$22$0$1: int;

var $$22$0$2: int;

var $$22$1$1: int;

var $$22$1$2: int;

var $$22$2$1: int;

var $$22$2$2: int;

var $$22$3$1: int;

var $$22$3$2: int;

var $$b.i1.i13$0$1: int;

var $$b.i1.i13$0$2: int;

var $$b.i1.i13$1$1: int;

var $$b.i1.i13$1$2: int;

var $$b.i1.i13$2$1: int;

var $$b.i1.i13$2$2: int;

var $$b.i1.i13$3$1: int;

var $$b.i1.i13$3$2: int;

var $$23$0$1: int;

var $$23$0$2: int;

var $$23$1$1: int;

var $$23$1$2: int;

var $$23$2$1: int;

var $$23$2$2: int;

var $$23$3$1: int;

var $$23$3$2: int;

var $$24$0$1: int;

var $$24$0$2: int;

var $$24$1$1: int;

var $$24$1$2: int;

var $$24$2$1: int;

var $$24$2$2: int;

var $$24$3$1: int;

var $$24$3$2: int;

var $$25$0$1: int;

var $$25$0$2: int;

var $$25$1$1: int;

var $$25$1$2: int;

var $$25$2$1: int;

var $$25$2$2: int;

var $$25$3$1: int;

var $$25$3$2: int;

var $$a.i.i14$0$1: int;

var $$a.i.i14$0$2: int;

var $$a.i.i14$1$1: int;

var $$a.i.i14$1$2: int;

var $$a.i.i14$2$1: int;

var $$a.i.i14$2$2: int;

var $$a.i.i14$3$1: int;

var $$a.i.i14$3$2: int;

var $$b.i.i15$0$1: int;

var $$b.i.i15$0$2: int;

var $$b.i.i15$1$1: int;

var $$b.i.i15$1$2: int;

var $$b.i.i15$2$1: int;

var $$b.i.i15$2$2: int;

var $$b.i.i15$3$1: int;

var $$b.i.i15$3$2: int;

var $$my_curr_pos.i16$0$1: int;

var $$my_curr_pos.i16$0$2: int;

var $$my_curr_pos.i16$1$1: int;

var $$my_curr_pos.i16$1$2: int;

var $$my_curr_pos.i16$2$1: int;

var $$my_curr_pos.i16$2$2: int;

var $$my_curr_pos.i16$3$1: int;

var $$my_curr_pos.i16$3$2: int;

var $$other_element_old_pos.i17$0$1: int;

var $$other_element_old_pos.i17$0$2: int;

var $$other_element_old_pos.i17$1$1: int;

var $$other_element_old_pos.i17$1$2: int;

var $$other_element_old_pos.i17$2$1: int;

var $$other_element_old_pos.i17$2$2: int;

var $$other_element_old_pos.i17$3$1: int;

var $$other_element_old_pos.i17$3$2: int;

var $$r.i18$0$1: int;

var $$r.i18$0$2: int;

var $$r.i18$1$1: int;

var $$r.i18$1$2: int;

var $$r.i18$2$1: int;

var $$r.i18$2$2: int;

var $$r.i18$3$1: int;

var $$r.i18$3$2: int;

var $$26$0$1: int;

var $$26$0$2: int;

var $$26$1$1: int;

var $$26$1$2: int;

var $$26$2$1: int;

var $$26$2$2: int;

var $$26$3$1: int;

var $$26$3$2: int;

var $$27$0$1: int;

var $$27$0$2: int;

var $$27$1$1: int;

var $$27$1$2: int;

var $$27$2$1: int;

var $$27$2$2: int;

var $$27$3$1: int;

var $$27$3$2: int;

var $$28$0$1: int;

var $$28$0$2: int;

var $$28$1$1: int;

var $$28$1$2: int;

var $$28$2$1: int;

var $$28$2$2: int;

var $$28$3$1: int;

var $$28$3$2: int;

var $$29$0$1: int;

var $$29$0$2: int;

var $$29$1$1: int;

var $$29$1$2: int;

var $$29$2$1: int;

var $$29$2$2: int;

var $$29$3$1: int;

var $$29$3$2: int;

var $$30$0$1: int;

var $$30$0$2: int;

var $$30$1$1: int;

var $$30$1$2: int;

var $$30$2$1: int;

var $$30$2$2: int;

var $$30$3$1: int;

var $$30$3$2: int;

var $$31$0$1: int;

var $$31$0$2: int;

var $$31$1$1: int;

var $$31$1$2: int;

var $$31$2$1: int;

var $$31$2$2: int;

var $$31$3$1: int;

var $$31$3$2: int;

var $$a.i2.i1$0$1: int;

var $$a.i2.i1$0$2: int;

var $$a.i2.i1$1$1: int;

var $$a.i2.i1$1$2: int;

var $$a.i2.i1$2$1: int;

var $$a.i2.i1$2$2: int;

var $$a.i2.i1$3$1: int;

var $$a.i2.i1$3$2: int;

var $$32$0$1: int;

var $$32$0$2: int;

var $$32$1$1: int;

var $$32$1$2: int;

var $$32$2$1: int;

var $$32$2$2: int;

var $$32$3$1: int;

var $$32$3$2: int;

var $$b.i1.i2$0$1: int;

var $$b.i1.i2$0$2: int;

var $$b.i1.i2$1$1: int;

var $$b.i1.i2$1$2: int;

var $$b.i1.i2$2$1: int;

var $$b.i1.i2$2$2: int;

var $$b.i1.i2$3$1: int;

var $$b.i1.i2$3$2: int;

var $$33$0$1: int;

var $$33$0$2: int;

var $$33$1$1: int;

var $$33$1$2: int;

var $$33$2$1: int;

var $$33$2$2: int;

var $$33$3$1: int;

var $$33$3$2: int;

var $$34$0$1: int;

var $$34$0$2: int;

var $$34$1$1: int;

var $$34$1$2: int;

var $$34$2$1: int;

var $$34$2$2: int;

var $$34$3$1: int;

var $$34$3$2: int;

var $$35$0$1: int;

var $$35$0$2: int;

var $$35$1$1: int;

var $$35$1$2: int;

var $$35$2$1: int;

var $$35$2$2: int;

var $$35$3$1: int;

var $$35$3$2: int;

var $$a.i.i3$0$1: int;

var $$a.i.i3$0$2: int;

var $$a.i.i3$1$1: int;

var $$a.i.i3$1$2: int;

var $$a.i.i3$2$1: int;

var $$a.i.i3$2$2: int;

var $$a.i.i3$3$1: int;

var $$a.i.i3$3$2: int;

var $$b.i.i4$0$1: int;

var $$b.i.i4$0$2: int;

var $$b.i.i4$1$1: int;

var $$b.i.i4$1$2: int;

var $$b.i.i4$2$1: int;

var $$b.i.i4$2$2: int;

var $$b.i.i4$3$1: int;

var $$b.i.i4$3$2: int;

var $$my_curr_pos.i5$0$1: int;

var $$my_curr_pos.i5$0$2: int;

var $$my_curr_pos.i5$1$1: int;

var $$my_curr_pos.i5$1$2: int;

var $$my_curr_pos.i5$2$1: int;

var $$my_curr_pos.i5$2$2: int;

var $$my_curr_pos.i5$3$1: int;

var $$my_curr_pos.i5$3$2: int;

var $$other_element_old_pos.i6$0$1: int;

var $$other_element_old_pos.i6$0$2: int;

var $$other_element_old_pos.i6$1$1: int;

var $$other_element_old_pos.i6$1$2: int;

var $$other_element_old_pos.i6$2$1: int;

var $$other_element_old_pos.i6$2$2: int;

var $$other_element_old_pos.i6$3$1: int;

var $$other_element_old_pos.i6$3$2: int;

var $$r.i7$0$1: int;

var $$r.i7$0$2: int;

var $$r.i7$1$1: int;

var $$r.i7$1$2: int;

var $$r.i7$2$1: int;

var $$r.i7$2$2: int;

var $$r.i7$3$1: int;

var $$r.i7$3$2: int;

var $$36$0$1: int;

var $$36$0$2: int;

var $$36$1$1: int;

var $$36$1$2: int;

var $$36$2$1: int;

var $$36$2$2: int;

var $$36$3$1: int;

var $$36$3$2: int;

var $$37$0$1: int;

var $$37$0$2: int;

var $$37$1$1: int;

var $$37$1$2: int;

var $$37$2$1: int;

var $$37$2$2: int;

var $$37$3$1: int;

var $$37$3$2: int;

var $$38$0$1: int;

var $$38$0$2: int;

var $$38$1$1: int;

var $$38$1$2: int;

var $$38$2$1: int;

var $$38$2$2: int;

var $$38$3$1: int;

var $$38$3$2: int;

var $$39$0$1: int;

var $$39$0$2: int;

var $$39$1$1: int;

var $$39$1$2: int;

var $$39$2$1: int;

var $$39$2$2: int;

var $$39$3$1: int;

var $$39$3$2: int;

var $$40$0$1: int;

var $$40$0$2: int;

var $$40$1$1: int;

var $$40$1$2: int;

var $$40$2$1: int;

var $$40$2$2: int;

var $$40$3$1: int;

var $$40$3$2: int;

var $$41$0$1: int;

var $$41$0$2: int;

var $$41$1$1: int;

var $$41$1$2: int;

var $$41$2$1: int;

var $$41$2$2: int;

var $$41$3$1: int;

var $$41$3$2: int;

var $$a.i2.i$0$1: int;

var $$a.i2.i$0$2: int;

var $$a.i2.i$1$1: int;

var $$a.i2.i$1$2: int;

var $$a.i2.i$2$1: int;

var $$a.i2.i$2$2: int;

var $$a.i2.i$3$1: int;

var $$a.i2.i$3$2: int;

var $$42$0$1: int;

var $$42$0$2: int;

var $$42$1$1: int;

var $$42$1$2: int;

var $$42$2$1: int;

var $$42$2$2: int;

var $$42$3$1: int;

var $$42$3$2: int;

var $$b.i1.i$0$1: int;

var $$b.i1.i$0$2: int;

var $$b.i1.i$1$1: int;

var $$b.i1.i$1$2: int;

var $$b.i1.i$2$1: int;

var $$b.i1.i$2$2: int;

var $$b.i1.i$3$1: int;

var $$b.i1.i$3$2: int;

var $$43$0$1: int;

var $$43$0$2: int;

var $$43$1$1: int;

var $$43$1$2: int;

var $$43$2$1: int;

var $$43$2$2: int;

var $$43$3$1: int;

var $$43$3$2: int;

var $$44$0$1: int;

var $$44$0$2: int;

var $$44$1$1: int;

var $$44$1$2: int;

var $$44$2$1: int;

var $$44$2$2: int;

var $$44$3$1: int;

var $$44$3$2: int;

var $$45$0$1: int;

var $$45$0$2: int;

var $$45$1$1: int;

var $$45$1$2: int;

var $$45$2$1: int;

var $$45$2$2: int;

var $$45$3$1: int;

var $$45$3$2: int;

var $$a.i.i$0$1: int;

var $$a.i.i$0$2: int;

var $$a.i.i$1$1: int;

var $$a.i.i$1$2: int;

var $$a.i.i$2$1: int;

var $$a.i.i$2$2: int;

var $$a.i.i$3$1: int;

var $$a.i.i$3$2: int;

var $$b.i.i$0$1: int;

var $$b.i.i$0$2: int;

var $$b.i.i$1$1: int;

var $$b.i.i$1$2: int;

var $$b.i.i$2$1: int;

var $$b.i.i$2$2: int;

var $$b.i.i$3$1: int;

var $$b.i.i$3$2: int;

var $$my_curr_pos.i$0$1: int;

var $$my_curr_pos.i$0$2: int;

var $$my_curr_pos.i$1$1: int;

var $$my_curr_pos.i$1$2: int;

var $$my_curr_pos.i$2$1: int;

var $$my_curr_pos.i$2$2: int;

var $$my_curr_pos.i$3$1: int;

var $$my_curr_pos.i$3$2: int;

var $$other_element_old_pos.i$0$1: int;

var $$other_element_old_pos.i$0$2: int;

var $$other_element_old_pos.i$1$1: int;

var $$other_element_old_pos.i$1$2: int;

var $$other_element_old_pos.i$2$1: int;

var $$other_element_old_pos.i$2$2: int;

var $$other_element_old_pos.i$3$1: int;

var $$other_element_old_pos.i$3$2: int;

var $$r.i$0$1: int;

var $$r.i$0$2: int;

var $$r.i$1$1: int;

var $$r.i$1$2: int;

var $$r.i$2$1: int;

var $$r.i$2$2: int;

var $$r.i$3$1: int;

var $$r.i$3$2: int;

var $$46$0$1: int;

var $$46$0$2: int;

var $$46$1$1: int;

var $$46$1$2: int;

var $$46$2$1: int;

var $$46$2$2: int;

var $$46$3$1: int;

var $$46$3$2: int;

var $$47$0$1: int;

var $$47$0$2: int;

var $$47$1$1: int;

var $$47$1$2: int;

var $$47$2$1: int;

var $$47$2$2: int;

var $$47$3$1: int;

var $$47$3$2: int;

var $$48$0$1: int;

var $$48$0$2: int;

var $$48$1$1: int;

var $$48$1$2: int;

var $$48$2$1: int;

var $$48$2$2: int;

var $$48$3$1: int;

var $$48$3$2: int;

var $$49$0$1: int;

var $$49$0$2: int;

var $$49$1$1: int;

var $$49$1$2: int;

var $$49$2$1: int;

var $$49$2$2: int;

var $$49$3$1: int;

var $$49$3$2: int;

var $$p_pos$0$1: int;

var $$p_pos$0$2: int;

var $$p_pos$1$1: int;

var $$p_pos$1$2: int;

var $$p_pos$2$1: int;

var $$p_pos$2$2: int;

var $$p_pos$3$1: int;

var $$p_pos$3$2: int;

var $$p_vel$0$1: int;

var $$p_vel$0$2: int;

var $$p_vel$1$1: int;

var $$p_vel$1$2: int;

var $$p_vel$2$1: int;

var $$p_vel$2$2: int;

var $$p_vel$3$1: int;

var $$p_vel$3$2: int;

var $$acc$0$1: int;

var $$acc$0$2: int;

var $$acc$1$1: int;

var $$acc$1$2: int;

var $$acc$2$1: int;

var $$acc$2$2: int;

var $$acc$3$1: int;

var $$acc$3$2: int;

var $$50$0$1: int;

var $$50$0$2: int;

var $$50$1$1: int;

var $$50$1$2: int;

var $$50$2$1: int;

var $$50$2$2: int;

var $$50$3$1: int;

var $$50$3$2: int;

var $$51$0$1: int;

var $$51$0$2: int;

var $$51$1$1: int;

var $$51$1$2: int;

var $$51$2$1: int;

var $$51$2$2: int;

var $$51$3$1: int;

var $$51$3$2: int;

var $$52$0$1: int;

var $$52$0$2: int;

var $$52$1$1: int;

var $$52$1$2: int;

var $$52$2$1: int;

var $$52$2$2: int;

var $$52$3$1: int;

var $$52$3$2: int;

var $$53$0$1: int;

var $$53$0$2: int;

var $$53$1$1: int;

var $$53$1$2: int;

var $$53$2$1: int;

var $$53$2$2: int;

var $$53$3$1: int;

var $$53$3$2: int;

var $$54$0$1: int;

var $$54$0$2: int;

var $$54$1$1: int;

var $$54$1$2: int;

var $$54$2$1: int;

var $$54$2$2: int;

var $$54$3$1: int;

var $$54$3$2: int;

var $$55$0$1: int;

var $$55$0$2: int;

var $$55$1$1: int;

var $$55$1$2: int;

var $$55$2$1: int;

var $$55$2$2: int;

var $$55$3$1: int;

var $$55$3$2: int;

var $$56$0$1: int;

var $$56$0$2: int;

var $$56$1$1: int;

var $$56$1$2: int;

var $$56$2$1: int;

var $$56$2$2: int;

var $$56$3$1: int;

var $$56$3$2: int;

var $$57$0$1: int;

var $$57$0$2: int;

var $$57$1$1: int;

var $$57$1$2: int;

var $$57$2$1: int;

var $$57$2$2: int;

var $$57$3$1: int;

var $$57$3$2: int;

var $$58$0$1: int;

var $$58$0$2: int;

var $$58$1$1: int;

var $$58$1$2: int;

var $$58$2$1: int;

var $$58$2$2: int;

var $$58$3$1: int;

var $$58$3$2: int;

var $$59$0$1: int;

var $$59$0$2: int;

var $$59$1$1: int;

var $$59$1$2: int;

var $$59$2$1: int;

var $$59$2$2: int;

var $$59$3$1: int;

var $$59$3$2: int;

var $$60$0$1: int;

var $$60$0$2: int;

var $$60$1$1: int;

var $$60$1$2: int;

var $$60$2$1: int;

var $$60$2$2: int;

var $$60$3$1: int;

var $$60$3$2: int;

var $$61$0$1: int;

var $$61$0$2: int;

var $$61$1$1: int;

var $$61$1$2: int;

var $$61$2$1: int;

var $$61$2$2: int;

var $$61$3$1: int;

var $$61$3$2: int;





function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}













const _WATCHED_VALUE_$$data_in_pos: int;

procedure {:inline 1} _LOG_READ_$$data_in_pos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_in_pos;



implementation {:inline 1} _LOG_READ_$$data_in_pos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_in_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_pos == _value then true else _READ_HAS_OCCURRED_$$data_in_pos);
    return;
}



procedure _CHECK_READ_$$data_in_pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_in_pos"} {:array "$$data_in_pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_in_pos);
  requires {:source_name "data_in_pos"} {:array "$$data_in_pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_in_pos: bool;

procedure {:inline 1} _LOG_WRITE_$$data_in_pos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_in_pos, _WRITE_READ_BENIGN_FLAG_$$data_in_pos;



implementation {:inline 1} _LOG_WRITE_$$data_in_pos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_in_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_pos == _value then true else _WRITE_HAS_OCCURRED_$$data_in_pos);
    _WRITE_READ_BENIGN_FLAG_$$data_in_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_in_pos);
    return;
}



procedure _CHECK_WRITE_$$data_in_pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_in_pos"} {:array "$$data_in_pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_pos != _value);
  requires {:source_name "data_in_pos"} {:array "$$data_in_pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_pos != _value);
  requires {:source_name "data_in_pos"} {:array "$$data_in_pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_in_pos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_in_pos;



implementation {:inline 1} _LOG_ATOMIC_$$data_in_pos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_in_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_in_pos);
    return;
}



procedure _CHECK_ATOMIC_$$data_in_pos(_P: bool, _offset: int);
  requires {:source_name "data_in_pos"} {:array "$$data_in_pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_in_pos"} {:array "$$data_in_pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_in_pos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_in_pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_in_pos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_in_pos := (if _P && _WRITE_HAS_OCCURRED_$$data_in_pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_in_pos);
    return;
}



const _WATCHED_VALUE_$$data_in_vel: int;

procedure {:inline 1} _LOG_READ_$$data_in_vel(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_in_vel;



implementation {:inline 1} _LOG_READ_$$data_in_vel(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_in_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_vel == _value then true else _READ_HAS_OCCURRED_$$data_in_vel);
    return;
}



procedure _CHECK_READ_$$data_in_vel(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_in_vel"} {:array "$$data_in_vel"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_in_vel);
  requires {:source_name "data_in_vel"} {:array "$$data_in_vel"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_in_vel: bool;

procedure {:inline 1} _LOG_WRITE_$$data_in_vel(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_in_vel, _WRITE_READ_BENIGN_FLAG_$$data_in_vel;



implementation {:inline 1} _LOG_WRITE_$$data_in_vel(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_in_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_vel == _value then true else _WRITE_HAS_OCCURRED_$$data_in_vel);
    _WRITE_READ_BENIGN_FLAG_$$data_in_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_vel == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_in_vel);
    return;
}



procedure _CHECK_WRITE_$$data_in_vel(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_in_vel"} {:array "$$data_in_vel"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_vel != _value);
  requires {:source_name "data_in_vel"} {:array "$$data_in_vel"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_in_vel != _value);
  requires {:source_name "data_in_vel"} {:array "$$data_in_vel"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_in_vel(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_in_vel;



implementation {:inline 1} _LOG_ATOMIC_$$data_in_vel(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_in_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_in_vel);
    return;
}



procedure _CHECK_ATOMIC_$$data_in_vel(_P: bool, _offset: int);
  requires {:source_name "data_in_vel"} {:array "$$data_in_vel"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_in_vel"} {:array "$$data_in_vel"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_in_vel(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_in_vel;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_in_vel(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_in_vel := (if _P && _WRITE_HAS_OCCURRED_$$data_in_vel && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_in_vel);
    return;
}



const _WATCHED_VALUE_$$data_out_pos: int;

procedure {:inline 1} _LOG_READ_$$data_out_pos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_out_pos;



implementation {:inline 1} _LOG_READ_$$data_out_pos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_out_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_pos == _value then true else _READ_HAS_OCCURRED_$$data_out_pos);
    return;
}



procedure _CHECK_READ_$$data_out_pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_out_pos"} {:array "$$data_out_pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_out_pos);
  requires {:source_name "data_out_pos"} {:array "$$data_out_pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_out_pos: bool;

procedure {:inline 1} _LOG_WRITE_$$data_out_pos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_out_pos, _WRITE_READ_BENIGN_FLAG_$$data_out_pos;



implementation {:inline 1} _LOG_WRITE_$$data_out_pos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_out_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_pos == _value then true else _WRITE_HAS_OCCURRED_$$data_out_pos);
    _WRITE_READ_BENIGN_FLAG_$$data_out_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_out_pos);
    return;
}



procedure _CHECK_WRITE_$$data_out_pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_out_pos"} {:array "$$data_out_pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_pos != _value);
  requires {:source_name "data_out_pos"} {:array "$$data_out_pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_pos != _value);
  requires {:source_name "data_out_pos"} {:array "$$data_out_pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_out_pos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_out_pos;



implementation {:inline 1} _LOG_ATOMIC_$$data_out_pos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_out_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_out_pos);
    return;
}



procedure _CHECK_ATOMIC_$$data_out_pos(_P: bool, _offset: int);
  requires {:source_name "data_out_pos"} {:array "$$data_out_pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_out_pos"} {:array "$$data_out_pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_pos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_out_pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_pos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_out_pos := (if _P && _WRITE_HAS_OCCURRED_$$data_out_pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_out_pos);
    return;
}



const _WATCHED_VALUE_$$data_out_vel: int;

procedure {:inline 1} _LOG_READ_$$data_out_vel(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_out_vel;



implementation {:inline 1} _LOG_READ_$$data_out_vel(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_out_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_vel == _value then true else _READ_HAS_OCCURRED_$$data_out_vel);
    return;
}



procedure _CHECK_READ_$$data_out_vel(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_out_vel"} {:array "$$data_out_vel"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_out_vel);
  requires {:source_name "data_out_vel"} {:array "$$data_out_vel"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_out_vel: bool;

procedure {:inline 1} _LOG_WRITE_$$data_out_vel(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_out_vel, _WRITE_READ_BENIGN_FLAG_$$data_out_vel;



implementation {:inline 1} _LOG_WRITE_$$data_out_vel(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_out_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_vel == _value then true else _WRITE_HAS_OCCURRED_$$data_out_vel);
    _WRITE_READ_BENIGN_FLAG_$$data_out_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_vel == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_out_vel);
    return;
}



procedure _CHECK_WRITE_$$data_out_vel(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_out_vel"} {:array "$$data_out_vel"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_vel != _value);
  requires {:source_name "data_out_vel"} {:array "$$data_out_vel"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_out_vel != _value);
  requires {:source_name "data_out_vel"} {:array "$$data_out_vel"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_out_vel(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_out_vel;



implementation {:inline 1} _LOG_ATOMIC_$$data_out_vel(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_out_vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_out_vel);
    return;
}



procedure _CHECK_ATOMIC_$$data_out_vel(_P: bool, _offset: int);
  requires {:source_name "data_out_vel"} {:array "$$data_out_vel"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_out_vel"} {:array "$$data_out_vel"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_vel(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_out_vel;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_out_vel(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_out_vel := (if _P && _WRITE_HAS_OCCURRED_$$data_out_vel && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_out_vel);
    return;
}



const _WATCHED_VALUE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem: int;

procedure {:inline 1} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;



implementation {:inline 1} _LOG_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem == _value then true else _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem);
    return;
}



procedure _CHECK_READ_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int, _value: int);
  requires {:source_name "tile_mem"} {:array "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile_mem"} {:array "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem, _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;



implementation {:inline 1} _LOG_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem);
    return;
}



procedure _CHECK_WRITE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int, _value: int);
  requires {:source_name "tile_mem"} {:array "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile_mem"} {:array "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile_mem"} {:array "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int);
  requires {:source_name "tile_mem"} {:array "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile_mem"} {:array "$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$data_out_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data_out_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data_out_pos;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$data_out_vel;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data_out_vel;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data_out_vel;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$data_out_pos;
    goto anon7;

  anon7:
    havoc $$data_out_vel;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    goto anon3;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$data_out_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data_out_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data_out_pos;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$data_out_vel;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data_out_vel;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data_out_vel;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$data_out_pos;
    goto anon7;

  anon7:
    havoc $$data_out_vel;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ21tiling_implementationP6float4S0_S0_S0_iiiE8tile_mem;
    goto anon3;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}










