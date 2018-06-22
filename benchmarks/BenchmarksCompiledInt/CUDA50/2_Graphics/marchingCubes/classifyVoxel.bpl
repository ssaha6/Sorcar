type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "voxelVerts"} {:global} $$voxelVerts: [int]int;

axiom {:array_info "$$voxelVerts"} {:global} {:elem_width 32} {:source_name "voxelVerts"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$voxelVerts: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$voxelVerts: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$voxelVerts: bool;

var {:source_name "voxelOccupied"} {:global} $$voxelOccupied: [int]int;

axiom {:array_info "$$voxelOccupied"} {:global} {:elem_width 32} {:source_name "voxelOccupied"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$voxelOccupied: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$voxelOccupied: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$voxelOccupied: bool;

axiom {:array_info "$$volume"} {:global} {:elem_width 8} {:source_name "volume"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$volume: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$volume: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$volume: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$gridSizeShift.i"} {:elem_width 32} {:source_name "gridSizeShift.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$gridSizeMask.i"} {:elem_width 32} {:source_name "gridSizeMask.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i19"} {:elem_width 32} {:source_name "p.i19"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i17"} {:elem_width 32} {:source_name "a.i17"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i18"} {:elem_width 32} {:source_name "b.i18"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i16"} {:elem_width 32} {:source_name "p.i16"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i14"} {:elem_width 32} {:source_name "a.i14"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i15"} {:elem_width 32} {:source_name "b.i15"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i13"} {:elem_width 32} {:source_name "p.i13"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i11"} {:elem_width 32} {:source_name "a.i11"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i12"} {:elem_width 32} {:source_name "b.i12"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i10"} {:elem_width 32} {:source_name "p.i10"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$11"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$12"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i8"} {:elem_width 32} {:source_name "a.i8"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i9"} {:elem_width 32} {:source_name "b.i9"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i7"} {:elem_width 32} {:source_name "p.i7"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$13"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$14"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$15"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i5"} {:elem_width 32} {:source_name "a.i5"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i6"} {:elem_width 32} {:source_name "b.i6"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i4"} {:elem_width 32} {:source_name "p.i4"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$16"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$17"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$18"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i2"} {:elem_width 32} {:source_name "a.i2"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i3"} {:elem_width 32} {:source_name "b.i3"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i1"} {:elem_width 32} {:source_name "p.i1"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$19"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$20"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$21"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i"} {:elem_width 32} {:source_name "a.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i"} {:elem_width 32} {:source_name "b.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i"} {:elem_width 32} {:source_name "p.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$gridSize"} {:elem_width 32} {:source_name "gridSize"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$gridSizeShift"} {:elem_width 32} {:source_name "gridSizeShift"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$gridSizeMask"} {:elem_width 32} {:source_name "gridSizeMask"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$voxelSize"} {:elem_width 32} {:source_name "voxelSize"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$gridPos"} {:elem_width 32} {:source_name "gridPos"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$22"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$23"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p"} {:elem_width 32} {:source_name "p"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$field"} {:elem_width 32} {:source_name "field"} {:source_elem_width 32} {:source_dimensions "8"} true;

axiom {:array_info "$$24"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$25"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$26"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$27"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$28"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$29"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$30"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$31"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$32"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$33"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$34"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$35"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$36"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$37"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$38"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$39"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$40"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$41"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$42"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$43"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$44"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$45"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$46"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$numVertsTex"} {:global} {:elem_width 32} {:source_name "numVertsTex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$numVertsTex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$numVertsTex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$numVertsTex: bool;

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

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_LSHR(int, int) : int;

function FADD32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

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

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "classifyVoxel"} {:kernel} $_Z13classifyVoxelPjS_Ph5uint3S1_S1_j6float3f($gridSize.coerce0: int, $gridSize.coerce1: int, $gridSize.coerce2: int, $gridSizeShift.coerce0: int, $gridSizeShift.coerce1: int, $gridSizeShift.coerce2: int, $gridSizeMask.coerce0: int, $gridSizeMask.coerce1: int, $gridSizeMask.coerce2: int, $numVoxels: int, $voxelSize.coerce0: int, $voxelSize.coerce1: int, $voxelSize.coerce2: int, $isoValue: int);
  requires !_READ_HAS_OCCURRED_$$voxelVerts && !_WRITE_HAS_OCCURRED_$$voxelVerts && !_ATOMIC_HAS_OCCURRED_$$voxelVerts;
  requires !_READ_HAS_OCCURRED_$$voxelOccupied && !_WRITE_HAS_OCCURRED_$$voxelOccupied && !_ATOMIC_HAS_OCCURRED_$$voxelOccupied;
  requires !_READ_HAS_OCCURRED_$$volume && !_WRITE_HAS_OCCURRED_$$volume && !_ATOMIC_HAS_OCCURRED_$$volume;
  requires !_READ_HAS_OCCURRED_$$numVertsTex && !_WRITE_HAS_OCCURRED_$$numVertsTex && !_ATOMIC_HAS_OCCURRED_$$numVertsTex;
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
  modifies _WRITE_HAS_OCCURRED_$$voxelVerts, _WRITE_READ_BENIGN_FLAG_$$voxelVerts, _WRITE_READ_BENIGN_FLAG_$$voxelVerts, _WRITE_HAS_OCCURRED_$$voxelOccupied, _WRITE_READ_BENIGN_FLAG_$$voxelOccupied, _WRITE_READ_BENIGN_FLAG_$$voxelOccupied;



implementation {:source_name "classifyVoxel"} {:kernel} $_Z13classifyVoxelPjS_Ph5uint3S1_S1_j6float3f($gridSize.coerce0: int, $gridSize.coerce1: int, $gridSize.coerce2: int, $gridSizeShift.coerce0: int, $gridSizeShift.coerce1: int, $gridSizeShift.coerce2: int, $gridSizeMask.coerce0: int, $gridSizeMask.coerce1: int, $gridSizeMask.coerce2: int, $numVoxels: int, $voxelSize.coerce0: int, $voxelSize.coerce1: int, $voxelSize.coerce2: int, $isoValue: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v12$1: int;
  var v12$2: int;
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
  var v42$1: int;
  var v42$2: int;
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
  var v41$1: int;
  var v41$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
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
  var v238$1: int;
  var v238$2: int;
  var v239$1: int;
  var v239$2: int;
  var v240$1: int;
  var v240$2: int;
  var v241$1: int;
  var v241$2: int;
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
  var v176$1: int;
  var v176$2: int;
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
  var v297$1: bool;
  var v297$2: bool;
  var v296$1: int;
  var v296$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    $$gridSize$0$1 := $gridSize.coerce0;
    $$gridSize$0$2 := $gridSize.coerce0;
    $$gridSize$1$1 := $gridSize.coerce1;
    $$gridSize$1$2 := $gridSize.coerce1;
    $$gridSize$2$1 := $gridSize.coerce2;
    $$gridSize$2$2 := $gridSize.coerce2;
    $$gridSizeShift$0$1 := $gridSizeShift.coerce0;
    $$gridSizeShift$0$2 := $gridSizeShift.coerce0;
    $$gridSizeShift$1$1 := $gridSizeShift.coerce1;
    $$gridSizeShift$1$2 := $gridSizeShift.coerce1;
    $$gridSizeShift$2$1 := $gridSizeShift.coerce2;
    $$gridSizeShift$2$2 := $gridSizeShift.coerce2;
    $$gridSizeMask$0$1 := $gridSizeMask.coerce0;
    $$gridSizeMask$0$2 := $gridSizeMask.coerce0;
    $$gridSizeMask$1$1 := $gridSizeMask.coerce1;
    $$gridSizeMask$1$2 := $gridSizeMask.coerce1;
    $$gridSizeMask$2$1 := $gridSizeMask.coerce2;
    $$gridSizeMask$2$2 := $gridSizeMask.coerce2;
    $$voxelSize$0$1 := $voxelSize.coerce0;
    $$voxelSize$0$2 := $voxelSize.coerce0;
    $$voxelSize$1$1 := $voxelSize.coerce1;
    $$voxelSize$1$2 := $voxelSize.coerce1;
    $$voxelSize$2$1 := $voxelSize.coerce2;
    $$voxelSize$2$2 := $voxelSize.coerce2;
    v0$1 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2);
    v1$1 := $$gridSizeShift$0$1;
    v1$2 := $$gridSizeShift$0$2;
    $$22$0$1 := v1$1;
    $$22$0$2 := v1$2;
    v2$1 := $$gridSizeShift$1$1;
    v2$2 := $$gridSizeShift$1$2;
    $$22$1$1 := v2$1;
    $$22$1$2 := v2$2;
    v3$1 := $$gridSizeShift$2$1;
    v3$2 := $$gridSizeShift$2$2;
    $$22$2$1 := v3$1;
    $$22$2$2 := v3$2;
    v4$1 := $$gridSizeMask$0$1;
    v4$2 := $$gridSizeMask$0$2;
    $$23$0$1 := v4$1;
    $$23$0$2 := v4$2;
    v5$1 := $$gridSizeMask$1$1;
    v5$2 := $$gridSizeMask$1$2;
    $$23$1$1 := v5$1;
    $$23$1$2 := v5$2;
    v6$1 := $$gridSizeMask$2$1;
    v6$2 := $$gridSizeMask$2$2;
    $$23$2$1 := v6$1;
    $$23$2$2 := v6$2;
    v7$1 := $$22$0$1;
    v7$2 := $$22$0$2;
    v8$1 := $$22$1$1;
    v8$2 := $$22$1$2;
    v9$1 := $$22$2$1;
    v9$2 := $$22$2$2;
    v10$1 := $$23$0$1;
    v10$2 := $$23$0$2;
    v11$1 := $$23$1$1;
    v11$2 := $$23$1$2;
    v12$1 := $$23$2$1;
    v12$2 := $$23$2$2;
    $$gridSizeShift.i$0$1 := v7$1;
    $$gridSizeShift.i$0$2 := v7$2;
    $$gridSizeShift.i$1$1 := v8$1;
    $$gridSizeShift.i$1$2 := v8$2;
    $$gridSizeShift.i$2$1 := v9$1;
    $$gridSizeShift.i$2$2 := v9$2;
    $$gridSizeMask.i$0$1 := v10$1;
    $$gridSizeMask.i$0$2 := v10$2;
    $$gridSizeMask.i$1$1 := v11$1;
    $$gridSizeMask.i$1$2 := v11$2;
    $$gridSizeMask.i$2$1 := v12$1;
    $$gridSizeMask.i$2$2 := v12$2;
    v13$1 := $$gridSizeMask.i$0$1;
    v13$2 := $$gridSizeMask.i$0$2;
    $$0$0$1 := BV32_AND(v0$1, v13$1);
    $$0$0$2 := BV32_AND(v0$2, v13$2);
    v14$1 := $$gridSizeShift.i$1$1;
    v14$2 := $$gridSizeShift.i$1$2;
    v15$1 := $$gridSizeMask.i$1$1;
    v15$2 := $$gridSizeMask.i$1$2;
    $$0$1$1 := BV32_AND(BV32_LSHR(v0$1, v14$1), v15$1);
    $$0$1$2 := BV32_AND(BV32_LSHR(v0$2, v14$2), v15$2);
    v16$1 := $$gridSizeShift.i$2$1;
    v16$2 := $$gridSizeShift.i$2$2;
    v17$1 := $$gridSizeMask.i$2$1;
    v17$2 := $$gridSizeMask.i$2$2;
    $$0$2$1 := BV32_AND(BV32_LSHR(v0$1, v16$1), v17$1);
    $$0$2$2 := BV32_AND(BV32_LSHR(v0$2, v16$2), v17$2);
    v18$1 := $$0$0$1;
    v18$2 := $$0$0$2;
    v19$1 := $$0$1$1;
    v19$2 := $$0$1$2;
    v20$1 := $$0$2$1;
    v20$2 := $$0$2$2;
    $$gridPos$0$1 := v18$1;
    $$gridPos$0$2 := v18$2;
    $$gridPos$1$1 := v19$1;
    $$gridPos$1$2 := v19$2;
    $$gridPos$2$1 := v20$1;
    $$gridPos$2$2 := v20$2;
    v21$1 := $$gridPos$0$1;
    v21$2 := $$gridPos$0$2;
    v22$1 := $$voxelSize$0$1;
    v22$2 := $$voxelSize$0$2;
    $$p$0$1 := FADD32(-1082130432, FMUL32(UI32_TO_FP32(v21$1), v22$1));
    $$p$0$2 := FADD32(-1082130432, FMUL32(UI32_TO_FP32(v21$2), v22$2));
    v23$1 := $$gridPos$1$1;
    v23$2 := $$gridPos$1$2;
    v24$1 := $$voxelSize$1$1;
    v24$2 := $$voxelSize$1$2;
    $$p$1$1 := FADD32(-1082130432, FMUL32(UI32_TO_FP32(v23$1), v24$1));
    $$p$1$2 := FADD32(-1082130432, FMUL32(UI32_TO_FP32(v23$2), v24$2));
    v25$1 := $$gridPos$2$1;
    v25$2 := $$gridPos$2$2;
    v26$1 := $$voxelSize$2$1;
    v26$2 := $$voxelSize$2$2;
    $$p$2$1 := FADD32(-1082130432, FMUL32(UI32_TO_FP32(v25$1), v26$1));
    $$p$2$2 := FADD32(-1082130432, FMUL32(UI32_TO_FP32(v25$2), v26$2));
    v27$1 := $$p$0$1;
    v27$2 := $$p$0$2;
    $$24$0$1 := v27$1;
    $$24$0$2 := v27$2;
    v28$1 := $$p$1$1;
    v28$2 := $$p$1$2;
    $$24$1$1 := v28$1;
    $$24$1$2 := v28$2;
    v29$1 := $$p$2$1;
    v29$2 := $$p$2$2;
    $$24$2$1 := v29$1;
    $$24$2$2 := v29$2;
    v30$1 := $$24$0$1;
    v30$2 := $$24$0$2;
    v31$1 := $$24$1$1;
    v31$2 := $$24$1$2;
    v32$1 := $$24$2$1;
    v32$2 := $$24$2$2;
    $$p.i19$0$1 := v30$1;
    $$p.i19$0$2 := v30$2;
    $$p.i19$1$1 := v31$1;
    $$p.i19$1$2 := v31$2;
    $$p.i19$2$1 := v32$1;
    $$p.i19$2$2 := v32$2;
    v33$1 := $$p.i19$0$1;
    v33$2 := $$p.i19$0$2;
    v34$1 := $$p.i19$1$1;
    v34$2 := $$p.i19$1$2;
    v35$1 := $$p.i19$2$1;
    v35$2 := $$p.i19$2$2;
    v36$1 := FMUL32(v33$1, 1077936128);
    v36$2 := FMUL32(v33$2, 1077936128);
    v37$1 := FMUL32(v34$1, 1077936128);
    v37$2 := FMUL32(v34$2, 1077936128);
    v38$1 := FMUL32(v35$1, 1077936128);
    v38$2 := FMUL32(v35$2, 1077936128);
    $$field$0$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v36$1, v36$1), v36$1), v36$1), FMUL32(FMUL32(1084227584, v36$1), v36$1)), FMUL32(FMUL32(FMUL32(v37$1, v37$1), v37$1), v37$1)), FMUL32(FMUL32(1084227584, v37$1), v37$1)), FMUL32(FMUL32(FMUL32(v38$1, v38$1), v38$1), v38$1)), FMUL32(FMUL32(1084227584, v38$1), v38$1)), 1094503629), 1045220557), 1056964608);
    $$field$0$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v36$2, v36$2), v36$2), v36$2), FMUL32(FMUL32(1084227584, v36$2), v36$2)), FMUL32(FMUL32(FMUL32(v37$2, v37$2), v37$2), v37$2)), FMUL32(FMUL32(1084227584, v37$2), v37$2)), FMUL32(FMUL32(FMUL32(v38$2, v38$2), v38$2), v38$2)), FMUL32(FMUL32(1084227584, v38$2), v38$2)), 1094503629), 1045220557), 1056964608);
    v39$1 := $$p$0$1;
    v39$2 := $$p$0$2;
    $$26$0$1 := v39$1;
    $$26$0$2 := v39$2;
    v40$1 := $$p$1$1;
    v40$2 := $$p$1$2;
    $$26$1$1 := v40$1;
    $$26$1$2 := v40$2;
    v41$1 := $$p$2$1;
    v41$2 := $$p$2$2;
    $$26$2$1 := v41$1;
    $$26$2$2 := v41$2;
    v42$1 := $$voxelSize$0$1;
    v42$2 := $$voxelSize$0$2;
    $$1$0$1 := v42$1;
    $$1$0$2 := v42$2;
    $$1$1$1 := 0;
    $$1$1$2 := 0;
    $$1$2$1 := 0;
    $$1$2$2 := 0;
    v43$1 := $$1$0$1;
    v43$2 := $$1$0$2;
    v44$1 := $$1$1$1;
    v44$2 := $$1$1$2;
    v45$1 := $$1$2$1;
    v45$2 := $$1$2$2;
    $$27$0$1 := v43$1;
    $$27$0$2 := v43$2;
    $$27$1$1 := v44$1;
    $$27$1$2 := v44$2;
    $$27$2$1 := v45$1;
    $$27$2$2 := v45$2;
    v46$1 := $$26$0$1;
    v46$2 := $$26$0$2;
    v47$1 := $$26$1$1;
    v47$2 := $$26$1$2;
    v48$1 := $$26$2$1;
    v48$2 := $$26$2$2;
    v49$1 := $$27$0$1;
    v49$2 := $$27$0$2;
    v50$1 := $$27$1$1;
    v50$2 := $$27$1$2;
    v51$1 := $$27$2$1;
    v51$2 := $$27$2$2;
    $$a.i17$0$1 := v46$1;
    $$a.i17$0$2 := v46$2;
    $$a.i17$1$1 := v47$1;
    $$a.i17$1$2 := v47$2;
    $$a.i17$2$1 := v48$1;
    $$a.i17$2$2 := v48$2;
    $$b.i18$0$1 := v49$1;
    $$b.i18$0$2 := v49$2;
    $$b.i18$1$1 := v50$1;
    $$b.i18$1$2 := v50$2;
    $$b.i18$2$1 := v51$1;
    $$b.i18$2$2 := v51$2;
    v52$1 := $$a.i17$0$1;
    v52$2 := $$a.i17$0$2;
    v53$1 := $$b.i18$0$1;
    v53$2 := $$b.i18$0$2;
    v54$1 := $$a.i17$1$1;
    v54$2 := $$a.i17$1$2;
    v55$1 := $$b.i18$1$1;
    v55$2 := $$b.i18$1$2;
    v56$1 := $$a.i17$2$1;
    v56$2 := $$a.i17$2$2;
    v57$1 := $$b.i18$2$1;
    v57$2 := $$b.i18$2$2;
    $$2$0$1 := FADD32(v52$1, v53$1);
    $$2$0$2 := FADD32(v52$2, v53$2);
    $$2$1$1 := FADD32(v54$1, v55$1);
    $$2$1$2 := FADD32(v54$2, v55$2);
    $$2$2$1 := FADD32(v56$1, v57$1);
    $$2$2$2 := FADD32(v56$2, v57$2);
    v58$1 := $$2$0$1;
    v58$2 := $$2$0$2;
    v59$1 := $$2$1$1;
    v59$2 := $$2$1$2;
    v60$1 := $$2$2$1;
    v60$2 := $$2$2$2;
    $$3$0$1 := v58$1;
    $$3$0$2 := v58$2;
    $$3$1$1 := v59$1;
    $$3$1$2 := v59$2;
    $$3$2$1 := v60$1;
    $$3$2$2 := v60$2;
    v61$1 := $$3$0$1;
    v61$2 := $$3$0$2;
    v62$1 := $$3$1$1;
    v62$2 := $$3$1$2;
    v63$1 := $$3$2$1;
    v63$2 := $$3$2$2;
    $$25$0$1 := v61$1;
    $$25$0$2 := v61$2;
    $$25$1$1 := v62$1;
    $$25$1$2 := v62$2;
    $$25$2$1 := v63$1;
    $$25$2$2 := v63$2;
    v64$1 := $$25$0$1;
    v64$2 := $$25$0$2;
    v65$1 := $$25$1$1;
    v65$2 := $$25$1$2;
    v66$1 := $$25$2$1;
    v66$2 := $$25$2$2;
    $$p.i16$0$1 := v64$1;
    $$p.i16$0$2 := v64$2;
    $$p.i16$1$1 := v65$1;
    $$p.i16$1$2 := v65$2;
    $$p.i16$2$1 := v66$1;
    $$p.i16$2$2 := v66$2;
    v67$1 := $$p.i16$0$1;
    v67$2 := $$p.i16$0$2;
    v68$1 := $$p.i16$1$1;
    v68$2 := $$p.i16$1$2;
    v69$1 := $$p.i16$2$1;
    v69$2 := $$p.i16$2$2;
    v70$1 := FMUL32(v67$1, 1077936128);
    v70$2 := FMUL32(v67$2, 1077936128);
    v71$1 := FMUL32(v68$1, 1077936128);
    v71$2 := FMUL32(v68$2, 1077936128);
    v72$1 := FMUL32(v69$1, 1077936128);
    v72$2 := FMUL32(v69$2, 1077936128);
    $$field$1$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v70$1, v70$1), v70$1), v70$1), FMUL32(FMUL32(1084227584, v70$1), v70$1)), FMUL32(FMUL32(FMUL32(v71$1, v71$1), v71$1), v71$1)), FMUL32(FMUL32(1084227584, v71$1), v71$1)), FMUL32(FMUL32(FMUL32(v72$1, v72$1), v72$1), v72$1)), FMUL32(FMUL32(1084227584, v72$1), v72$1)), 1094503629), 1045220557), 1056964608);
    $$field$1$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v70$2, v70$2), v70$2), v70$2), FMUL32(FMUL32(1084227584, v70$2), v70$2)), FMUL32(FMUL32(FMUL32(v71$2, v71$2), v71$2), v71$2)), FMUL32(FMUL32(1084227584, v71$2), v71$2)), FMUL32(FMUL32(FMUL32(v72$2, v72$2), v72$2), v72$2)), FMUL32(FMUL32(1084227584, v72$2), v72$2)), 1094503629), 1045220557), 1056964608);
    v73$1 := $$p$0$1;
    v73$2 := $$p$0$2;
    $$29$0$1 := v73$1;
    $$29$0$2 := v73$2;
    v74$1 := $$p$1$1;
    v74$2 := $$p$1$2;
    $$29$1$1 := v74$1;
    $$29$1$2 := v74$2;
    v75$1 := $$p$2$1;
    v75$2 := $$p$2$2;
    $$29$2$1 := v75$1;
    $$29$2$2 := v75$2;
    v76$1 := $$voxelSize$0$1;
    v76$2 := $$voxelSize$0$2;
    v77$1 := $$voxelSize$1$1;
    v77$2 := $$voxelSize$1$2;
    $$4$0$1 := v76$1;
    $$4$0$2 := v76$2;
    $$4$1$1 := v77$1;
    $$4$1$2 := v77$2;
    $$4$2$1 := 0;
    $$4$2$2 := 0;
    v78$1 := $$4$0$1;
    v78$2 := $$4$0$2;
    v79$1 := $$4$1$1;
    v79$2 := $$4$1$2;
    v80$1 := $$4$2$1;
    v80$2 := $$4$2$2;
    $$30$0$1 := v78$1;
    $$30$0$2 := v78$2;
    $$30$1$1 := v79$1;
    $$30$1$2 := v79$2;
    $$30$2$1 := v80$1;
    $$30$2$2 := v80$2;
    v81$1 := $$29$0$1;
    v81$2 := $$29$0$2;
    v82$1 := $$29$1$1;
    v82$2 := $$29$1$2;
    v83$1 := $$29$2$1;
    v83$2 := $$29$2$2;
    v84$1 := $$30$0$1;
    v84$2 := $$30$0$2;
    v85$1 := $$30$1$1;
    v85$2 := $$30$1$2;
    v86$1 := $$30$2$1;
    v86$2 := $$30$2$2;
    $$a.i14$0$1 := v81$1;
    $$a.i14$0$2 := v81$2;
    $$a.i14$1$1 := v82$1;
    $$a.i14$1$2 := v82$2;
    $$a.i14$2$1 := v83$1;
    $$a.i14$2$2 := v83$2;
    $$b.i15$0$1 := v84$1;
    $$b.i15$0$2 := v84$2;
    $$b.i15$1$1 := v85$1;
    $$b.i15$1$2 := v85$2;
    $$b.i15$2$1 := v86$1;
    $$b.i15$2$2 := v86$2;
    v87$1 := $$a.i14$0$1;
    v87$2 := $$a.i14$0$2;
    v88$1 := $$b.i15$0$1;
    v88$2 := $$b.i15$0$2;
    v89$1 := $$a.i14$1$1;
    v89$2 := $$a.i14$1$2;
    v90$1 := $$b.i15$1$1;
    v90$2 := $$b.i15$1$2;
    v91$1 := $$a.i14$2$1;
    v91$2 := $$a.i14$2$2;
    v92$1 := $$b.i15$2$1;
    v92$2 := $$b.i15$2$2;
    $$5$0$1 := FADD32(v87$1, v88$1);
    $$5$0$2 := FADD32(v87$2, v88$2);
    $$5$1$1 := FADD32(v89$1, v90$1);
    $$5$1$2 := FADD32(v89$2, v90$2);
    $$5$2$1 := FADD32(v91$1, v92$1);
    $$5$2$2 := FADD32(v91$2, v92$2);
    v93$1 := $$5$0$1;
    v93$2 := $$5$0$2;
    v94$1 := $$5$1$1;
    v94$2 := $$5$1$2;
    v95$1 := $$5$2$1;
    v95$2 := $$5$2$2;
    $$6$0$1 := v93$1;
    $$6$0$2 := v93$2;
    $$6$1$1 := v94$1;
    $$6$1$2 := v94$2;
    $$6$2$1 := v95$1;
    $$6$2$2 := v95$2;
    v96$1 := $$6$0$1;
    v96$2 := $$6$0$2;
    v97$1 := $$6$1$1;
    v97$2 := $$6$1$2;
    v98$1 := $$6$2$1;
    v98$2 := $$6$2$2;
    $$28$0$1 := v96$1;
    $$28$0$2 := v96$2;
    $$28$1$1 := v97$1;
    $$28$1$2 := v97$2;
    $$28$2$1 := v98$1;
    $$28$2$2 := v98$2;
    v99$1 := $$28$0$1;
    v99$2 := $$28$0$2;
    v100$1 := $$28$1$1;
    v100$2 := $$28$1$2;
    v101$1 := $$28$2$1;
    v101$2 := $$28$2$2;
    $$p.i13$0$1 := v99$1;
    $$p.i13$0$2 := v99$2;
    $$p.i13$1$1 := v100$1;
    $$p.i13$1$2 := v100$2;
    $$p.i13$2$1 := v101$1;
    $$p.i13$2$2 := v101$2;
    v102$1 := $$p.i13$0$1;
    v102$2 := $$p.i13$0$2;
    v103$1 := $$p.i13$1$1;
    v103$2 := $$p.i13$1$2;
    v104$1 := $$p.i13$2$1;
    v104$2 := $$p.i13$2$2;
    v105$1 := FMUL32(v102$1, 1077936128);
    v105$2 := FMUL32(v102$2, 1077936128);
    v106$1 := FMUL32(v103$1, 1077936128);
    v106$2 := FMUL32(v103$2, 1077936128);
    v107$1 := FMUL32(v104$1, 1077936128);
    v107$2 := FMUL32(v104$2, 1077936128);
    $$field$2$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v105$1, v105$1), v105$1), v105$1), FMUL32(FMUL32(1084227584, v105$1), v105$1)), FMUL32(FMUL32(FMUL32(v106$1, v106$1), v106$1), v106$1)), FMUL32(FMUL32(1084227584, v106$1), v106$1)), FMUL32(FMUL32(FMUL32(v107$1, v107$1), v107$1), v107$1)), FMUL32(FMUL32(1084227584, v107$1), v107$1)), 1094503629), 1045220557), 1056964608);
    $$field$2$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v105$2, v105$2), v105$2), v105$2), FMUL32(FMUL32(1084227584, v105$2), v105$2)), FMUL32(FMUL32(FMUL32(v106$2, v106$2), v106$2), v106$2)), FMUL32(FMUL32(1084227584, v106$2), v106$2)), FMUL32(FMUL32(FMUL32(v107$2, v107$2), v107$2), v107$2)), FMUL32(FMUL32(1084227584, v107$2), v107$2)), 1094503629), 1045220557), 1056964608);
    v108$1 := $$p$0$1;
    v108$2 := $$p$0$2;
    $$32$0$1 := v108$1;
    $$32$0$2 := v108$2;
    v109$1 := $$p$1$1;
    v109$2 := $$p$1$2;
    $$32$1$1 := v109$1;
    $$32$1$2 := v109$2;
    v110$1 := $$p$2$1;
    v110$2 := $$p$2$2;
    $$32$2$1 := v110$1;
    $$32$2$2 := v110$2;
    v111$1 := $$voxelSize$1$1;
    v111$2 := $$voxelSize$1$2;
    $$7$0$1 := 0;
    $$7$0$2 := 0;
    $$7$1$1 := v111$1;
    $$7$1$2 := v111$2;
    $$7$2$1 := 0;
    $$7$2$2 := 0;
    v112$1 := $$7$0$1;
    v112$2 := $$7$0$2;
    v113$1 := $$7$1$1;
    v113$2 := $$7$1$2;
    v114$1 := $$7$2$1;
    v114$2 := $$7$2$2;
    $$33$0$1 := v112$1;
    $$33$0$2 := v112$2;
    $$33$1$1 := v113$1;
    $$33$1$2 := v113$2;
    $$33$2$1 := v114$1;
    $$33$2$2 := v114$2;
    v115$1 := $$32$0$1;
    v115$2 := $$32$0$2;
    v116$1 := $$32$1$1;
    v116$2 := $$32$1$2;
    v117$1 := $$32$2$1;
    v117$2 := $$32$2$2;
    v118$1 := $$33$0$1;
    v118$2 := $$33$0$2;
    v119$1 := $$33$1$1;
    v119$2 := $$33$1$2;
    v120$1 := $$33$2$1;
    v120$2 := $$33$2$2;
    $$a.i11$0$1 := v115$1;
    $$a.i11$0$2 := v115$2;
    $$a.i11$1$1 := v116$1;
    $$a.i11$1$2 := v116$2;
    $$a.i11$2$1 := v117$1;
    $$a.i11$2$2 := v117$2;
    $$b.i12$0$1 := v118$1;
    $$b.i12$0$2 := v118$2;
    $$b.i12$1$1 := v119$1;
    $$b.i12$1$2 := v119$2;
    $$b.i12$2$1 := v120$1;
    $$b.i12$2$2 := v120$2;
    v121$1 := $$a.i11$0$1;
    v121$2 := $$a.i11$0$2;
    v122$1 := $$b.i12$0$1;
    v122$2 := $$b.i12$0$2;
    v123$1 := $$a.i11$1$1;
    v123$2 := $$a.i11$1$2;
    v124$1 := $$b.i12$1$1;
    v124$2 := $$b.i12$1$2;
    v125$1 := $$a.i11$2$1;
    v125$2 := $$a.i11$2$2;
    v126$1 := $$b.i12$2$1;
    v126$2 := $$b.i12$2$2;
    $$8$0$1 := FADD32(v121$1, v122$1);
    $$8$0$2 := FADD32(v121$2, v122$2);
    $$8$1$1 := FADD32(v123$1, v124$1);
    $$8$1$2 := FADD32(v123$2, v124$2);
    $$8$2$1 := FADD32(v125$1, v126$1);
    $$8$2$2 := FADD32(v125$2, v126$2);
    v127$1 := $$8$0$1;
    v127$2 := $$8$0$2;
    v128$1 := $$8$1$1;
    v128$2 := $$8$1$2;
    v129$1 := $$8$2$1;
    v129$2 := $$8$2$2;
    $$9$0$1 := v127$1;
    $$9$0$2 := v127$2;
    $$9$1$1 := v128$1;
    $$9$1$2 := v128$2;
    $$9$2$1 := v129$1;
    $$9$2$2 := v129$2;
    v130$1 := $$9$0$1;
    v130$2 := $$9$0$2;
    v131$1 := $$9$1$1;
    v131$2 := $$9$1$2;
    v132$1 := $$9$2$1;
    v132$2 := $$9$2$2;
    $$31$0$1 := v130$1;
    $$31$0$2 := v130$2;
    $$31$1$1 := v131$1;
    $$31$1$2 := v131$2;
    $$31$2$1 := v132$1;
    $$31$2$2 := v132$2;
    v133$1 := $$31$0$1;
    v133$2 := $$31$0$2;
    v134$1 := $$31$1$1;
    v134$2 := $$31$1$2;
    v135$1 := $$31$2$1;
    v135$2 := $$31$2$2;
    $$p.i10$0$1 := v133$1;
    $$p.i10$0$2 := v133$2;
    $$p.i10$1$1 := v134$1;
    $$p.i10$1$2 := v134$2;
    $$p.i10$2$1 := v135$1;
    $$p.i10$2$2 := v135$2;
    v136$1 := $$p.i10$0$1;
    v136$2 := $$p.i10$0$2;
    v137$1 := $$p.i10$1$1;
    v137$2 := $$p.i10$1$2;
    v138$1 := $$p.i10$2$1;
    v138$2 := $$p.i10$2$2;
    v139$1 := FMUL32(v136$1, 1077936128);
    v139$2 := FMUL32(v136$2, 1077936128);
    v140$1 := FMUL32(v137$1, 1077936128);
    v140$2 := FMUL32(v137$2, 1077936128);
    v141$1 := FMUL32(v138$1, 1077936128);
    v141$2 := FMUL32(v138$2, 1077936128);
    $$field$3$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v139$1, v139$1), v139$1), v139$1), FMUL32(FMUL32(1084227584, v139$1), v139$1)), FMUL32(FMUL32(FMUL32(v140$1, v140$1), v140$1), v140$1)), FMUL32(FMUL32(1084227584, v140$1), v140$1)), FMUL32(FMUL32(FMUL32(v141$1, v141$1), v141$1), v141$1)), FMUL32(FMUL32(1084227584, v141$1), v141$1)), 1094503629), 1045220557), 1056964608);
    $$field$3$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v139$2, v139$2), v139$2), v139$2), FMUL32(FMUL32(1084227584, v139$2), v139$2)), FMUL32(FMUL32(FMUL32(v140$2, v140$2), v140$2), v140$2)), FMUL32(FMUL32(1084227584, v140$2), v140$2)), FMUL32(FMUL32(FMUL32(v141$2, v141$2), v141$2), v141$2)), FMUL32(FMUL32(1084227584, v141$2), v141$2)), 1094503629), 1045220557), 1056964608);
    v142$1 := $$p$0$1;
    v142$2 := $$p$0$2;
    $$35$0$1 := v142$1;
    $$35$0$2 := v142$2;
    v143$1 := $$p$1$1;
    v143$2 := $$p$1$2;
    $$35$1$1 := v143$1;
    $$35$1$2 := v143$2;
    v144$1 := $$p$2$1;
    v144$2 := $$p$2$2;
    $$35$2$1 := v144$1;
    $$35$2$2 := v144$2;
    v145$1 := $$voxelSize$2$1;
    v145$2 := $$voxelSize$2$2;
    $$10$0$1 := 0;
    $$10$0$2 := 0;
    $$10$1$1 := 0;
    $$10$1$2 := 0;
    $$10$2$1 := v145$1;
    $$10$2$2 := v145$2;
    v146$1 := $$10$0$1;
    v146$2 := $$10$0$2;
    v147$1 := $$10$1$1;
    v147$2 := $$10$1$2;
    v148$1 := $$10$2$1;
    v148$2 := $$10$2$2;
    $$36$0$1 := v146$1;
    $$36$0$2 := v146$2;
    $$36$1$1 := v147$1;
    $$36$1$2 := v147$2;
    $$36$2$1 := v148$1;
    $$36$2$2 := v148$2;
    v149$1 := $$35$0$1;
    v149$2 := $$35$0$2;
    v150$1 := $$35$1$1;
    v150$2 := $$35$1$2;
    v151$1 := $$35$2$1;
    v151$2 := $$35$2$2;
    v152$1 := $$36$0$1;
    v152$2 := $$36$0$2;
    v153$1 := $$36$1$1;
    v153$2 := $$36$1$2;
    v154$1 := $$36$2$1;
    v154$2 := $$36$2$2;
    $$a.i8$0$1 := v149$1;
    $$a.i8$0$2 := v149$2;
    $$a.i8$1$1 := v150$1;
    $$a.i8$1$2 := v150$2;
    $$a.i8$2$1 := v151$1;
    $$a.i8$2$2 := v151$2;
    $$b.i9$0$1 := v152$1;
    $$b.i9$0$2 := v152$2;
    $$b.i9$1$1 := v153$1;
    $$b.i9$1$2 := v153$2;
    $$b.i9$2$1 := v154$1;
    $$b.i9$2$2 := v154$2;
    v155$1 := $$a.i8$0$1;
    v155$2 := $$a.i8$0$2;
    v156$1 := $$b.i9$0$1;
    v156$2 := $$b.i9$0$2;
    v157$1 := $$a.i8$1$1;
    v157$2 := $$a.i8$1$2;
    v158$1 := $$b.i9$1$1;
    v158$2 := $$b.i9$1$2;
    v159$1 := $$a.i8$2$1;
    v159$2 := $$a.i8$2$2;
    v160$1 := $$b.i9$2$1;
    v160$2 := $$b.i9$2$2;
    $$11$0$1 := FADD32(v155$1, v156$1);
    $$11$0$2 := FADD32(v155$2, v156$2);
    $$11$1$1 := FADD32(v157$1, v158$1);
    $$11$1$2 := FADD32(v157$2, v158$2);
    $$11$2$1 := FADD32(v159$1, v160$1);
    $$11$2$2 := FADD32(v159$2, v160$2);
    v161$1 := $$11$0$1;
    v161$2 := $$11$0$2;
    v162$1 := $$11$1$1;
    v162$2 := $$11$1$2;
    v163$1 := $$11$2$1;
    v163$2 := $$11$2$2;
    $$12$0$1 := v161$1;
    $$12$0$2 := v161$2;
    $$12$1$1 := v162$1;
    $$12$1$2 := v162$2;
    $$12$2$1 := v163$1;
    $$12$2$2 := v163$2;
    v164$1 := $$12$0$1;
    v164$2 := $$12$0$2;
    v165$1 := $$12$1$1;
    v165$2 := $$12$1$2;
    v166$1 := $$12$2$1;
    v166$2 := $$12$2$2;
    $$34$0$1 := v164$1;
    $$34$0$2 := v164$2;
    $$34$1$1 := v165$1;
    $$34$1$2 := v165$2;
    $$34$2$1 := v166$1;
    $$34$2$2 := v166$2;
    v167$1 := $$34$0$1;
    v167$2 := $$34$0$2;
    v168$1 := $$34$1$1;
    v168$2 := $$34$1$2;
    v169$1 := $$34$2$1;
    v169$2 := $$34$2$2;
    $$p.i7$0$1 := v167$1;
    $$p.i7$0$2 := v167$2;
    $$p.i7$1$1 := v168$1;
    $$p.i7$1$2 := v168$2;
    $$p.i7$2$1 := v169$1;
    $$p.i7$2$2 := v169$2;
    v170$1 := $$p.i7$0$1;
    v170$2 := $$p.i7$0$2;
    v171$1 := $$p.i7$1$1;
    v171$2 := $$p.i7$1$2;
    v172$1 := $$p.i7$2$1;
    v172$2 := $$p.i7$2$2;
    v173$1 := FMUL32(v170$1, 1077936128);
    v173$2 := FMUL32(v170$2, 1077936128);
    v174$1 := FMUL32(v171$1, 1077936128);
    v174$2 := FMUL32(v171$2, 1077936128);
    v175$1 := FMUL32(v172$1, 1077936128);
    v175$2 := FMUL32(v172$2, 1077936128);
    $$field$4$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v173$1, v173$1), v173$1), v173$1), FMUL32(FMUL32(1084227584, v173$1), v173$1)), FMUL32(FMUL32(FMUL32(v174$1, v174$1), v174$1), v174$1)), FMUL32(FMUL32(1084227584, v174$1), v174$1)), FMUL32(FMUL32(FMUL32(v175$1, v175$1), v175$1), v175$1)), FMUL32(FMUL32(1084227584, v175$1), v175$1)), 1094503629), 1045220557), 1056964608);
    $$field$4$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v173$2, v173$2), v173$2), v173$2), FMUL32(FMUL32(1084227584, v173$2), v173$2)), FMUL32(FMUL32(FMUL32(v174$2, v174$2), v174$2), v174$2)), FMUL32(FMUL32(1084227584, v174$2), v174$2)), FMUL32(FMUL32(FMUL32(v175$2, v175$2), v175$2), v175$2)), FMUL32(FMUL32(1084227584, v175$2), v175$2)), 1094503629), 1045220557), 1056964608);
    v176$1 := $$p$0$1;
    v176$2 := $$p$0$2;
    $$38$0$1 := v176$1;
    $$38$0$2 := v176$2;
    v177$1 := $$p$1$1;
    v177$2 := $$p$1$2;
    $$38$1$1 := v177$1;
    $$38$1$2 := v177$2;
    v178$1 := $$p$2$1;
    v178$2 := $$p$2$2;
    $$38$2$1 := v178$1;
    $$38$2$2 := v178$2;
    v179$1 := $$voxelSize$0$1;
    v179$2 := $$voxelSize$0$2;
    v180$1 := $$voxelSize$2$1;
    v180$2 := $$voxelSize$2$2;
    $$13$0$1 := v179$1;
    $$13$0$2 := v179$2;
    $$13$1$1 := 0;
    $$13$1$2 := 0;
    $$13$2$1 := v180$1;
    $$13$2$2 := v180$2;
    v181$1 := $$13$0$1;
    v181$2 := $$13$0$2;
    v182$1 := $$13$1$1;
    v182$2 := $$13$1$2;
    v183$1 := $$13$2$1;
    v183$2 := $$13$2$2;
    $$39$0$1 := v181$1;
    $$39$0$2 := v181$2;
    $$39$1$1 := v182$1;
    $$39$1$2 := v182$2;
    $$39$2$1 := v183$1;
    $$39$2$2 := v183$2;
    v184$1 := $$38$0$1;
    v184$2 := $$38$0$2;
    v185$1 := $$38$1$1;
    v185$2 := $$38$1$2;
    v186$1 := $$38$2$1;
    v186$2 := $$38$2$2;
    v187$1 := $$39$0$1;
    v187$2 := $$39$0$2;
    v188$1 := $$39$1$1;
    v188$2 := $$39$1$2;
    v189$1 := $$39$2$1;
    v189$2 := $$39$2$2;
    $$a.i5$0$1 := v184$1;
    $$a.i5$0$2 := v184$2;
    $$a.i5$1$1 := v185$1;
    $$a.i5$1$2 := v185$2;
    $$a.i5$2$1 := v186$1;
    $$a.i5$2$2 := v186$2;
    $$b.i6$0$1 := v187$1;
    $$b.i6$0$2 := v187$2;
    $$b.i6$1$1 := v188$1;
    $$b.i6$1$2 := v188$2;
    $$b.i6$2$1 := v189$1;
    $$b.i6$2$2 := v189$2;
    v190$1 := $$a.i5$0$1;
    v190$2 := $$a.i5$0$2;
    v191$1 := $$b.i6$0$1;
    v191$2 := $$b.i6$0$2;
    v192$1 := $$a.i5$1$1;
    v192$2 := $$a.i5$1$2;
    v193$1 := $$b.i6$1$1;
    v193$2 := $$b.i6$1$2;
    v194$1 := $$a.i5$2$1;
    v194$2 := $$a.i5$2$2;
    v195$1 := $$b.i6$2$1;
    v195$2 := $$b.i6$2$2;
    $$14$0$1 := FADD32(v190$1, v191$1);
    $$14$0$2 := FADD32(v190$2, v191$2);
    $$14$1$1 := FADD32(v192$1, v193$1);
    $$14$1$2 := FADD32(v192$2, v193$2);
    $$14$2$1 := FADD32(v194$1, v195$1);
    $$14$2$2 := FADD32(v194$2, v195$2);
    v196$1 := $$14$0$1;
    v196$2 := $$14$0$2;
    v197$1 := $$14$1$1;
    v197$2 := $$14$1$2;
    v198$1 := $$14$2$1;
    v198$2 := $$14$2$2;
    $$15$0$1 := v196$1;
    $$15$0$2 := v196$2;
    $$15$1$1 := v197$1;
    $$15$1$2 := v197$2;
    $$15$2$1 := v198$1;
    $$15$2$2 := v198$2;
    v199$1 := $$15$0$1;
    v199$2 := $$15$0$2;
    v200$1 := $$15$1$1;
    v200$2 := $$15$1$2;
    v201$1 := $$15$2$1;
    v201$2 := $$15$2$2;
    $$37$0$1 := v199$1;
    $$37$0$2 := v199$2;
    $$37$1$1 := v200$1;
    $$37$1$2 := v200$2;
    $$37$2$1 := v201$1;
    $$37$2$2 := v201$2;
    v202$1 := $$37$0$1;
    v202$2 := $$37$0$2;
    v203$1 := $$37$1$1;
    v203$2 := $$37$1$2;
    v204$1 := $$37$2$1;
    v204$2 := $$37$2$2;
    $$p.i4$0$1 := v202$1;
    $$p.i4$0$2 := v202$2;
    $$p.i4$1$1 := v203$1;
    $$p.i4$1$2 := v203$2;
    $$p.i4$2$1 := v204$1;
    $$p.i4$2$2 := v204$2;
    v205$1 := $$p.i4$0$1;
    v205$2 := $$p.i4$0$2;
    v206$1 := $$p.i4$1$1;
    v206$2 := $$p.i4$1$2;
    v207$1 := $$p.i4$2$1;
    v207$2 := $$p.i4$2$2;
    v208$1 := FMUL32(v205$1, 1077936128);
    v208$2 := FMUL32(v205$2, 1077936128);
    v209$1 := FMUL32(v206$1, 1077936128);
    v209$2 := FMUL32(v206$2, 1077936128);
    v210$1 := FMUL32(v207$1, 1077936128);
    v210$2 := FMUL32(v207$2, 1077936128);
    $$field$5$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v208$1, v208$1), v208$1), v208$1), FMUL32(FMUL32(1084227584, v208$1), v208$1)), FMUL32(FMUL32(FMUL32(v209$1, v209$1), v209$1), v209$1)), FMUL32(FMUL32(1084227584, v209$1), v209$1)), FMUL32(FMUL32(FMUL32(v210$1, v210$1), v210$1), v210$1)), FMUL32(FMUL32(1084227584, v210$1), v210$1)), 1094503629), 1045220557), 1056964608);
    $$field$5$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v208$2, v208$2), v208$2), v208$2), FMUL32(FMUL32(1084227584, v208$2), v208$2)), FMUL32(FMUL32(FMUL32(v209$2, v209$2), v209$2), v209$2)), FMUL32(FMUL32(1084227584, v209$2), v209$2)), FMUL32(FMUL32(FMUL32(v210$2, v210$2), v210$2), v210$2)), FMUL32(FMUL32(1084227584, v210$2), v210$2)), 1094503629), 1045220557), 1056964608);
    v211$1 := $$p$0$1;
    v211$2 := $$p$0$2;
    $$41$0$1 := v211$1;
    $$41$0$2 := v211$2;
    v212$1 := $$p$1$1;
    v212$2 := $$p$1$2;
    $$41$1$1 := v212$1;
    $$41$1$2 := v212$2;
    v213$1 := $$p$2$1;
    v213$2 := $$p$2$2;
    $$41$2$1 := v213$1;
    $$41$2$2 := v213$2;
    v214$1 := $$voxelSize$0$1;
    v214$2 := $$voxelSize$0$2;
    v215$1 := $$voxelSize$1$1;
    v215$2 := $$voxelSize$1$2;
    v216$1 := $$voxelSize$2$1;
    v216$2 := $$voxelSize$2$2;
    $$16$0$1 := v214$1;
    $$16$0$2 := v214$2;
    $$16$1$1 := v215$1;
    $$16$1$2 := v215$2;
    $$16$2$1 := v216$1;
    $$16$2$2 := v216$2;
    v217$1 := $$16$0$1;
    v217$2 := $$16$0$2;
    v218$1 := $$16$1$1;
    v218$2 := $$16$1$2;
    v219$1 := $$16$2$1;
    v219$2 := $$16$2$2;
    $$42$0$1 := v217$1;
    $$42$0$2 := v217$2;
    $$42$1$1 := v218$1;
    $$42$1$2 := v218$2;
    $$42$2$1 := v219$1;
    $$42$2$2 := v219$2;
    v220$1 := $$41$0$1;
    v220$2 := $$41$0$2;
    v221$1 := $$41$1$1;
    v221$2 := $$41$1$2;
    v222$1 := $$41$2$1;
    v222$2 := $$41$2$2;
    v223$1 := $$42$0$1;
    v223$2 := $$42$0$2;
    v224$1 := $$42$1$1;
    v224$2 := $$42$1$2;
    v225$1 := $$42$2$1;
    v225$2 := $$42$2$2;
    $$a.i2$0$1 := v220$1;
    $$a.i2$0$2 := v220$2;
    $$a.i2$1$1 := v221$1;
    $$a.i2$1$2 := v221$2;
    $$a.i2$2$1 := v222$1;
    $$a.i2$2$2 := v222$2;
    $$b.i3$0$1 := v223$1;
    $$b.i3$0$2 := v223$2;
    $$b.i3$1$1 := v224$1;
    $$b.i3$1$2 := v224$2;
    $$b.i3$2$1 := v225$1;
    $$b.i3$2$2 := v225$2;
    v226$1 := $$a.i2$0$1;
    v226$2 := $$a.i2$0$2;
    v227$1 := $$b.i3$0$1;
    v227$2 := $$b.i3$0$2;
    v228$1 := $$a.i2$1$1;
    v228$2 := $$a.i2$1$2;
    v229$1 := $$b.i3$1$1;
    v229$2 := $$b.i3$1$2;
    v230$1 := $$a.i2$2$1;
    v230$2 := $$a.i2$2$2;
    v231$1 := $$b.i3$2$1;
    v231$2 := $$b.i3$2$2;
    $$17$0$1 := FADD32(v226$1, v227$1);
    $$17$0$2 := FADD32(v226$2, v227$2);
    $$17$1$1 := FADD32(v228$1, v229$1);
    $$17$1$2 := FADD32(v228$2, v229$2);
    $$17$2$1 := FADD32(v230$1, v231$1);
    $$17$2$2 := FADD32(v230$2, v231$2);
    v232$1 := $$17$0$1;
    v232$2 := $$17$0$2;
    v233$1 := $$17$1$1;
    v233$2 := $$17$1$2;
    v234$1 := $$17$2$1;
    v234$2 := $$17$2$2;
    $$18$0$1 := v232$1;
    $$18$0$2 := v232$2;
    $$18$1$1 := v233$1;
    $$18$1$2 := v233$2;
    $$18$2$1 := v234$1;
    $$18$2$2 := v234$2;
    v235$1 := $$18$0$1;
    v235$2 := $$18$0$2;
    v236$1 := $$18$1$1;
    v236$2 := $$18$1$2;
    v237$1 := $$18$2$1;
    v237$2 := $$18$2$2;
    $$40$0$1 := v235$1;
    $$40$0$2 := v235$2;
    $$40$1$1 := v236$1;
    $$40$1$2 := v236$2;
    $$40$2$1 := v237$1;
    $$40$2$2 := v237$2;
    v238$1 := $$40$0$1;
    v238$2 := $$40$0$2;
    v239$1 := $$40$1$1;
    v239$2 := $$40$1$2;
    v240$1 := $$40$2$1;
    v240$2 := $$40$2$2;
    $$p.i1$0$1 := v238$1;
    $$p.i1$0$2 := v238$2;
    $$p.i1$1$1 := v239$1;
    $$p.i1$1$2 := v239$2;
    $$p.i1$2$1 := v240$1;
    $$p.i1$2$2 := v240$2;
    v241$1 := $$p.i1$0$1;
    v241$2 := $$p.i1$0$2;
    v242$1 := $$p.i1$1$1;
    v242$2 := $$p.i1$1$2;
    v243$1 := $$p.i1$2$1;
    v243$2 := $$p.i1$2$2;
    v244$1 := FMUL32(v241$1, 1077936128);
    v244$2 := FMUL32(v241$2, 1077936128);
    v245$1 := FMUL32(v242$1, 1077936128);
    v245$2 := FMUL32(v242$2, 1077936128);
    v246$1 := FMUL32(v243$1, 1077936128);
    v246$2 := FMUL32(v243$2, 1077936128);
    $$field$6$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v244$1, v244$1), v244$1), v244$1), FMUL32(FMUL32(1084227584, v244$1), v244$1)), FMUL32(FMUL32(FMUL32(v245$1, v245$1), v245$1), v245$1)), FMUL32(FMUL32(1084227584, v245$1), v245$1)), FMUL32(FMUL32(FMUL32(v246$1, v246$1), v246$1), v246$1)), FMUL32(FMUL32(1084227584, v246$1), v246$1)), 1094503629), 1045220557), 1056964608);
    $$field$6$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v244$2, v244$2), v244$2), v244$2), FMUL32(FMUL32(1084227584, v244$2), v244$2)), FMUL32(FMUL32(FMUL32(v245$2, v245$2), v245$2), v245$2)), FMUL32(FMUL32(1084227584, v245$2), v245$2)), FMUL32(FMUL32(FMUL32(v246$2, v246$2), v246$2), v246$2)), FMUL32(FMUL32(1084227584, v246$2), v246$2)), 1094503629), 1045220557), 1056964608);
    v247$1 := $$p$0$1;
    v247$2 := $$p$0$2;
    $$44$0$1 := v247$1;
    $$44$0$2 := v247$2;
    v248$1 := $$p$1$1;
    v248$2 := $$p$1$2;
    $$44$1$1 := v248$1;
    $$44$1$2 := v248$2;
    v249$1 := $$p$2$1;
    v249$2 := $$p$2$2;
    $$44$2$1 := v249$1;
    $$44$2$2 := v249$2;
    v250$1 := $$voxelSize$1$1;
    v250$2 := $$voxelSize$1$2;
    v251$1 := $$voxelSize$2$1;
    v251$2 := $$voxelSize$2$2;
    $$19$0$1 := 0;
    $$19$0$2 := 0;
    $$19$1$1 := v250$1;
    $$19$1$2 := v250$2;
    $$19$2$1 := v251$1;
    $$19$2$2 := v251$2;
    v252$1 := $$19$0$1;
    v252$2 := $$19$0$2;
    v253$1 := $$19$1$1;
    v253$2 := $$19$1$2;
    v254$1 := $$19$2$1;
    v254$2 := $$19$2$2;
    $$45$0$1 := v252$1;
    $$45$0$2 := v252$2;
    $$45$1$1 := v253$1;
    $$45$1$2 := v253$2;
    $$45$2$1 := v254$1;
    $$45$2$2 := v254$2;
    v255$1 := $$44$0$1;
    v255$2 := $$44$0$2;
    v256$1 := $$44$1$1;
    v256$2 := $$44$1$2;
    v257$1 := $$44$2$1;
    v257$2 := $$44$2$2;
    v258$1 := $$45$0$1;
    v258$2 := $$45$0$2;
    v259$1 := $$45$1$1;
    v259$2 := $$45$1$2;
    v260$1 := $$45$2$1;
    v260$2 := $$45$2$2;
    $$a.i$0$1 := v255$1;
    $$a.i$0$2 := v255$2;
    $$a.i$1$1 := v256$1;
    $$a.i$1$2 := v256$2;
    $$a.i$2$1 := v257$1;
    $$a.i$2$2 := v257$2;
    $$b.i$0$1 := v258$1;
    $$b.i$0$2 := v258$2;
    $$b.i$1$1 := v259$1;
    $$b.i$1$2 := v259$2;
    $$b.i$2$1 := v260$1;
    $$b.i$2$2 := v260$2;
    v261$1 := $$a.i$0$1;
    v261$2 := $$a.i$0$2;
    v262$1 := $$b.i$0$1;
    v262$2 := $$b.i$0$2;
    v263$1 := $$a.i$1$1;
    v263$2 := $$a.i$1$2;
    v264$1 := $$b.i$1$1;
    v264$2 := $$b.i$1$2;
    v265$1 := $$a.i$2$1;
    v265$2 := $$a.i$2$2;
    v266$1 := $$b.i$2$1;
    v266$2 := $$b.i$2$2;
    $$20$0$1 := FADD32(v261$1, v262$1);
    $$20$0$2 := FADD32(v261$2, v262$2);
    $$20$1$1 := FADD32(v263$1, v264$1);
    $$20$1$2 := FADD32(v263$2, v264$2);
    $$20$2$1 := FADD32(v265$1, v266$1);
    $$20$2$2 := FADD32(v265$2, v266$2);
    v267$1 := $$20$0$1;
    v267$2 := $$20$0$2;
    v268$1 := $$20$1$1;
    v268$2 := $$20$1$2;
    v269$1 := $$20$2$1;
    v269$2 := $$20$2$2;
    $$21$0$1 := v267$1;
    $$21$0$2 := v267$2;
    $$21$1$1 := v268$1;
    $$21$1$2 := v268$2;
    $$21$2$1 := v269$1;
    $$21$2$2 := v269$2;
    v270$1 := $$21$0$1;
    v270$2 := $$21$0$2;
    v271$1 := $$21$1$1;
    v271$2 := $$21$1$2;
    v272$1 := $$21$2$1;
    v272$2 := $$21$2$2;
    $$43$0$1 := v270$1;
    $$43$0$2 := v270$2;
    $$43$1$1 := v271$1;
    $$43$1$2 := v271$2;
    $$43$2$1 := v272$1;
    $$43$2$2 := v272$2;
    v273$1 := $$43$0$1;
    v273$2 := $$43$0$2;
    v274$1 := $$43$1$1;
    v274$2 := $$43$1$2;
    v275$1 := $$43$2$1;
    v275$2 := $$43$2$2;
    $$p.i$0$1 := v273$1;
    $$p.i$0$2 := v273$2;
    $$p.i$1$1 := v274$1;
    $$p.i$1$2 := v274$2;
    $$p.i$2$1 := v275$1;
    $$p.i$2$2 := v275$2;
    v276$1 := $$p.i$0$1;
    v276$2 := $$p.i$0$2;
    v277$1 := $$p.i$1$1;
    v277$2 := $$p.i$1$2;
    v278$1 := $$p.i$2$1;
    v278$2 := $$p.i$2$2;
    v279$1 := FMUL32(v276$1, 1077936128);
    v279$2 := FMUL32(v276$2, 1077936128);
    v280$1 := FMUL32(v277$1, 1077936128);
    v280$2 := FMUL32(v277$2, 1077936128);
    v281$1 := FMUL32(v278$1, 1077936128);
    v281$2 := FMUL32(v278$2, 1077936128);
    $$field$7$1 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v279$1, v279$1), v279$1), v279$1), FMUL32(FMUL32(1084227584, v279$1), v279$1)), FMUL32(FMUL32(FMUL32(v280$1, v280$1), v280$1), v280$1)), FMUL32(FMUL32(1084227584, v280$1), v280$1)), FMUL32(FMUL32(FMUL32(v281$1, v281$1), v281$1), v281$1)), FMUL32(FMUL32(1084227584, v281$1), v281$1)), 1094503629), 1045220557), 1056964608);
    $$field$7$2 := FADD32(FMUL32(FADD32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FMUL32(FMUL32(FMUL32(v279$2, v279$2), v279$2), v279$2), FMUL32(FMUL32(1084227584, v279$2), v279$2)), FMUL32(FMUL32(FMUL32(v280$2, v280$2), v280$2), v280$2)), FMUL32(FMUL32(1084227584, v280$2), v280$2)), FMUL32(FMUL32(FMUL32(v281$2, v281$2), v281$2), v281$2)), FMUL32(FMUL32(1084227584, v281$2), v281$2)), 1094503629), 1045220557), 1056964608);
    v282$1 := $$field$0$1;
    v282$2 := $$field$0$2;
    v283$1 := $$field$1$1;
    v283$2 := $$field$1$2;
    v284$1 := $$field$2$1;
    v284$2 := $$field$2$2;
    v285$1 := $$field$3$1;
    v285$2 := $$field$3$2;
    v286$1 := $$field$4$1;
    v286$2 := $$field$4$2;
    v287$1 := $$field$5$1;
    v287$2 := $$field$5$2;
    v288$1 := $$field$6$1;
    v288$2 := $$field$6$2;
    v289$1 := $$field$7$1;
    v289$2 := $$field$7$2;
    havoc v290$1, v290$2;
    $$46$0$1 := v290$1;
    $$46$0$2 := v290$2;
    havoc v291$1, v291$2;
    $$46$1$1 := v291$1;
    $$46$1$2 := v291$2;
    havoc v292$1, v292$2;
    $$46$2$1 := v292$1;
    $$46$2$2 := v292$2;
    v293$1 := $$46$0$1;
    v293$2 := $$46$0$2;
    v294$1 := $$46$1$1;
    v294$2 := $$46$1$2;
    v295$1 := $$46$2$1;
    v295$2 := $$46$2$2;
    call {:sourceloc_num 511} v296$1, v296$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v293$1, v294$1, v295$1, BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV1_ZEXT32((if FLT32(v282$1, $isoValue) then 1 else 0)), BV32_MUL(BV1_ZEXT32((if FLT32(v283$1, $isoValue) then 1 else 0)), 2)), BV32_MUL(BV1_ZEXT32((if FLT32(v284$1, $isoValue) then 1 else 0)), 4)), BV32_MUL(BV1_ZEXT32((if FLT32(v285$1, $isoValue) then 1 else 0)), 8)), BV32_MUL(BV1_ZEXT32((if FLT32(v286$1, $isoValue) then 1 else 0)), 16)), BV32_MUL(BV1_ZEXT32((if FLT32(v287$1, $isoValue) then 1 else 0)), 32)), BV32_MUL(BV1_ZEXT32((if FLT32(v288$1, $isoValue) then 1 else 0)), 64)), BV32_MUL(BV1_ZEXT32((if FLT32(v289$1, $isoValue) then 1 else 0)), 128)), v293$2, v294$2, v295$2, BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV1_ZEXT32((if FLT32(v282$2, $isoValue) then 1 else 0)), BV32_MUL(BV1_ZEXT32((if FLT32(v283$2, $isoValue) then 1 else 0)), 2)), BV32_MUL(BV1_ZEXT32((if FLT32(v284$2, $isoValue) then 1 else 0)), 4)), BV32_MUL(BV1_ZEXT32((if FLT32(v285$2, $isoValue) then 1 else 0)), 8)), BV32_MUL(BV1_ZEXT32((if FLT32(v286$2, $isoValue) then 1 else 0)), 16)), BV32_MUL(BV1_ZEXT32((if FLT32(v287$2, $isoValue) then 1 else 0)), 32)), BV32_MUL(BV1_ZEXT32((if FLT32(v288$2, $isoValue) then 1 else 0)), 64)), BV32_MUL(BV1_ZEXT32((if FLT32(v289$2, $isoValue) then 1 else 0)), 128)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v297$1 := BV32_ULT(v0$1, $numVoxels);
    v297$2 := BV32_ULT(v0$2, $numVoxels);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v297$1 then v297$1 else p0$1);
    p0$2 := (if v297$2 then v297$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 513} _LOG_WRITE_$$voxelVerts(p0$1, v0$1, v296$1, $$voxelVerts[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelVerts(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 513} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 513} _CHECK_WRITE_$$voxelVerts(p0$2, v0$2, v296$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$voxelVerts"} true;
    $$voxelVerts[v0$1] := (if p0$1 then v296$1 else $$voxelVerts[v0$1]);
    $$voxelVerts[v0$2] := (if p0$2 then v296$2 else $$voxelVerts[v0$2]);
    call {:sourceloc} {:sourceloc_num 514} _LOG_WRITE_$$voxelOccupied(p0$1, v0$1, BV1_ZEXT32((if BV32_UGT(v296$1, 0) then 1 else 0)), $$voxelOccupied[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelOccupied(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 514} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 514} _CHECK_WRITE_$$voxelOccupied(p0$2, v0$2, BV1_ZEXT32((if BV32_UGT(v296$2, 0) then 1 else 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$voxelOccupied"} true;
    $$voxelOccupied[v0$1] := (if p0$1 then BV1_ZEXT32((if BV32_UGT(v296$1, 0) then 1 else 0)) else $$voxelOccupied[v0$1]);
    $$voxelOccupied[v0$2] := (if p0$2 then BV1_ZEXT32((if BV32_UGT(v296$2, 0) then 1 else 0)) else $$voxelOccupied[v0$2]);
    return;
}



procedure {:source_name "_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi($0$1: int, $1$1: int, $2$1: int, $3$1: int, $0$2: int, $1$2: int, $2$2: int, $3$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 256 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

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

var $$gridSizeShift.i$0$1: int;

var $$gridSizeShift.i$0$2: int;

var $$gridSizeShift.i$1$1: int;

var $$gridSizeShift.i$1$2: int;

var $$gridSizeShift.i$2$1: int;

var $$gridSizeShift.i$2$2: int;

var $$gridSizeMask.i$0$1: int;

var $$gridSizeMask.i$0$2: int;

var $$gridSizeMask.i$1$1: int;

var $$gridSizeMask.i$1$2: int;

var $$gridSizeMask.i$2$1: int;

var $$gridSizeMask.i$2$2: int;

var $$p.i19$0$1: int;

var $$p.i19$0$2: int;

var $$p.i19$1$1: int;

var $$p.i19$1$2: int;

var $$p.i19$2$1: int;

var $$p.i19$2$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

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

var $$a.i17$0$1: int;

var $$a.i17$0$2: int;

var $$a.i17$1$1: int;

var $$a.i17$1$2: int;

var $$a.i17$2$1: int;

var $$a.i17$2$2: int;

var $$b.i18$0$1: int;

var $$b.i18$0$2: int;

var $$b.i18$1$1: int;

var $$b.i18$1$2: int;

var $$b.i18$2$1: int;

var $$b.i18$2$2: int;

var $$p.i16$0$1: int;

var $$p.i16$0$2: int;

var $$p.i16$1$1: int;

var $$p.i16$1$2: int;

var $$p.i16$2$1: int;

var $$p.i16$2$2: int;

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

var $$a.i14$0$1: int;

var $$a.i14$0$2: int;

var $$a.i14$1$1: int;

var $$a.i14$1$2: int;

var $$a.i14$2$1: int;

var $$a.i14$2$2: int;

var $$b.i15$0$1: int;

var $$b.i15$0$2: int;

var $$b.i15$1$1: int;

var $$b.i15$1$2: int;

var $$b.i15$2$1: int;

var $$b.i15$2$2: int;

var $$p.i13$0$1: int;

var $$p.i13$0$2: int;

var $$p.i13$1$1: int;

var $$p.i13$1$2: int;

var $$p.i13$2$1: int;

var $$p.i13$2$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$9$2$1: int;

var $$9$2$2: int;

var $$a.i11$0$1: int;

var $$a.i11$0$2: int;

var $$a.i11$1$1: int;

var $$a.i11$1$2: int;

var $$a.i11$2$1: int;

var $$a.i11$2$2: int;

var $$b.i12$0$1: int;

var $$b.i12$0$2: int;

var $$b.i12$1$1: int;

var $$b.i12$1$2: int;

var $$b.i12$2$1: int;

var $$b.i12$2$2: int;

var $$p.i10$0$1: int;

var $$p.i10$0$2: int;

var $$p.i10$1$1: int;

var $$p.i10$1$2: int;

var $$p.i10$2$1: int;

var $$p.i10$2$2: int;

var $$10$0$1: int;

var $$10$0$2: int;

var $$10$1$1: int;

var $$10$1$2: int;

var $$10$2$1: int;

var $$10$2$2: int;

var $$11$0$1: int;

var $$11$0$2: int;

var $$11$1$1: int;

var $$11$1$2: int;

var $$11$2$1: int;

var $$11$2$2: int;

var $$12$0$1: int;

var $$12$0$2: int;

var $$12$1$1: int;

var $$12$1$2: int;

var $$12$2$1: int;

var $$12$2$2: int;

var $$a.i8$0$1: int;

var $$a.i8$0$2: int;

var $$a.i8$1$1: int;

var $$a.i8$1$2: int;

var $$a.i8$2$1: int;

var $$a.i8$2$2: int;

var $$b.i9$0$1: int;

var $$b.i9$0$2: int;

var $$b.i9$1$1: int;

var $$b.i9$1$2: int;

var $$b.i9$2$1: int;

var $$b.i9$2$2: int;

var $$p.i7$0$1: int;

var $$p.i7$0$2: int;

var $$p.i7$1$1: int;

var $$p.i7$1$2: int;

var $$p.i7$2$1: int;

var $$p.i7$2$2: int;

var $$13$0$1: int;

var $$13$0$2: int;

var $$13$1$1: int;

var $$13$1$2: int;

var $$13$2$1: int;

var $$13$2$2: int;

var $$14$0$1: int;

var $$14$0$2: int;

var $$14$1$1: int;

var $$14$1$2: int;

var $$14$2$1: int;

var $$14$2$2: int;

var $$15$0$1: int;

var $$15$0$2: int;

var $$15$1$1: int;

var $$15$1$2: int;

var $$15$2$1: int;

var $$15$2$2: int;

var $$a.i5$0$1: int;

var $$a.i5$0$2: int;

var $$a.i5$1$1: int;

var $$a.i5$1$2: int;

var $$a.i5$2$1: int;

var $$a.i5$2$2: int;

var $$b.i6$0$1: int;

var $$b.i6$0$2: int;

var $$b.i6$1$1: int;

var $$b.i6$1$2: int;

var $$b.i6$2$1: int;

var $$b.i6$2$2: int;

var $$p.i4$0$1: int;

var $$p.i4$0$2: int;

var $$p.i4$1$1: int;

var $$p.i4$1$2: int;

var $$p.i4$2$1: int;

var $$p.i4$2$2: int;

var $$16$0$1: int;

var $$16$0$2: int;

var $$16$1$1: int;

var $$16$1$2: int;

var $$16$2$1: int;

var $$16$2$2: int;

var $$17$0$1: int;

var $$17$0$2: int;

var $$17$1$1: int;

var $$17$1$2: int;

var $$17$2$1: int;

var $$17$2$2: int;

var $$18$0$1: int;

var $$18$0$2: int;

var $$18$1$1: int;

var $$18$1$2: int;

var $$18$2$1: int;

var $$18$2$2: int;

var $$a.i2$0$1: int;

var $$a.i2$0$2: int;

var $$a.i2$1$1: int;

var $$a.i2$1$2: int;

var $$a.i2$2$1: int;

var $$a.i2$2$2: int;

var $$b.i3$0$1: int;

var $$b.i3$0$2: int;

var $$b.i3$1$1: int;

var $$b.i3$1$2: int;

var $$b.i3$2$1: int;

var $$b.i3$2$2: int;

var $$p.i1$0$1: int;

var $$p.i1$0$2: int;

var $$p.i1$1$1: int;

var $$p.i1$1$2: int;

var $$p.i1$2$1: int;

var $$p.i1$2$2: int;

var $$19$0$1: int;

var $$19$0$2: int;

var $$19$1$1: int;

var $$19$1$2: int;

var $$19$2$1: int;

var $$19$2$2: int;

var $$20$0$1: int;

var $$20$0$2: int;

var $$20$1$1: int;

var $$20$1$2: int;

var $$20$2$1: int;

var $$20$2$2: int;

var $$21$0$1: int;

var $$21$0$2: int;

var $$21$1$1: int;

var $$21$1$2: int;

var $$21$2$1: int;

var $$21$2$2: int;

var $$a.i$0$1: int;

var $$a.i$0$2: int;

var $$a.i$1$1: int;

var $$a.i$1$2: int;

var $$a.i$2$1: int;

var $$a.i$2$2: int;

var $$b.i$0$1: int;

var $$b.i$0$2: int;

var $$b.i$1$1: int;

var $$b.i$1$2: int;

var $$b.i$2$1: int;

var $$b.i$2$2: int;

var $$p.i$0$1: int;

var $$p.i$0$2: int;

var $$p.i$1$1: int;

var $$p.i$1$2: int;

var $$p.i$2$1: int;

var $$p.i$2$2: int;

var $$gridSize$0$1: int;

var $$gridSize$0$2: int;

var $$gridSize$1$1: int;

var $$gridSize$1$2: int;

var $$gridSize$2$1: int;

var $$gridSize$2$2: int;

var $$gridSizeShift$0$1: int;

var $$gridSizeShift$0$2: int;

var $$gridSizeShift$1$1: int;

var $$gridSizeShift$1$2: int;

var $$gridSizeShift$2$1: int;

var $$gridSizeShift$2$2: int;

var $$gridSizeMask$0$1: int;

var $$gridSizeMask$0$2: int;

var $$gridSizeMask$1$1: int;

var $$gridSizeMask$1$2: int;

var $$gridSizeMask$2$1: int;

var $$gridSizeMask$2$2: int;

var $$voxelSize$0$1: int;

var $$voxelSize$0$2: int;

var $$voxelSize$1$1: int;

var $$voxelSize$1$2: int;

var $$voxelSize$2$1: int;

var $$voxelSize$2$2: int;

var $$gridPos$0$1: int;

var $$gridPos$0$2: int;

var $$gridPos$1$1: int;

var $$gridPos$1$2: int;

var $$gridPos$2$1: int;

var $$gridPos$2$2: int;

var $$22$0$1: int;

var $$22$0$2: int;

var $$22$1$1: int;

var $$22$1$2: int;

var $$22$2$1: int;

var $$22$2$2: int;

var $$23$0$1: int;

var $$23$0$2: int;

var $$23$1$1: int;

var $$23$1$2: int;

var $$23$2$1: int;

var $$23$2$2: int;

var $$p$0$1: int;

var $$p$0$2: int;

var $$p$1$1: int;

var $$p$1$2: int;

var $$p$2$1: int;

var $$p$2$2: int;

var $$field$0$1: int;

var $$field$0$2: int;

var $$field$1$1: int;

var $$field$1$2: int;

var $$field$2$1: int;

var $$field$2$2: int;

var $$field$3$1: int;

var $$field$3$2: int;

var $$field$4$1: int;

var $$field$4$2: int;

var $$field$5$1: int;

var $$field$5$2: int;

var $$field$6$1: int;

var $$field$6$2: int;

var $$field$7$1: int;

var $$field$7$2: int;

var $$24$0$1: int;

var $$24$0$2: int;

var $$24$1$1: int;

var $$24$1$2: int;

var $$24$2$1: int;

var $$24$2$2: int;

var $$25$0$1: int;

var $$25$0$2: int;

var $$25$1$1: int;

var $$25$1$2: int;

var $$25$2$1: int;

var $$25$2$2: int;

var $$26$0$1: int;

var $$26$0$2: int;

var $$26$1$1: int;

var $$26$1$2: int;

var $$26$2$1: int;

var $$26$2$2: int;

var $$27$0$1: int;

var $$27$0$2: int;

var $$27$1$1: int;

var $$27$1$2: int;

var $$27$2$1: int;

var $$27$2$2: int;

var $$28$0$1: int;

var $$28$0$2: int;

var $$28$1$1: int;

var $$28$1$2: int;

var $$28$2$1: int;

var $$28$2$2: int;

var $$29$0$1: int;

var $$29$0$2: int;

var $$29$1$1: int;

var $$29$1$2: int;

var $$29$2$1: int;

var $$29$2$2: int;

var $$30$0$1: int;

var $$30$0$2: int;

var $$30$1$1: int;

var $$30$1$2: int;

var $$30$2$1: int;

var $$30$2$2: int;

var $$31$0$1: int;

var $$31$0$2: int;

var $$31$1$1: int;

var $$31$1$2: int;

var $$31$2$1: int;

var $$31$2$2: int;

var $$32$0$1: int;

var $$32$0$2: int;

var $$32$1$1: int;

var $$32$1$2: int;

var $$32$2$1: int;

var $$32$2$2: int;

var $$33$0$1: int;

var $$33$0$2: int;

var $$33$1$1: int;

var $$33$1$2: int;

var $$33$2$1: int;

var $$33$2$2: int;

var $$34$0$1: int;

var $$34$0$2: int;

var $$34$1$1: int;

var $$34$1$2: int;

var $$34$2$1: int;

var $$34$2$2: int;

var $$35$0$1: int;

var $$35$0$2: int;

var $$35$1$1: int;

var $$35$1$2: int;

var $$35$2$1: int;

var $$35$2$2: int;

var $$36$0$1: int;

var $$36$0$2: int;

var $$36$1$1: int;

var $$36$1$2: int;

var $$36$2$1: int;

var $$36$2$2: int;

var $$37$0$1: int;

var $$37$0$2: int;

var $$37$1$1: int;

var $$37$1$2: int;

var $$37$2$1: int;

var $$37$2$2: int;

var $$38$0$1: int;

var $$38$0$2: int;

var $$38$1$1: int;

var $$38$1$2: int;

var $$38$2$1: int;

var $$38$2$2: int;

var $$39$0$1: int;

var $$39$0$2: int;

var $$39$1$1: int;

var $$39$1$2: int;

var $$39$2$1: int;

var $$39$2$2: int;

var $$40$0$1: int;

var $$40$0$2: int;

var $$40$1$1: int;

var $$40$1$2: int;

var $$40$2$1: int;

var $$40$2$2: int;

var $$41$0$1: int;

var $$41$0$2: int;

var $$41$1$1: int;

var $$41$1$2: int;

var $$41$2$1: int;

var $$41$2$2: int;

var $$42$0$1: int;

var $$42$0$2: int;

var $$42$1$1: int;

var $$42$1$2: int;

var $$42$2$1: int;

var $$42$2$2: int;

var $$43$0$1: int;

var $$43$0$2: int;

var $$43$1$1: int;

var $$43$1$2: int;

var $$43$2$1: int;

var $$43$2$2: int;

var $$44$0$1: int;

var $$44$0$2: int;

var $$44$1$1: int;

var $$44$1$2: int;

var $$44$2$1: int;

var $$44$2$2: int;

var $$45$0$1: int;

var $$45$0$2: int;

var $$45$1$1: int;

var $$45$1$2: int;

var $$45$2$1: int;

var $$45$2$2: int;

var $$46$0$1: int;

var $$46$0$2: int;

var $$46$1$1: int;

var $$46$1$2: int;

var $$46$2$1: int;

var $$46$2$2: int;

const _WATCHED_VALUE_$$voxelVerts: int;

procedure {:inline 1} _LOG_READ_$$voxelVerts(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$voxelVerts;



implementation {:inline 1} _LOG_READ_$$voxelVerts(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$voxelVerts := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelVerts == _value then true else _READ_HAS_OCCURRED_$$voxelVerts);
    return;
}



procedure _CHECK_READ_$$voxelVerts(_P: bool, _offset: int, _value: int);
  requires {:source_name "voxelVerts"} {:array "$$voxelVerts"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$voxelVerts);
  requires {:source_name "voxelVerts"} {:array "$$voxelVerts"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$voxelVerts: bool;

procedure {:inline 1} _LOG_WRITE_$$voxelVerts(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$voxelVerts, _WRITE_READ_BENIGN_FLAG_$$voxelVerts;



implementation {:inline 1} _LOG_WRITE_$$voxelVerts(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$voxelVerts := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelVerts == _value then true else _WRITE_HAS_OCCURRED_$$voxelVerts);
    _WRITE_READ_BENIGN_FLAG_$$voxelVerts := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelVerts == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$voxelVerts);
    return;
}



procedure _CHECK_WRITE_$$voxelVerts(_P: bool, _offset: int, _value: int);
  requires {:source_name "voxelVerts"} {:array "$$voxelVerts"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelVerts != _value);
  requires {:source_name "voxelVerts"} {:array "$$voxelVerts"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelVerts != _value);
  requires {:source_name "voxelVerts"} {:array "$$voxelVerts"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$voxelVerts(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$voxelVerts;



implementation {:inline 1} _LOG_ATOMIC_$$voxelVerts(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$voxelVerts := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$voxelVerts);
    return;
}



procedure _CHECK_ATOMIC_$$voxelVerts(_P: bool, _offset: int);
  requires {:source_name "voxelVerts"} {:array "$$voxelVerts"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset);
  requires {:source_name "voxelVerts"} {:array "$$voxelVerts"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelVerts(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$voxelVerts;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelVerts(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$voxelVerts := (if _P && _WRITE_HAS_OCCURRED_$$voxelVerts && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$voxelVerts);
    return;
}



const _WATCHED_VALUE_$$voxelOccupied: int;

procedure {:inline 1} _LOG_READ_$$voxelOccupied(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$voxelOccupied;



implementation {:inline 1} _LOG_READ_$$voxelOccupied(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied == _value then true else _READ_HAS_OCCURRED_$$voxelOccupied);
    return;
}



procedure _CHECK_READ_$$voxelOccupied(_P: bool, _offset: int, _value: int);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$voxelOccupied);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$voxelOccupied: bool;

procedure {:inline 1} _LOG_WRITE_$$voxelOccupied(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$voxelOccupied, _WRITE_READ_BENIGN_FLAG_$$voxelOccupied;



implementation {:inline 1} _LOG_WRITE_$$voxelOccupied(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied == _value then true else _WRITE_HAS_OCCURRED_$$voxelOccupied);
    _WRITE_READ_BENIGN_FLAG_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$voxelOccupied);
    return;
}



procedure _CHECK_WRITE_$$voxelOccupied(_P: bool, _offset: int, _value: int);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied != _value);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied != _value);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$voxelOccupied(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$voxelOccupied;



implementation {:inline 1} _LOG_ATOMIC_$$voxelOccupied(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$voxelOccupied);
    return;
}



procedure _CHECK_ATOMIC_$$voxelOccupied(_P: bool, _offset: int);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelOccupied(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$voxelOccupied;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelOccupied(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$voxelOccupied := (if _P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$voxelOccupied);
    return;
}



const _WATCHED_VALUE_$$volume: int;

procedure {:inline 1} _LOG_READ_$$volume(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$volume;



implementation {:inline 1} _LOG_READ_$$volume(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$volume := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$volume == _value then true else _READ_HAS_OCCURRED_$$volume);
    return;
}



procedure _CHECK_READ_$$volume(_P: bool, _offset: int, _value: int);
  requires {:source_name "volume"} {:array "$$volume"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$volume);
  requires {:source_name "volume"} {:array "$$volume"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$volume: bool;

procedure {:inline 1} _LOG_WRITE_$$volume(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$volume, _WRITE_READ_BENIGN_FLAG_$$volume;



implementation {:inline 1} _LOG_WRITE_$$volume(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$volume := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$volume == _value then true else _WRITE_HAS_OCCURRED_$$volume);
    _WRITE_READ_BENIGN_FLAG_$$volume := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$volume == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$volume);
    return;
}



procedure _CHECK_WRITE_$$volume(_P: bool, _offset: int, _value: int);
  requires {:source_name "volume"} {:array "$$volume"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$volume != _value);
  requires {:source_name "volume"} {:array "$$volume"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$volume != _value);
  requires {:source_name "volume"} {:array "$$volume"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$volume(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$volume;



implementation {:inline 1} _LOG_ATOMIC_$$volume(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$volume := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$volume);
    return;
}



procedure _CHECK_ATOMIC_$$volume(_P: bool, _offset: int);
  requires {:source_name "volume"} {:array "$$volume"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset);
  requires {:source_name "volume"} {:array "$$volume"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$volume(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$volume;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$volume(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$volume := (if _P && _WRITE_HAS_OCCURRED_$$volume && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$volume);
    return;
}



const _WATCHED_VALUE_$$numVertsTex: int;

procedure {:inline 1} _LOG_READ_$$numVertsTex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$numVertsTex;



implementation {:inline 1} _LOG_READ_$$numVertsTex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$numVertsTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$numVertsTex == _value then true else _READ_HAS_OCCURRED_$$numVertsTex);
    return;
}



procedure _CHECK_READ_$$numVertsTex(_P: bool, _offset: int, _value: int);
  requires {:source_name "numVertsTex"} {:array "$$numVertsTex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$numVertsTex);
  requires {:source_name "numVertsTex"} {:array "$$numVertsTex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$numVertsTex: bool;

procedure {:inline 1} _LOG_WRITE_$$numVertsTex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$numVertsTex, _WRITE_READ_BENIGN_FLAG_$$numVertsTex;



implementation {:inline 1} _LOG_WRITE_$$numVertsTex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$numVertsTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$numVertsTex == _value then true else _WRITE_HAS_OCCURRED_$$numVertsTex);
    _WRITE_READ_BENIGN_FLAG_$$numVertsTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$numVertsTex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$numVertsTex);
    return;
}



procedure _CHECK_WRITE_$$numVertsTex(_P: bool, _offset: int, _value: int);
  requires {:source_name "numVertsTex"} {:array "$$numVertsTex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$numVertsTex != _value);
  requires {:source_name "numVertsTex"} {:array "$$numVertsTex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$numVertsTex != _value);
  requires {:source_name "numVertsTex"} {:array "$$numVertsTex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$numVertsTex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$numVertsTex;



implementation {:inline 1} _LOG_ATOMIC_$$numVertsTex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$numVertsTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$numVertsTex);
    return;
}



procedure _CHECK_ATOMIC_$$numVertsTex(_P: bool, _offset: int);
  requires {:source_name "numVertsTex"} {:array "$$numVertsTex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset);
  requires {:source_name "numVertsTex"} {:array "$$numVertsTex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$numVertsTex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$numVertsTex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$numVertsTex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$numVertsTex := (if _P && _WRITE_HAS_OCCURRED_$$numVertsTex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$numVertsTex);
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
