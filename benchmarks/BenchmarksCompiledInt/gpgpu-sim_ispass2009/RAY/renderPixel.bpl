type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "result"} {:global} $$result: [int]int;

axiom {:array_info "$$result"} {:global} {:elem_width 32} {:source_name "result"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$result: bool;

axiom {:array_info "$$dnode"} {:global} {:elem_width 8} {:source_name "dnode"} {:source_elem_width 320} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dnode: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dnode: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dnode: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i35"} {:elem_width 32} {:source_name "a.i35"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i36"} {:elem_width 32} {:source_name "b.i36"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i34"} {:elem_width 32} {:source_name "a.i34"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i33"} {:elem_width 32} {:source_name "a.i33"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i26"} {:elem_width 32} {:source_name "a.i.i26"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i27"} {:elem_width 32} {:source_name "b.i.i27"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$R.i28"} {:elem_width 32} {:source_name "R.i28"} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$C.i29"} {:elem_width 32} {:source_name "C.i29"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$N2.i"} {:elem_width 32} {:source_name "N2.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$N.i"} {:elem_width 32} {:source_name "N.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$11"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$L.i32"} {:elem_width 32} {:source_name "L.i32"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$12"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$13"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$14"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$15"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$16"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$17"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$18"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i25"} {:elem_width 32} {:source_name "a.i25"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$19"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$20"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i23"} {:elem_width 32} {:source_name "a.i23"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i24"} {:elem_width 32} {:source_name "b.i24"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$21"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$22"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i22"} {:elem_width 32} {:source_name "a.i22"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$23"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$24"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i19"} {:elem_width 32} {:source_name "a.i.i19"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i20"} {:elem_width 32} {:source_name "b.i.i20"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$R.i"} {:elem_width 32} {:source_name "R.i"} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$C.i21"} {:elem_width 32} {:source_name "C.i21"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$L.i"} {:elem_width 32} {:source_name "L.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$25"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$26"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$27"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$28"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$29"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$30"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$31"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$32"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i18"} {:elem_width 32} {:source_name "a.i18"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$33"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$34"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i16"} {:elem_width 32} {:source_name "a.i16"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i17"} {:elem_width 32} {:source_name "b.i17"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$35"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$36"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$37"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i14"} {:elem_width 32} {:source_name "a.i14"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i15"} {:elem_width 32} {:source_name "b.i15"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$38"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$39"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i13"} {:elem_width 32} {:source_name "b.i13"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$40"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$41"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i12"} {:elem_width 32} {:source_name "a.i12"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$42"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$43"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$P.i11"} {:elem_width 32} {:source_name "P.i11"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$44"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$45"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$46"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i10"} {:elem_width 32} {:source_name "a.i10"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$47"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$48"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i"} {:elem_width 32} {:source_name "a.i.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i"} {:elem_width 32} {:source_name "b.i.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$49"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$P.i"} {:elem_width 32} {:source_name "P.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$C.i"} {:elem_width 32} {:source_name "C.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$50"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$51"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$52"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$53"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$54"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$55"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i9"} {:elem_width 32} {:source_name "b.i9"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$56"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$57"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i8"} {:elem_width 32} {:source_name "a.i8"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$58"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$59"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$60"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i7"} {:elem_width 32} {:source_name "b.i7"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$61"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$62"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i6"} {:elem_width 32} {:source_name "b.i6"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$63"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$64"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i5"} {:elem_width 32} {:source_name "a.i5"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$65"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$66"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i3"} {:elem_width 32} {:source_name "a.i3"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i4"} {:elem_width 32} {:source_name "b.i4"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$67"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$68"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i2"} {:elem_width 32} {:source_name "a.i2"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$69"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i"} {:elem_width 32} {:source_name "b.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$70"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$71"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$72"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i1"} {:elem_width 32} {:source_name "a.i1"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$73"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$74"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i"} {:elem_width 32} {:source_name "a.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$75"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$76"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$rgba.i"} {:elem_width 32} {:source_name "rgba.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$node"} {:elem_width 8} {:source_name "node"} {:source_elem_width 320} {:source_dimensions "1"} true;

axiom {:array_info "$$Color"} {:elem_width 32} {:source_name "Color"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$M"} {:elem_width 32} {:source_name "M"} {:source_elem_width 384} {:source_dimensions "1"} true;

axiom {:array_info "$$R"} {:elem_width 32} {:source_name "R"} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$s"} {:elem_width 8} {:source_name "s"} {:source_elem_width 256} {:source_dimensions "1"} true;

axiom {:array_info "$$77"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$78"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$79"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$80"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$81"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$82"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$83"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$84"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$85"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$86"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$87"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$88"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$89"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$90"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$91"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$92"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$93"} {:elem_width 32} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$94"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$95"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$96"} {:elem_width 32} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$97"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$P"} {:elem_width 32} {:source_name "P"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$98"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$99"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$100"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$L"} {:elem_width 32} {:source_name "L"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$101"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$102"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$103"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$V"} {:elem_width 32} {:source_name "V"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$104"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$N"} {:elem_width 32} {:source_name "N"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$105"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$106"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$107"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$108"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$109"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$110"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$111"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$112"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$113"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$114"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$115"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$116"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$117"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$118"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$119"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$120"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$121"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$122"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$123"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$124"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$125"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$126"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:source_name "MView"} {:constant} $$MView$1: [int]int;

var {:source_name "MView"} {:constant} $$MView$2: [int]int;

axiom {:array_info "$$MView"} {:constant} {:elem_width 32} {:source_name "MView"} {:source_elem_width 384} {:source_dimensions "1"} true;

var {:source_name "T"} {:group_shared} $$_ZZ11renderPixelPjP4NodejjffE1T: [bv1][int]int;

axiom {:array_info "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:group_shared} {:elem_width 32} {:source_name "T"} {:source_elem_width 32} {:source_dimensions "4"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T: bool;

var {:source_name "Obj"} {:group_shared} $$_ZZ11renderPixelPjP4NodejjffE3Obj: [bv1][int]int;

axiom {:array_info "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:group_shared} {:elem_width 32} {:source_name "Obj"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj: bool;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FEQ32(int, int) : bool;

function FLT32(int, int) : bool;

function FLT64(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_CONV64(int) : int;

function FP32_TO_SI32(int) : int;

function FP32_TO_UI32(int) : int;

function FP64_CONV32(int) : int;

function FSQRT64(int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "renderPixel"} {:kernel} $_Z11renderPixelPjP4Nodejjff($imageW: int, $imageH: int, $pas: int, $df: int);
  requires {:sourceloc_num 0} {:thread 1} (if $imageW == 64 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $imageH == 64 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$result && !_WRITE_HAS_OCCURRED_$$result && !_ATOMIC_HAS_OCCURRED_$$result;
  requires !_READ_HAS_OCCURRED_$$dnode && !_WRITE_HAS_OCCURRED_$$dnode && !_ATOMIC_HAS_OCCURRED_$$dnode;
  requires !_READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && !_WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && !_ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
  requires !_READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && !_WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && !_ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
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
  modifies $$_ZZ11renderPixelPjP4NodejjffE1T, $$_ZZ11renderPixelPjP4NodejjffE3Obj, _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T, _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T, _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T, _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result, _WRITE_READ_BENIGN_FLAG_$$result, $$result, _TRACKING, _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj, _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj, _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj, _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;



implementation {:source_name "renderPixel"} {:kernel} $_Z11renderPixelPjP4Nodejjff($imageW: int, $imageH: int, $pas: int, $df: int)
{
  var $res.i30.1$1: int;
  var $res.i30.1$2: int;
  var $res.i30.0$1: int;
  var $res.i30.0$2: int;
  var $t.0$1: int;
  var $t.0$2: int;
  var $res.i.2$1: int;
  var $res.i.2$2: int;
  var $res.i.1$1: int;
  var $res.i.1$2: int;
  var $res.i.0$1: int;
  var $res.i.0$2: int;
  var $tmp.0$1: int;
  var $tmp.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $tmp.1$1: int;
  var $tmp.1$2: int;
  var v52$1: int;
  var v52$2: int;
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
  var v36$1: int;
  var v36$2: int;
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
  var v37$1: int;
  var v37$2: int;
  var v83$1: int;
  var v83$2: int;
  var v84$1: int;
  var v84$2: int;
  var v85$1: int;
  var v85$2: int;
  var v820$1: int;
  var v820$2: int;
  var v821$1: int;
  var v821$2: int;
  var v822$1: int;
  var v822$2: int;
  var v823$1: int;
  var v823$2: int;
  var v824$1: int;
  var v824$2: int;
  var v825$1: int;
  var v825$2: int;
  var v826$1: int;
  var v826$2: int;
  var v827$1: int;
  var v827$2: int;
  var v828$1: int;
  var v828$2: int;
  var v829$1: int;
  var v829$2: int;
  var v830$1: int;
  var v830$2: int;
  var v831$1: int;
  var v831$2: int;
  var v832$1: int;
  var v832$2: int;
  var v833$1: int;
  var v833$2: int;
  var v834$1: int;
  var v834$2: int;
  var v835$1: int;
  var v835$2: int;
  var v836$1: int;
  var v836$2: int;
  var v837$1: int;
  var v837$2: int;
  var v838$1: int;
  var v838$2: int;
  var v839$1: int;
  var v839$2: int;
  var v840$1: int;
  var v840$2: int;
  var v841$1: int;
  var v841$2: int;
  var v842$1: int;
  var v842$2: int;
  var v843$1: int;
  var v843$2: int;
  var v844$1: int;
  var v844$2: int;
  var v845$1: int;
  var v845$2: int;
  var v846$1: int;
  var v846$2: int;
  var v847$1: int;
  var v847$2: int;
  var v848$1: int;
  var v848$2: int;
  var v849$1: int;
  var v849$2: int;
  var v850$1: int;
  var v850$2: int;
  var v851$1: int;
  var v851$2: int;
  var v852$1: int;
  var v852$2: int;
  var v853$1: int;
  var v853$2: int;
  var v854$1: int;
  var v854$2: int;
  var v855$1: int;
  var v855$2: int;
  var v856$1: int;
  var v856$2: int;
  var v857$1: int;
  var v857$2: int;
  var v780$1: int;
  var v780$2: int;
  var v781$1: int;
  var v781$2: int;
  var v782$1: int;
  var v782$2: int;
  var v783$1: int;
  var v783$2: int;
  var v784$1: int;
  var v784$2: int;
  var v785$1: int;
  var v785$2: int;
  var v786$1: int;
  var v786$2: int;
  var v787$1: int;
  var v787$2: int;
  var v788$1: int;
  var v788$2: int;
  var v789$1: int;
  var v789$2: int;
  var v790$1: int;
  var v790$2: int;
  var v791$1: int;
  var v791$2: int;
  var v792$1: int;
  var v792$2: int;
  var v793$1: int;
  var v793$2: int;
  var v794$1: int;
  var v794$2: int;
  var v795$1: int;
  var v795$2: int;
  var v796$1: int;
  var v796$2: int;
  var v797$1: int;
  var v797$2: int;
  var v798$1: int;
  var v798$2: int;
  var v799$1: int;
  var v799$2: int;
  var v700$1: int;
  var v700$2: int;
  var v701$1: int;
  var v701$2: int;
  var v702$1: int;
  var v702$2: int;
  var v703$1: int;
  var v703$2: int;
  var v704$1: int;
  var v704$2: int;
  var v705$1: int;
  var v705$2: int;
  var v706$1: int;
  var v706$2: int;
  var v707$1: int;
  var v707$2: int;
  var v708$1: int;
  var v708$2: int;
  var v709$1: int;
  var v709$2: int;
  var v710$1: int;
  var v710$2: int;
  var v711$1: int;
  var v711$2: int;
  var v712$1: int;
  var v712$2: int;
  var v713$1: int;
  var v713$2: int;
  var v714$1: int;
  var v714$2: int;
  var v715$1: int;
  var v715$2: int;
  var v716$1: int;
  var v716$2: int;
  var v717$1: int;
  var v717$2: int;
  var v718$1: int;
  var v718$2: int;
  var v719$1: int;
  var v719$2: int;
  var v720$1: bool;
  var v720$2: bool;
  var v721$1: int;
  var v721$2: int;
  var v722$1: int;
  var v722$2: int;
  var v723$1: int;
  var v723$2: int;
  var v724$1: int;
  var v724$2: int;
  var v725$1: int;
  var v725$2: int;
  var v726$1: int;
  var v726$2: int;
  var v727$1: int;
  var v727$2: int;
  var v728$1: int;
  var v728$2: int;
  var v729$1: int;
  var v729$2: int;
  var v730$1: int;
  var v730$2: int;
  var v731$1: int;
  var v731$2: int;
  var v732$1: int;
  var v732$2: int;
  var v733$1: int;
  var v733$2: int;
  var v734$1: int;
  var v734$2: int;
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
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
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
  var v496$1: int;
  var v496$2: int;
  var v497$1: bool;
  var v497$2: bool;
  var v498$1: bool;
  var v498$2: bool;
  var v499$1: bool;
  var v499$2: bool;
  var v500$1: int;
  var v500$2: int;
  var v501$1: bool;
  var v501$2: bool;
  var v502$1: bool;
  var v502$2: bool;
  var v503$1: int;
  var v503$2: int;
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
  var v492$1: bool;
  var v492$2: bool;
  var v494$1: int;
  var v494$2: int;
  var v495$1: bool;
  var v495$2: bool;
  var v493$1: bool;
  var v493$2: bool;
  var v564$1: int;
  var v564$2: int;
  var v565$1: int;
  var v565$2: int;
  var v566$1: int;
  var v566$2: int;
  var v567$1: int;
  var v567$2: int;
  var v568$1: int;
  var v568$2: int;
  var v569$1: int;
  var v569$2: int;
  var v570$1: int;
  var v570$2: int;
  var v571$1: int;
  var v571$2: int;
  var v572$1: int;
  var v572$2: int;
  var v573$1: int;
  var v573$2: int;
  var v574$1: int;
  var v574$2: int;
  var v575$1: int;
  var v575$2: int;
  var v858$1: int;
  var v858$2: int;
  var v859$1: int;
  var v859$2: int;
  var v860$1: int;
  var v860$2: int;
  var v861$1: int;
  var v861$2: int;
  var v862$1: int;
  var v862$2: int;
  var v863$1: int;
  var v863$2: int;
  var v864$1: int;
  var v864$2: int;
  var v865$1: int;
  var v865$2: int;
  var v866$1: int;
  var v866$2: int;
  var v867$1: int;
  var v867$2: int;
  var v868$1: int;
  var v868$2: int;
  var v869$1: int;
  var v869$2: int;
  var v870$1: int;
  var v870$2: int;
  var v871$1: int;
  var v871$2: int;
  var v872$1: int;
  var v872$2: int;
  var v873$1: int;
  var v873$2: int;
  var v874$1: int;
  var v874$2: int;
  var v875$1: int;
  var v875$2: int;
  var v876$1: int;
  var v876$2: int;
  var v877$1: int;
  var v877$2: int;
  var v878$1: int;
  var v878$2: int;
  var v879$1: int;
  var v879$2: int;
  var v880$1: int;
  var v880$2: int;
  var v881$1: int;
  var v881$2: int;
  var v882$1: int;
  var v882$2: int;
  var v883$1: int;
  var v883$2: int;
  var v884$1: int;
  var v884$2: int;
  var v885$1: int;
  var v885$2: int;
  var v886$1: int;
  var v886$2: int;
  var v887$1: int;
  var v887$2: int;
  var v888$1: int;
  var v888$2: int;
  var v889$1: int;
  var v889$2: int;
  var v890$1: int;
  var v890$2: int;
  var v453$1: int;
  var v453$2: int;
  var v454$1: int;
  var v454$2: int;
  var v456$1: int;
  var v456$2: int;
  var v457$1: int;
  var v457$2: int;
  var v458$1: int;
  var v458$2: int;
  var v546$1: int;
  var v546$2: int;
  var v547$1: int;
  var v547$2: int;
  var v548$1: int;
  var v548$2: int;
  var v549$1: int;
  var v549$2: int;
  var v550$1: int;
  var v550$2: int;
  var v551$1: int;
  var v551$2: int;
  var v552$1: int;
  var v552$2: int;
  var v553$1: int;
  var v553$2: int;
  var v554$1: int;
  var v554$2: int;
  var v555$1: int;
  var v555$2: int;
  var v556$1: int;
  var v556$2: int;
  var v557$1: int;
  var v557$2: int;
  var v558$1: int;
  var v558$2: int;
  var v559$1: int;
  var v559$2: int;
  var v560$1: int;
  var v560$2: int;
  var v597$1: int;
  var v597$2: int;
  var v561$1: int;
  var v561$2: int;
  var v562$1: int;
  var v562$2: int;
  var v891$1: int;
  var v891$2: int;
  var v892$1: int;
  var v892$2: int;
  var v893$1: int;
  var v893$2: int;
  var v894$1: int;
  var v894$2: int;
  var v895$1: int;
  var v895$2: int;
  var v896$1: int;
  var v896$2: int;
  var v897$1: int;
  var v897$2: int;
  var v898$1: int;
  var v898$2: int;
  var v899$1: int;
  var v899$2: int;
  var v900$1: int;
  var v900$2: int;
  var v901$1: int;
  var v901$2: int;
  var v902$1: int;
  var v902$2: int;
  var v903$1: int;
  var v903$2: int;
  var v904$1: int;
  var v904$2: int;
  var v905$1: int;
  var v905$2: int;
  var v906$1: int;
  var v906$2: int;
  var v907$1: int;
  var v907$2: int;
  var v908$1: int;
  var v908$2: int;
  var v909$1: int;
  var v909$2: int;
  var v910$1: int;
  var v910$2: int;
  var v911$1: int;
  var v911$2: int;
  var v912$1: int;
  var v912$2: int;
  var v913$1: int;
  var v913$2: int;
  var v914$1: int;
  var v914$2: int;
  var v915$1: int;
  var v915$2: int;
  var v916$1: int;
  var v916$2: int;
  var v917$1: int;
  var v917$2: int;
  var v918$1: int;
  var v918$2: int;
  var v919$1: int;
  var v919$2: int;
  var v920$1: int;
  var v920$2: int;
  var v921$1: int;
  var v921$2: int;
  var v922$1: int;
  var v922$2: int;
  var v923$1: int;
  var v923$2: int;
  var v924$1: int;
  var v924$2: int;
  var v925$1: int;
  var v925$2: int;
  var v926$1: int;
  var v926$2: int;
  var v927$1: int;
  var v927$2: int;
  var v928$1: int;
  var v928$2: int;
  var v929$1: int;
  var v929$2: int;
  var v930$1: int;
  var v930$2: int;
  var v931$1: int;
  var v931$2: int;
  var v932$1: int;
  var v932$2: int;
  var v933$1: int;
  var v933$2: int;
  var v934$1: int;
  var v934$2: int;
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
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
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
  var v92$1: int;
  var v92$2: int;
  var v93$1: int;
  var v93$2: int;
  var v94$1: int;
  var v94$2: int;
  var v134$1: int;
  var v134$2: int;
  var v135$1: int;
  var v135$2: int;
  var v136$1: int;
  var v136$2: int;
  var v137$1: int;
  var v137$2: int;
  var v688$1: int;
  var v688$2: int;
  var v689$1: int;
  var v689$2: int;
  var v690$1: int;
  var v690$2: int;
  var v691$1: int;
  var v691$2: int;
  var v692$1: int;
  var v692$2: int;
  var v693$1: int;
  var v693$2: int;
  var v694$1: int;
  var v694$2: int;
  var v695$1: int;
  var v695$2: int;
  var v696$1: int;
  var v696$2: int;
  var v697$1: int;
  var v697$2: int;
  var v698$1: int;
  var v698$2: int;
  var v699$1: int;
  var v699$2: int;
  var v455$1: int;
  var v455$2: int;
  var v438$1: int;
  var v438$2: int;
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
  var v124$1: int;
  var v124$2: int;
  var v125$1: int;
  var v125$2: int;
  var v126$1: int;
  var v126$2: int;
  var v127$1: int;
  var v127$2: int;
  var v0$1: int;
  var v0$2: int;
  var v128$1: int;
  var v128$2: int;
  var v129$1: int;
  var v129$2: int;
  var v130$1: int;
  var v130$2: int;
  var v131$1: int;
  var v131$2: int;
  var v201$1: int;
  var v201$2: int;
  var v202$1: int;
  var v202$2: int;
  var v132$1: int;
  var v132$2: int;
  var v133$1: int;
  var v133$2: int;
  var v610$1: int;
  var v610$2: int;
  var v611$1: int;
  var v611$2: int;
  var v612$1: int;
  var v612$2: int;
  var v613$1: int;
  var v613$2: int;
  var v614$1: int;
  var v614$2: int;
  var v615$1: int;
  var v615$2: int;
  var v616$1: int;
  var v616$2: int;
  var v617$1: int;
  var v617$2: int;
  var v618$1: int;
  var v618$2: int;
  var v619$1: int;
  var v619$2: int;
  var v620$1: int;
  var v620$2: int;
  var v621$1: int;
  var v621$2: int;
  var v622$1: int;
  var v622$2: int;
  var v623$1: int;
  var v623$2: int;
  var v624$1: int;
  var v624$2: int;
  var v625$1: int;
  var v625$2: int;
  var v626$1: int;
  var v626$2: int;
  var v627$1: int;
  var v627$2: int;
  var v628$1: int;
  var v628$2: int;
  var v629$1: bool;
  var v629$2: bool;
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
  var v53$1: int;
  var v53$2: int;
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
  var v60$1: bool;
  var v60$2: bool;
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
  var v735$1: int;
  var v735$2: int;
  var v736$1: int;
  var v736$2: int;
  var v737$1: int;
  var v737$2: int;
  var v738$1: int;
  var v738$2: int;
  var v739$1: int;
  var v739$2: int;
  var v740$1: int;
  var v740$2: int;
  var v741$1: int;
  var v741$2: int;
  var v742$1: int;
  var v742$2: int;
  var v743$1: int;
  var v743$2: int;
  var v744$1: int;
  var v744$2: int;
  var v745$1: int;
  var v745$2: int;
  var v767$1: int;
  var v767$2: int;
  var v768$1: int;
  var v768$2: int;
  var v746$1: int;
  var v746$2: int;
  var v747$1: int;
  var v747$2: int;
  var v748$1: int;
  var v748$2: int;
  var v749$1: int;
  var v749$2: int;
  var v750$1: int;
  var v750$2: int;
  var v751$1: int;
  var v751$2: int;
  var v752$1: int;
  var v752$2: int;
  var v208$1: int;
  var v208$2: int;
  var v209$1: int;
  var v209$2: int;
  var v594$1: int;
  var v594$2: int;
  var v595$1: int;
  var v595$2: int;
  var v596$1: int;
  var v596$2: int;
  var v598$1: int;
  var v598$2: int;
  var v599$1: int;
  var v599$2: int;
  var v600$1: int;
  var v600$2: int;
  var v601$1: int;
  var v601$2: int;
  var v602$1: int;
  var v602$2: int;
  var v603$1: int;
  var v603$2: int;
  var v604$1: int;
  var v604$2: int;
  var v605$1: int;
  var v605$2: int;
  var v606$1: int;
  var v606$2: int;
  var v607$1: int;
  var v607$2: int;
  var v608$1: int;
  var v608$2: int;
  var v609$1: int;
  var v609$2: int;
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
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
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
  var v197$1: int;
  var v197$2: int;
  var v198$1: int;
  var v198$2: int;
  var v199$1: int;
  var v199$2: int;
  var v200$1: int;
  var v200$2: int;
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
  var v336$1: int;
  var v336$2: int;
  var v337$1: int;
  var v337$2: int;
  var v338$1: int;
  var v338$2: int;
  var v109$1: int;
  var v109$2: int;
  var v110$1: int;
  var v110$2: int;
  var v111$1: int;
  var v111$2: int;
  var v630$1: int;
  var v630$2: int;
  var v631$1: int;
  var v631$2: int;
  var v632$1: int;
  var v632$2: int;
  var v633$1: int;
  var v633$2: int;
  var v634$1: int;
  var v634$2: int;
  var v635$1: int;
  var v635$2: int;
  var v636$1: int;
  var v636$2: int;
  var v637$1: int;
  var v637$2: int;
  var v638$1: int;
  var v638$2: int;
  var v639$1: int;
  var v639$2: int;
  var v640$1: int;
  var v640$2: int;
  var v641$1: int;
  var v641$2: int;
  var v642$1: int;
  var v642$2: int;
  var v643$1: int;
  var v643$2: int;
  var v644$1: int;
  var v644$2: int;
  var v645$1: int;
  var v645$2: int;
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
  var v357$1: bool;
  var v357$2: bool;
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
  var v504$1: bool;
  var v504$2: bool;
  var v505$1: int;
  var v505$2: int;
  var v506$1: int;
  var v506$2: int;
  var v507$1: bool;
  var v507$2: bool;
  var v508$1: bool;
  var v508$2: bool;
  var v527$1: int;
  var v527$2: int;
  var v528$1: int;
  var v528$2: int;
  var v529$1: int;
  var v529$2: int;
  var v530$1: int;
  var v530$2: int;
  var v531$1: int;
  var v531$2: int;
  var v532$1: int;
  var v532$2: int;
  var v533$1: int;
  var v533$2: int;
  var v534$1: int;
  var v534$2: int;
  var v535$1: int;
  var v535$2: int;
  var v536$1: int;
  var v536$2: int;
  var v537$1: int;
  var v537$2: int;
  var v538$1: int;
  var v538$2: int;
  var v539$1: int;
  var v539$2: int;
  var v540$1: int;
  var v540$2: int;
  var v563$1: int;
  var v563$2: int;
  var v541$1: int;
  var v541$2: int;
  var v542$1: int;
  var v542$2: int;
  var v543$1: int;
  var v543$2: int;
  var v544$1: int;
  var v544$2: int;
  var v545$1: int;
  var v545$2: int;
  var v509$1: int;
  var v509$2: int;
  var v510$1: int;
  var v510$2: int;
  var v511$1: int;
  var v511$2: int;
  var v512$1: int;
  var v512$2: int;
  var v513$1: int;
  var v513$2: int;
  var v514$1: int;
  var v514$2: int;
  var v515$1: int;
  var v515$2: int;
  var v516$1: int;
  var v516$2: int;
  var v526$1: int;
  var v526$2: int;
  var v517$1: int;
  var v517$2: int;
  var v518$1: int;
  var v518$2: int;
  var v519$1: int;
  var v519$2: int;
  var v520$1: int;
  var v520$2: int;
  var v521$1: int;
  var v521$2: int;
  var v522$1: int;
  var v522$2: int;
  var v523$1: int;
  var v523$2: int;
  var v524$1: int;
  var v524$2: int;
  var v525$1: int;
  var v525$2: int;
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
  var v275$1: bool;
  var v275$2: bool;
  var v280$1: int;
  var v280$2: int;
  var v281$1: int;
  var v281$2: int;
  var v282$1: int;
  var v282$2: int;
  var v283$1: int;
  var v283$2: int;
  var v292$1: int;
  var v292$2: int;
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
  var v307$1: int;
  var v307$2: int;
  var v308$1: int;
  var v308$2: int;
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
  var v276$1: int;
  var v276$2: int;
  var v277$1: int;
  var v277$2: int;
  var v278$1: int;
  var v278$2: int;
  var v279$1: int;
  var v279$2: int;
  var v399$1: bool;
  var v399$2: bool;
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
  var v417$1: int;
  var v417$2: int;
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
  var v418$1: int;
  var v418$2: int;
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
  var v435$1: int;
  var v435$2: int;
  var v436$1: int;
  var v436$2: int;
  var v437$1: int;
  var v437$2: int;
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
  var v646$1: int;
  var v646$2: int;
  var v647$1: int;
  var v647$2: int;
  var v648$1: int;
  var v648$2: int;
  var v649$1: int;
  var v649$2: int;
  var v650$1: int;
  var v650$2: int;
  var v651$1: int;
  var v651$2: int;
  var v652$1: int;
  var v652$2: int;
  var v653$1: int;
  var v653$2: int;
  var v661$1: int;
  var v661$2: int;
  var v654$1: int;
  var v654$2: int;
  var v655$1: int;
  var v655$2: int;
  var v656$1: int;
  var v656$2: int;
  var v657$1: int;
  var v657$2: int;
  var v658$1: int;
  var v658$2: int;
  var v659$1: int;
  var v659$2: int;
  var v660$1: int;
  var v660$2: int;
  var v662$1: int;
  var v662$2: int;
  var v663$1: int;
  var v663$2: int;
  var v664$1: int;
  var v664$2: int;
  var v665$1: int;
  var v665$2: int;
  var v666$1: int;
  var v666$2: int;
  var v667$1: int;
  var v667$2: int;
  var v668$1: int;
  var v668$2: int;
  var v669$1: int;
  var v669$2: int;
  var v670$1: int;
  var v670$2: int;
  var v671$1: int;
  var v671$2: int;
  var v672$1: int;
  var v672$2: int;
  var v673$1: int;
  var v673$2: int;
  var v674$1: int;
  var v674$2: int;
  var v675$1: int;
  var v675$2: int;
  var v676$1: int;
  var v676$2: int;
  var v677$1: int;
  var v677$2: int;
  var v678$1: int;
  var v678$2: int;
  var v679$1: int;
  var v679$2: int;
  var v680$1: int;
  var v680$2: int;
  var v681$1: int;
  var v681$2: int;
  var v682$1: int;
  var v682$2: int;
  var v683$1: int;
  var v683$2: int;
  var v684$1: int;
  var v684$2: int;
  var v685$1: int;
  var v685$2: int;
  var v686$1: int;
  var v686$2: int;
  var v687$1: int;
  var v687$2: int;
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
  var v753$1: int;
  var v753$2: int;
  var v754$1: int;
  var v754$2: int;
  var v755$1: int;
  var v755$2: int;
  var v756$1: int;
  var v756$2: int;
  var v757$1: int;
  var v757$2: int;
  var v758$1: int;
  var v758$2: int;
  var v759$1: int;
  var v759$2: int;
  var v760$1: int;
  var v760$2: int;
  var v761$1: int;
  var v761$2: int;
  var v762$1: int;
  var v762$2: int;
  var v763$1: int;
  var v763$2: int;
  var v764$1: int;
  var v764$2: int;
  var v765$1: int;
  var v765$2: int;
  var v766$1: int;
  var v766$2: int;
  var v769$1: int;
  var v769$2: int;
  var v770$1: int;
  var v770$2: int;
  var v771$1: int;
  var v771$2: int;
  var v772$1: int;
  var v772$2: int;
  var v773$1: int;
  var v773$2: int;
  var v774$1: int;
  var v774$2: int;
  var v775$1: int;
  var v775$2: int;
  var v776$1: int;
  var v776$2: int;
  var v777$1: int;
  var v777$2: int;
  var v778$1: int;
  var v778$2: int;
  var v779$1: int;
  var v779$2: int;
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
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v576$1: int;
  var v576$2: int;
  var v577$1: int;
  var v577$2: int;
  var v578$1: int;
  var v578$2: int;
  var v579$1: int;
  var v579$2: int;
  var v580$1: int;
  var v580$2: int;
  var v581$1: int;
  var v581$2: int;
  var v582$1: int;
  var v582$2: int;
  var v583$1: int;
  var v583$2: int;
  var v584$1: int;
  var v584$2: int;
  var v585$1: int;
  var v585$2: int;
  var v586$1: int;
  var v586$2: int;
  var v587$1: int;
  var v587$2: int;
  var v588$1: int;
  var v588$2: int;
  var v589$1: int;
  var v589$2: int;
  var v590$1: int;
  var v590$2: int;
  var v591$1: int;
  var v591$2: int;
  var v592$1: int;
  var v592$2: int;
  var v593$1: int;
  var v593$2: int;
  var v800$1: int;
  var v800$2: int;
  var v801$1: int;
  var v801$2: int;
  var v802$1: int;
  var v802$2: int;
  var v803$1: int;
  var v803$2: int;
  var v804$1: int;
  var v804$2: int;
  var v805$1: int;
  var v805$2: int;
  var v806$1: int;
  var v806$2: int;
  var v807$1: int;
  var v807$2: int;
  var v808$1: int;
  var v808$2: int;
  var v809$1: int;
  var v809$2: int;
  var v810$1: int;
  var v810$2: int;
  var v811$1: int;
  var v811$2: int;
  var v812$1: int;
  var v812$2: int;
  var v813$1: int;
  var v813$2: int;
  var v814$1: int;
  var v814$2: int;
  var v815$1: int;
  var v815$2: int;
  var v816$1: int;
  var v816$2: int;
  var v817$1: int;
  var v817$2: int;
  var v818$1: int;
  var v818$2: int;
  var v819$1: int;
  var v819$2: int;
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
  var v334$1: int;
  var v334$2: int;
  var v335$1: int;
  var v335$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
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
  var v935$1: int;
  var v935$2: int;
  var v936$1: int;
  var v936$2: int;
  var v937$1: int;
  var v937$2: int;
  var v938$1: int;
  var v938$2: int;
  var v939$1: int;
  var v939$2: int;
  var v940$1: int;
  var v940$2: int;
  var v941$1: int;
  var v941$2: int;
  var v942$1: int;
  var v942$2: int;
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
  var p17$1: bool;
  var p17$2: bool;
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var p21$1: bool;
  var p21$2: bool;
  var p22$1: bool;
  var p22$2: bool;
  var p23$1: bool;
  var p23$2: bool;
  var p24$1: bool;
  var p24$2: bool;
  var p25$1: bool;
  var p25$2: bool;
  var p26$1: bool;
  var p26$2: bool;
  var p27$1: bool;
  var p27$2: bool;
  var p28$1: bool;
  var p28$2: bool;
  var p29$1: bool;
  var p29$2: bool;
  var p30$1: bool;
  var p30$2: bool;
  var p31$1: bool;
  var p31$2: bool;
  var p32$1: bool;
  var p32$2: bool;
  var p33$1: bool;
  var p33$2: bool;
  var p34$1: bool;
  var p34$2: bool;
  var p35$1: bool;
  var p35$2: bool;
  var p36$1: bool;
  var p36$2: bool;
  var p37$1: bool;
  var p37$2: bool;
  var p38$1: bool;
  var p38$2: bool;
  var p39$1: bool;
  var p39$2: bool;
  var p40$1: bool;
  var p40$2: bool;
  var p41$1: bool;
  var p41$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T$ghost$$24: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj$ghost$$24: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(group_id_x$1, BV32_MUL(group_id_y$1, $imageW));
    v0$2 := BV32_ADD(group_id_x$2, BV32_MUL(group_id_y$2, $imageW));
    $$76$0$1 := 0;
    $$76$0$2 := 0;
    $$76$1$1 := 0;
    $$76$1$2 := 0;
    $$76$2$1 := 0;
    $$76$2$2 := 0;
    $$76$3$1 := 1065353216;
    $$76$3$2 := 1065353216;
    v1$1 := $$76$0$1;
    v1$2 := $$76$0$2;
    v2$1 := $$76$1$1;
    v2$2 := $$76$1$2;
    v3$1 := $$76$2$1;
    v3$2 := $$76$2$2;
    v4$1 := $$76$3$1;
    v4$2 := $$76$3$2;
    $$Color$0$1 := v1$1;
    $$Color$0$2 := v1$2;
    $$Color$1$1 := v2$1;
    $$Color$1$2 := v2$2;
    $$Color$2$1 := v3$1;
    $$Color$2$2 := v3$2;
    $$Color$3$1 := v4$1;
    $$Color$3$2 := v4$2;
    v5$1 := $$MView$1[0];
    v5$2 := $$MView$2[0];
    $$M$0$1 := v5$1;
    $$M$0$2 := v5$2;
    v6$1 := $$MView$1[1];
    v6$2 := $$MView$2[1];
    $$M$1$1 := v6$1;
    $$M$1$2 := v6$2;
    v7$1 := $$MView$1[2];
    v7$2 := $$MView$2[2];
    $$M$2$1 := v7$1;
    $$M$2$2 := v7$2;
    v8$1 := $$MView$1[3];
    v8$2 := $$MView$2[3];
    $$M$3$1 := v8$1;
    $$M$3$2 := v8$2;
    v9$1 := $$MView$1[4];
    v9$2 := $$MView$2[4];
    $$M$4$1 := v9$1;
    $$M$4$2 := v9$2;
    v10$1 := $$MView$1[5];
    v10$2 := $$MView$2[5];
    $$M$5$1 := v10$1;
    $$M$5$2 := v10$2;
    v11$1 := $$MView$1[6];
    v11$2 := $$MView$2[6];
    $$M$6$1 := v11$1;
    $$M$6$2 := v11$2;
    v12$1 := $$MView$1[7];
    v12$2 := $$MView$2[7];
    $$M$7$1 := v12$1;
    $$M$7$2 := v12$2;
    v13$1 := $$MView$1[8];
    v13$2 := $$MView$2[8];
    $$M$8$1 := v13$1;
    $$M$8$2 := v13$2;
    v14$1 := $$MView$1[9];
    v14$2 := $$MView$2[9];
    $$M$9$1 := v14$1;
    $$M$9$2 := v14$2;
    v15$1 := $$MView$1[10];
    v15$2 := $$MView$2[10];
    $$M$10$1 := v15$1;
    $$M$10$2 := v15$2;
    v16$1 := $$MView$1[11];
    v16$2 := $$MView$2[11];
    $$M$11$1 := v16$1;
    $$M$11$2 := v16$2;
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T(true, local_id_x$1, 1176256512, $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T(true, local_id_x$2, 1176256512);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T"} true;
    $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][local_id_x$1] := 1176256512;
    $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := 1176256512;
    v17$1 := BV32_ULT(group_id_x$1, $imageW);
    v17$2 := BV32_ULT(group_id_x$2, $imageW);
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
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    p32$1 := false;
    p32$2 := false;
    p33$1 := false;
    p33$2 := false;
    p34$1 := false;
    p34$2 := false;
    p35$1 := false;
    p35$2 := false;
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p39$1 := false;
    p39$2 := false;
    p40$1 := false;
    p40$2 := false;
    p41$1 := false;
    p41$2 := false;
    p0$1 := (if v17$1 then v17$1 else p0$1);
    p0$2 := (if v17$2 then v17$2 else p0$2);
    v18$1 := (if p0$1 then BV32_ULT(group_id_y$1, $imageH) else v18$1);
    v18$2 := (if p0$2 then BV32_ULT(group_id_y$2, $imageH) else v18$2);
    p1$1 := (if p0$1 && v18$1 then v18$1 else p1$1);
    p1$2 := (if p0$2 && v18$2 then v18$2 else p1$2);
    v19$1 := (if p1$1 then BV32_ULT(local_id_x$1, 4) else v19$1);
    v19$2 := (if p1$2 then BV32_ULT(local_id_x$2, 4) else v19$2);
    p2$1 := (if p1$1 && v19$1 then v19$1 else p2$1);
    p2$2 := (if p1$2 && v19$2 then v19$2 else p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p2$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p2$2 then _HAVOC_int$2 else v20$2);
    $$node$0$1 := (if p2$1 then v20$1 else $$node$0$1);
    $$node$0$2 := (if p2$2 then v20$2 else $$node$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v21$1 := (if p2$1 then _HAVOC_int$1 else v21$1);
    v21$2 := (if p2$2 then _HAVOC_int$2 else v21$2);
    $$node$1$1 := (if p2$1 then v21$1 else $$node$1$1);
    $$node$1$2 := (if p2$2 then v21$2 else $$node$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v22$1 := (if p2$1 then _HAVOC_int$1 else v22$1);
    v22$2 := (if p2$2 then _HAVOC_int$2 else v22$2);
    $$node$2$1 := (if p2$1 then v22$1 else $$node$2$1);
    $$node$2$2 := (if p2$2 then v22$2 else $$node$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v23$1 := (if p2$1 then _HAVOC_int$1 else v23$1);
    v23$2 := (if p2$2 then _HAVOC_int$2 else v23$2);
    $$node$3$1 := (if p2$1 then v23$1 else $$node$3$1);
    $$node$3$2 := (if p2$2 then v23$2 else $$node$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v24$1 := (if p2$1 then _HAVOC_int$1 else v24$1);
    v24$2 := (if p2$2 then _HAVOC_int$2 else v24$2);
    $$node$4$1 := (if p2$1 then v24$1 else $$node$4$1);
    $$node$4$2 := (if p2$2 then v24$2 else $$node$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v25$1 := (if p2$1 then _HAVOC_int$1 else v25$1);
    v25$2 := (if p2$2 then _HAVOC_int$2 else v25$2);
    $$node$5$1 := (if p2$1 then v25$1 else $$node$5$1);
    $$node$5$2 := (if p2$2 then v25$2 else $$node$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v26$1 := (if p2$1 then _HAVOC_int$1 else v26$1);
    v26$2 := (if p2$2 then _HAVOC_int$2 else v26$2);
    $$node$6$1 := (if p2$1 then v26$1 else $$node$6$1);
    $$node$6$2 := (if p2$2 then v26$2 else $$node$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v27$1 := (if p2$1 then _HAVOC_int$1 else v27$1);
    v27$2 := (if p2$2 then _HAVOC_int$2 else v27$2);
    $$node$7$1 := (if p2$1 then v27$1 else $$node$7$1);
    $$node$7$2 := (if p2$2 then v27$2 else $$node$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v28$1 := (if p2$1 then _HAVOC_int$1 else v28$1);
    v28$2 := (if p2$2 then _HAVOC_int$2 else v28$2);
    $$node$8$1 := (if p2$1 then v28$1 else $$node$8$1);
    $$node$8$2 := (if p2$2 then v28$2 else $$node$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v29$1 := (if p2$1 then _HAVOC_int$1 else v29$1);
    v29$2 := (if p2$2 then _HAVOC_int$2 else v29$2);
    $$node$9$1 := (if p2$1 then v29$1 else $$node$9$1);
    $$node$9$2 := (if p2$2 then v29$2 else $$node$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v30$1 := (if p2$1 then _HAVOC_int$1 else v30$1);
    v30$2 := (if p2$2 then _HAVOC_int$2 else v30$2);
    $$node$10$1 := (if p2$1 then v30$1 else $$node$10$1);
    $$node$10$2 := (if p2$2 then v30$2 else $$node$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v31$1 := (if p2$1 then _HAVOC_int$1 else v31$1);
    v31$2 := (if p2$2 then _HAVOC_int$2 else v31$2);
    $$node$11$1 := (if p2$1 then v31$1 else $$node$11$1);
    $$node$11$2 := (if p2$2 then v31$2 else $$node$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p2$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p2$2 then _HAVOC_int$2 else v32$2);
    $$node$12$1 := (if p2$1 then v32$1 else $$node$12$1);
    $$node$12$2 := (if p2$2 then v32$2 else $$node$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v33$1 := (if p2$1 then _HAVOC_int$1 else v33$1);
    v33$2 := (if p2$2 then _HAVOC_int$2 else v33$2);
    $$node$13$1 := (if p2$1 then v33$1 else $$node$13$1);
    $$node$13$2 := (if p2$2 then v33$2 else $$node$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p2$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p2$2 then _HAVOC_int$2 else v34$2);
    $$node$14$1 := (if p2$1 then v34$1 else $$node$14$1);
    $$node$14$2 := (if p2$2 then v34$2 else $$node$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p2$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p2$2 then _HAVOC_int$2 else v35$2);
    $$node$15$1 := (if p2$1 then v35$1 else $$node$15$1);
    $$node$15$2 := (if p2$2 then v35$2 else $$node$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p2$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p2$2 then _HAVOC_int$2 else v36$2);
    $$node$16$1 := (if p2$1 then v36$1 else $$node$16$1);
    $$node$16$2 := (if p2$2 then v36$2 else $$node$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v37$1 := (if p2$1 then _HAVOC_int$1 else v37$1);
    v37$2 := (if p2$2 then _HAVOC_int$2 else v37$2);
    $$node$17$1 := (if p2$1 then v37$1 else $$node$17$1);
    $$node$17$2 := (if p2$2 then v37$2 else $$node$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v38$1 := (if p2$1 then _HAVOC_int$1 else v38$1);
    v38$2 := (if p2$2 then _HAVOC_int$2 else v38$2);
    $$node$18$1 := (if p2$1 then v38$1 else $$node$18$1);
    $$node$18$2 := (if p2$2 then v38$2 else $$node$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p2$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p2$2 then _HAVOC_int$2 else v39$2);
    $$node$19$1 := (if p2$1 then v39$1 else $$node$19$1);
    $$node$19$2 := (if p2$2 then v39$2 else $$node$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p2$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p2$2 then _HAVOC_int$2 else v40$2);
    $$node$20$1 := (if p2$1 then v40$1 else $$node$20$1);
    $$node$20$2 := (if p2$2 then v40$2 else $$node$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v41$1 := (if p2$1 then _HAVOC_int$1 else v41$1);
    v41$2 := (if p2$2 then _HAVOC_int$2 else v41$2);
    $$node$21$1 := (if p2$1 then v41$1 else $$node$21$1);
    $$node$21$2 := (if p2$2 then v41$2 else $$node$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v42$1 := (if p2$1 then _HAVOC_int$1 else v42$1);
    v42$2 := (if p2$2 then _HAVOC_int$2 else v42$2);
    $$node$22$1 := (if p2$1 then v42$1 else $$node$22$1);
    $$node$22$2 := (if p2$2 then v42$2 else $$node$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v43$1 := (if p2$1 then _HAVOC_int$1 else v43$1);
    v43$2 := (if p2$2 then _HAVOC_int$2 else v43$2);
    $$node$23$1 := (if p2$1 then v43$1 else $$node$23$1);
    $$node$23$2 := (if p2$2 then v43$2 else $$node$23$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v44$1 := (if p2$1 then _HAVOC_int$1 else v44$1);
    v44$2 := (if p2$2 then _HAVOC_int$2 else v44$2);
    $$node$24$1 := (if p2$1 then v44$1 else $$node$24$1);
    $$node$24$2 := (if p2$2 then v44$2 else $$node$24$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v45$1 := (if p2$1 then _HAVOC_int$1 else v45$1);
    v45$2 := (if p2$2 then _HAVOC_int$2 else v45$2);
    $$node$25$1 := (if p2$1 then v45$1 else $$node$25$1);
    $$node$25$2 := (if p2$2 then v45$2 else $$node$25$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v46$1 := (if p2$1 then _HAVOC_int$1 else v46$1);
    v46$2 := (if p2$2 then _HAVOC_int$2 else v46$2);
    $$node$26$1 := (if p2$1 then v46$1 else $$node$26$1);
    $$node$26$2 := (if p2$2 then v46$2 else $$node$26$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v47$1 := (if p2$1 then _HAVOC_int$1 else v47$1);
    v47$2 := (if p2$2 then _HAVOC_int$2 else v47$2);
    $$node$27$1 := (if p2$1 then v47$1 else $$node$27$1);
    $$node$27$2 := (if p2$2 then v47$2 else $$node$27$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v48$1 := (if p2$1 then _HAVOC_int$1 else v48$1);
    v48$2 := (if p2$2 then _HAVOC_int$2 else v48$2);
    $$node$28$1 := (if p2$1 then v48$1 else $$node$28$1);
    $$node$28$2 := (if p2$2 then v48$2 else $$node$28$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v49$1 := (if p2$1 then _HAVOC_int$1 else v49$1);
    v49$2 := (if p2$2 then _HAVOC_int$2 else v49$2);
    $$node$29$1 := (if p2$1 then v49$1 else $$node$29$1);
    $$node$29$2 := (if p2$2 then v49$2 else $$node$29$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v50$1 := (if p2$1 then _HAVOC_int$1 else v50$1);
    v50$2 := (if p2$2 then _HAVOC_int$2 else v50$2);
    $$node$30$1 := (if p2$1 then v50$1 else $$node$30$1);
    $$node$30$2 := (if p2$2 then v50$2 else $$node$30$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v51$1 := (if p2$1 then _HAVOC_int$1 else v51$1);
    v51$2 := (if p2$2 then _HAVOC_int$2 else v51$2);
    $$node$31$1 := (if p2$1 then v51$1 else $$node$31$1);
    $$node$31$2 := (if p2$2 then v51$2 else $$node$31$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v52$1 := (if p2$1 then _HAVOC_int$1 else v52$1);
    v52$2 := (if p2$2 then _HAVOC_int$2 else v52$2);
    $$node$32$1 := (if p2$1 then v52$1 else $$node$32$1);
    $$node$32$2 := (if p2$2 then v52$2 else $$node$32$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v53$1 := (if p2$1 then _HAVOC_int$1 else v53$1);
    v53$2 := (if p2$2 then _HAVOC_int$2 else v53$2);
    $$node$33$1 := (if p2$1 then v53$1 else $$node$33$1);
    $$node$33$2 := (if p2$2 then v53$2 else $$node$33$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v54$1 := (if p2$1 then _HAVOC_int$1 else v54$1);
    v54$2 := (if p2$2 then _HAVOC_int$2 else v54$2);
    $$node$34$1 := (if p2$1 then v54$1 else $$node$34$1);
    $$node$34$2 := (if p2$2 then v54$2 else $$node$34$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v55$1 := (if p2$1 then _HAVOC_int$1 else v55$1);
    v55$2 := (if p2$2 then _HAVOC_int$2 else v55$2);
    $$node$35$1 := (if p2$1 then v55$1 else $$node$35$1);
    $$node$35$2 := (if p2$2 then v55$2 else $$node$35$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v56$1 := (if p2$1 then _HAVOC_int$1 else v56$1);
    v56$2 := (if p2$2 then _HAVOC_int$2 else v56$2);
    $$node$36$1 := (if p2$1 then v56$1 else $$node$36$1);
    $$node$36$2 := (if p2$2 then v56$2 else $$node$36$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v57$1 := (if p2$1 then _HAVOC_int$1 else v57$1);
    v57$2 := (if p2$2 then _HAVOC_int$2 else v57$2);
    $$node$37$1 := (if p2$1 then v57$1 else $$node$37$1);
    $$node$37$2 := (if p2$2 then v57$2 else $$node$37$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v58$1 := (if p2$1 then _HAVOC_int$1 else v58$1);
    v58$2 := (if p2$2 then _HAVOC_int$2 else v58$2);
    $$node$38$1 := (if p2$1 then v58$1 else $$node$38$1);
    $$node$38$2 := (if p2$2 then v58$2 else $$node$38$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v59$1 := (if p2$1 then _HAVOC_int$1 else v59$1);
    v59$2 := (if p2$2 then _HAVOC_int$2 else v59$2);
    $$node$39$1 := (if p2$1 then v59$1 else $$node$39$1);
    $$node$39$2 := (if p2$2 then v59$2 else $$node$39$2);
    v60$1 := (if p2$1 then local_id_x$1 == 0 else v60$1);
    v60$2 := (if p2$2 then local_id_x$2 == 0 else v60$2);
    p3$1 := (if p2$1 && v60$1 then v60$1 else p3$1);
    p3$2 := (if p2$2 && v60$2 then v60$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 124} _LOG_WRITE_$$result(p3$1, v0$1, 0, $$result[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(p3$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 124} _CHECK_WRITE_$$result(p3$2, v0$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$result"} true;
    $$result[v0$1] := (if p3$1 then 0 else $$result[v0$1]);
    $$result[v0$2] := (if p3$2 then 0 else $$result[v0$2]);
    call {:sourceloc_num 126} v61$1, v61$2 := $_Z3minjj($imageW, $imageH, p2$1, p2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3minjj"} true;
    v62$1 := (if p2$1 then FDIV32(1073741824, UI32_TO_FP32(v61$1)) else v62$1);
    v62$2 := (if p2$2 then FDIV32(1073741824, UI32_TO_FP32(v61$2)) else v62$2);
    v63$1 := (if p2$1 then $$M$3$1 else v63$1);
    v63$2 := (if p2$2 then $$M$3$2 else v63$2);
    v64$1 := (if p2$1 then $$M$7$1 else v64$1);
    v64$2 := (if p2$2 then $$M$7$2 else v64$2);
    v65$1 := (if p2$1 then $$M$11$1 else v65$1);
    v65$2 := (if p2$2 then $$M$11$2 else v65$2);
    $$75$0$1 := (if p2$1 then v63$1 else $$75$0$1);
    $$75$0$2 := (if p2$2 then v63$2 else $$75$0$2);
    $$75$1$1 := (if p2$1 then v64$1 else $$75$1$1);
    $$75$1$2 := (if p2$2 then v64$2 else $$75$1$2);
    $$75$2$1 := (if p2$1 then v65$1 else $$75$2$1);
    $$75$2$2 := (if p2$2 then v65$2 else $$75$2$2);
    v66$1 := (if p2$1 then $$75$0$1 else v66$1);
    v66$2 := (if p2$2 then $$75$0$2 else v66$2);
    v67$1 := (if p2$1 then $$75$1$1 else v67$1);
    v67$2 := (if p2$2 then $$75$1$2 else v67$2);
    v68$1 := (if p2$1 then $$75$2$1 else v68$1);
    v68$2 := (if p2$2 then $$75$2$2 else v68$2);
    $$77$0$1 := (if p2$1 then v66$1 else $$77$0$1);
    $$77$0$2 := (if p2$2 then v66$2 else $$77$0$2);
    $$77$1$1 := (if p2$1 then v67$1 else $$77$1$1);
    $$77$1$2 := (if p2$2 then v67$2 else $$77$1$2);
    $$77$2$1 := (if p2$1 then v68$1 else $$77$2$1);
    $$77$2$2 := (if p2$2 then v68$2 else $$77$2$2);
    v69$1 := (if p2$1 then $$77$0$1 else v69$1);
    v69$2 := (if p2$2 then $$77$0$2 else v69$2);
    $$R$0$1 := (if p2$1 then v69$1 else $$R$0$1);
    $$R$0$2 := (if p2$2 then v69$2 else $$R$0$2);
    v70$1 := (if p2$1 then $$77$1$1 else v70$1);
    v70$2 := (if p2$2 then $$77$1$2 else v70$2);
    $$R$1$1 := (if p2$1 then v70$1 else $$R$1$1);
    $$R$1$2 := (if p2$2 then v70$2 else $$R$1$2);
    v71$1 := (if p2$1 then $$77$2$1 else v71$1);
    v71$2 := (if p2$2 then $$77$2$2 else v71$2);
    $$R$2$1 := (if p2$1 then v71$1 else $$R$2$1);
    $$R$2$2 := (if p2$2 then v71$2 else $$R$2$2);
    v72$1 := (if p2$1 then $$M$0$1 else v72$1);
    v72$2 := (if p2$2 then $$M$0$2 else v72$2);
    $$82$0$1 := (if p2$1 then v72$1 else $$82$0$1);
    $$82$0$2 := (if p2$2 then v72$2 else $$82$0$2);
    v73$1 := (if p2$1 then $$M$1$1 else v73$1);
    v73$2 := (if p2$2 then $$M$1$2 else v73$2);
    $$82$1$1 := (if p2$1 then v73$1 else $$82$1$1);
    $$82$1$2 := (if p2$2 then v73$2 else $$82$1$2);
    v74$1 := (if p2$1 then $$M$2$1 else v74$1);
    v74$2 := (if p2$2 then $$M$2$2 else v74$2);
    $$82$2$1 := (if p2$1 then v74$1 else $$82$2$1);
    $$82$2$2 := (if p2$2 then v74$2 else $$82$2$2);
    v75$1 := (if p2$1 then $$M$3$1 else v75$1);
    v75$2 := (if p2$2 then $$M$3$2 else v75$2);
    $$82$3$1 := (if p2$1 then v75$1 else $$82$3$1);
    $$82$3$2 := (if p2$2 then v75$2 else $$82$3$2);
    v76$1 := (if p2$1 then $$82$0$1 else v76$1);
    v76$2 := (if p2$2 then $$82$0$2 else v76$2);
    v77$1 := (if p2$1 then $$82$1$1 else v77$1);
    v77$2 := (if p2$2 then $$82$1$2 else v77$2);
    v78$1 := (if p2$1 then $$82$2$1 else v78$1);
    v78$2 := (if p2$2 then $$82$2$2 else v78$2);
    v79$1 := (if p2$1 then $$82$3$1 else v79$1);
    v79$2 := (if p2$2 then $$82$3$2 else v79$2);
    $$a.i$0$1 := (if p2$1 then v76$1 else $$a.i$0$1);
    $$a.i$0$2 := (if p2$2 then v76$2 else $$a.i$0$2);
    $$a.i$1$1 := (if p2$1 then v77$1 else $$a.i$1$1);
    $$a.i$1$2 := (if p2$2 then v77$2 else $$a.i$1$2);
    $$a.i$2$1 := (if p2$1 then v78$1 else $$a.i$2$1);
    $$a.i$2$2 := (if p2$2 then v78$2 else $$a.i$2$2);
    $$a.i$3$1 := (if p2$1 then v79$1 else $$a.i$3$1);
    $$a.i$3$2 := (if p2$2 then v79$2 else $$a.i$3$2);
    v80$1 := (if p2$1 then $$a.i$0$1 else v80$1);
    v80$2 := (if p2$2 then $$a.i$0$2 else v80$2);
    v81$1 := (if p2$1 then $$a.i$1$1 else v81$1);
    v81$2 := (if p2$2 then $$a.i$1$2 else v81$2);
    v82$1 := (if p2$1 then $$a.i$2$1 else v82$1);
    v82$2 := (if p2$2 then $$a.i$2$2 else v82$2);
    $$73$0$1 := (if p2$1 then v80$1 else $$73$0$1);
    $$73$0$2 := (if p2$2 then v80$2 else $$73$0$2);
    $$73$1$1 := (if p2$1 then v81$1 else $$73$1$1);
    $$73$1$2 := (if p2$2 then v81$2 else $$73$1$2);
    $$73$2$1 := (if p2$1 then v82$1 else $$73$2$1);
    $$73$2$2 := (if p2$2 then v82$2 else $$73$2$2);
    v83$1 := (if p2$1 then $$73$0$1 else v83$1);
    v83$2 := (if p2$2 then $$73$0$2 else v83$2);
    v84$1 := (if p2$1 then $$73$1$1 else v84$1);
    v84$2 := (if p2$2 then $$73$1$2 else v84$2);
    v85$1 := (if p2$1 then $$73$2$1 else v85$1);
    v85$2 := (if p2$2 then $$73$2$2 else v85$2);
    $$74$0$1 := (if p2$1 then v83$1 else $$74$0$1);
    $$74$0$2 := (if p2$2 then v83$2 else $$74$0$2);
    $$74$1$1 := (if p2$1 then v84$1 else $$74$1$1);
    $$74$1$2 := (if p2$2 then v84$2 else $$74$1$2);
    $$74$2$1 := (if p2$1 then v85$1 else $$74$2$1);
    $$74$2$2 := (if p2$2 then v85$2 else $$74$2$2);
    v86$1 := (if p2$1 then $$74$0$1 else v86$1);
    v86$2 := (if p2$2 then $$74$0$2 else v86$2);
    v87$1 := (if p2$1 then $$74$1$1 else v87$1);
    v87$2 := (if p2$2 then $$74$1$2 else v87$2);
    v88$1 := (if p2$1 then $$74$2$1 else v88$1);
    v88$2 := (if p2$2 then $$74$2$2 else v88$2);
    $$81$0$1 := (if p2$1 then v86$1 else $$81$0$1);
    $$81$0$2 := (if p2$2 then v86$2 else $$81$0$2);
    $$81$1$1 := (if p2$1 then v87$1 else $$81$1$1);
    $$81$1$2 := (if p2$2 then v87$2 else $$81$1$2);
    $$81$2$1 := (if p2$1 then v88$1 else $$81$2$1);
    $$81$2$2 := (if p2$2 then v88$2 else $$81$2$2);
    v89$1 := (if p2$1 then $$81$0$1 else v89$1);
    v89$2 := (if p2$2 then $$81$0$2 else v89$2);
    v90$1 := (if p2$1 then $$81$1$1 else v90$1);
    v90$2 := (if p2$2 then $$81$1$2 else v90$2);
    v91$1 := (if p2$1 then $$81$2$1 else v91$1);
    v91$2 := (if p2$2 then $$81$2$2 else v91$2);
    $$a.i1$0$1 := (if p2$1 then v89$1 else $$a.i1$0$1);
    $$a.i1$0$2 := (if p2$2 then v89$2 else $$a.i1$0$2);
    $$a.i1$1$1 := (if p2$1 then v90$1 else $$a.i1$1$1);
    $$a.i1$1$2 := (if p2$2 then v90$2 else $$a.i1$1$2);
    $$a.i1$2$1 := (if p2$1 then v91$1 else $$a.i1$2$1);
    $$a.i1$2$2 := (if p2$2 then v91$2 else $$a.i1$2$2);
    v92$1 := (if p2$1 then $$a.i1$0$1 else v92$1);
    v92$2 := (if p2$2 then $$a.i1$0$2 else v92$2);
    v93$1 := (if p2$1 then $$a.i1$1$1 else v93$1);
    v93$2 := (if p2$2 then $$a.i1$1$2 else v93$2);
    v94$1 := (if p2$1 then $$a.i1$2$1 else v94$1);
    v94$2 := (if p2$2 then $$a.i1$2$2 else v94$2);
    $$71$0$1 := (if p2$1 then FMUL32(v92$1, $df) else $$71$0$1);
    $$71$0$2 := (if p2$2 then FMUL32(v92$2, $df) else $$71$0$2);
    $$71$1$1 := (if p2$1 then FMUL32(v93$1, $df) else $$71$1$1);
    $$71$1$2 := (if p2$2 then FMUL32(v93$2, $df) else $$71$1$2);
    $$71$2$1 := (if p2$1 then FMUL32(v94$1, $df) else $$71$2$1);
    $$71$2$2 := (if p2$2 then FMUL32(v94$2, $df) else $$71$2$2);
    v95$1 := (if p2$1 then $$71$0$1 else v95$1);
    v95$2 := (if p2$2 then $$71$0$2 else v95$2);
    v96$1 := (if p2$1 then $$71$1$1 else v96$1);
    v96$2 := (if p2$2 then $$71$1$2 else v96$2);
    v97$1 := (if p2$1 then $$71$2$1 else v97$1);
    v97$2 := (if p2$2 then $$71$2$2 else v97$2);
    $$72$0$1 := (if p2$1 then v95$1 else $$72$0$1);
    $$72$0$2 := (if p2$2 then v95$2 else $$72$0$2);
    $$72$1$1 := (if p2$1 then v96$1 else $$72$1$1);
    $$72$1$2 := (if p2$2 then v96$2 else $$72$1$2);
    $$72$2$1 := (if p2$1 then v97$1 else $$72$2$1);
    $$72$2$2 := (if p2$2 then v97$2 else $$72$2$2);
    v98$1 := (if p2$1 then $$72$0$1 else v98$1);
    v98$2 := (if p2$2 then $$72$0$2 else v98$2);
    v99$1 := (if p2$1 then $$72$1$1 else v99$1);
    v99$2 := (if p2$2 then $$72$1$2 else v99$2);
    v100$1 := (if p2$1 then $$72$2$1 else v100$1);
    v100$2 := (if p2$2 then $$72$2$2 else v100$2);
    $$80$0$1 := (if p2$1 then v98$1 else $$80$0$1);
    $$80$0$2 := (if p2$2 then v98$2 else $$80$0$2);
    $$80$1$1 := (if p2$1 then v99$1 else $$80$1$1);
    $$80$1$2 := (if p2$2 then v99$2 else $$80$1$2);
    $$80$2$1 := (if p2$1 then v100$1 else $$80$2$1);
    $$80$2$2 := (if p2$2 then v100$2 else $$80$2$2);
    v101$1 := (if p2$1 then $$M$8$1 else v101$1);
    v101$2 := (if p2$2 then $$M$8$2 else v101$2);
    $$86$0$1 := (if p2$1 then v101$1 else $$86$0$1);
    $$86$0$2 := (if p2$2 then v101$2 else $$86$0$2);
    v102$1 := (if p2$1 then $$M$9$1 else v102$1);
    v102$2 := (if p2$2 then $$M$9$2 else v102$2);
    $$86$1$1 := (if p2$1 then v102$1 else $$86$1$1);
    $$86$1$2 := (if p2$2 then v102$2 else $$86$1$2);
    v103$1 := (if p2$1 then $$M$10$1 else v103$1);
    v103$2 := (if p2$2 then $$M$10$2 else v103$2);
    $$86$2$1 := (if p2$1 then v103$1 else $$86$2$1);
    $$86$2$2 := (if p2$2 then v103$2 else $$86$2$2);
    v104$1 := (if p2$1 then $$M$11$1 else v104$1);
    v104$2 := (if p2$2 then $$M$11$2 else v104$2);
    $$86$3$1 := (if p2$1 then v104$1 else $$86$3$1);
    $$86$3$2 := (if p2$2 then v104$2 else $$86$3$2);
    v105$1 := (if p2$1 then $$86$0$1 else v105$1);
    v105$2 := (if p2$2 then $$86$0$2 else v105$2);
    v106$1 := (if p2$1 then $$86$1$1 else v106$1);
    v106$2 := (if p2$2 then $$86$1$2 else v106$2);
    v107$1 := (if p2$1 then $$86$2$1 else v107$1);
    v107$2 := (if p2$2 then $$86$2$2 else v107$2);
    v108$1 := (if p2$1 then $$86$3$1 else v108$1);
    v108$2 := (if p2$2 then $$86$3$2 else v108$2);
    $$a.i10$0$1 := (if p2$1 then v105$1 else $$a.i10$0$1);
    $$a.i10$0$2 := (if p2$2 then v105$2 else $$a.i10$0$2);
    $$a.i10$1$1 := (if p2$1 then v106$1 else $$a.i10$1$1);
    $$a.i10$1$2 := (if p2$2 then v106$2 else $$a.i10$1$2);
    $$a.i10$2$1 := (if p2$1 then v107$1 else $$a.i10$2$1);
    $$a.i10$2$2 := (if p2$2 then v107$2 else $$a.i10$2$2);
    $$a.i10$3$1 := (if p2$1 then v108$1 else $$a.i10$3$1);
    $$a.i10$3$2 := (if p2$2 then v108$2 else $$a.i10$3$2);
    v109$1 := (if p2$1 then $$a.i10$0$1 else v109$1);
    v109$2 := (if p2$2 then $$a.i10$0$2 else v109$2);
    v110$1 := (if p2$1 then $$a.i10$1$1 else v110$1);
    v110$2 := (if p2$2 then $$a.i10$1$2 else v110$2);
    v111$1 := (if p2$1 then $$a.i10$2$1 else v111$1);
    v111$2 := (if p2$2 then $$a.i10$2$2 else v111$2);
    $$45$0$1 := (if p2$1 then v109$1 else $$45$0$1);
    $$45$0$2 := (if p2$2 then v109$2 else $$45$0$2);
    $$45$1$1 := (if p2$1 then v110$1 else $$45$1$1);
    $$45$1$2 := (if p2$2 then v110$2 else $$45$1$2);
    $$45$2$1 := (if p2$1 then v111$1 else $$45$2$1);
    $$45$2$2 := (if p2$2 then v111$2 else $$45$2$2);
    v112$1 := (if p2$1 then $$45$0$1 else v112$1);
    v112$2 := (if p2$2 then $$45$0$2 else v112$2);
    v113$1 := (if p2$1 then $$45$1$1 else v113$1);
    v113$2 := (if p2$2 then $$45$1$2 else v113$2);
    v114$1 := (if p2$1 then $$45$2$1 else v114$1);
    v114$2 := (if p2$2 then $$45$2$2 else v114$2);
    $$46$0$1 := (if p2$1 then v112$1 else $$46$0$1);
    $$46$0$2 := (if p2$2 then v112$2 else $$46$0$2);
    $$46$1$1 := (if p2$1 then v113$1 else $$46$1$1);
    $$46$1$2 := (if p2$2 then v113$2 else $$46$1$2);
    $$46$2$1 := (if p2$1 then v114$1 else $$46$2$1);
    $$46$2$2 := (if p2$2 then v114$2 else $$46$2$2);
    v115$1 := (if p2$1 then $$46$0$1 else v115$1);
    v115$2 := (if p2$2 then $$46$0$2 else v115$2);
    v116$1 := (if p2$1 then $$46$1$1 else v116$1);
    v116$2 := (if p2$2 then $$46$1$2 else v116$2);
    v117$1 := (if p2$1 then $$46$2$1 else v117$1);
    v117$2 := (if p2$2 then $$46$2$2 else v117$2);
    $$85$0$1 := (if p2$1 then v115$1 else $$85$0$1);
    $$85$0$2 := (if p2$2 then v115$2 else $$85$0$2);
    $$85$1$1 := (if p2$1 then v116$1 else $$85$1$1);
    $$85$1$2 := (if p2$2 then v116$2 else $$85$1$2);
    $$85$2$1 := (if p2$1 then v117$1 else $$85$2$1);
    $$85$2$2 := (if p2$2 then v117$2 else $$85$2$2);
    v118$1 := (if p2$1 then FSUB32(UI32_TO_FP32(group_id_x$1), FMUL32(UI32_TO_FP32($imageW), 1056964608)) else v118$1);
    v118$2 := (if p2$2 then FSUB32(UI32_TO_FP32(group_id_x$2), FMUL32(UI32_TO_FP32($imageW), 1056964608)) else v118$2);
    v119$1 := (if p2$1 then $$85$0$1 else v119$1);
    v119$2 := (if p2$2 then $$85$0$2 else v119$2);
    v120$1 := (if p2$1 then $$85$1$1 else v120$1);
    v120$2 := (if p2$2 then $$85$1$2 else v120$2);
    v121$1 := (if p2$1 then $$85$2$1 else v121$1);
    v121$2 := (if p2$2 then $$85$2$2 else v121$2);
    $$a.i12$0$1 := (if p2$1 then v119$1 else $$a.i12$0$1);
    $$a.i12$0$2 := (if p2$2 then v119$2 else $$a.i12$0$2);
    $$a.i12$1$1 := (if p2$1 then v120$1 else $$a.i12$1$1);
    $$a.i12$1$2 := (if p2$2 then v120$2 else $$a.i12$1$2);
    $$a.i12$2$1 := (if p2$1 then v121$1 else $$a.i12$2$1);
    $$a.i12$2$2 := (if p2$2 then v121$2 else $$a.i12$2$2);
    v122$1 := (if p2$1 then $$a.i12$0$1 else v122$1);
    v122$2 := (if p2$2 then $$a.i12$0$2 else v122$2);
    v123$1 := (if p2$1 then $$a.i12$1$1 else v123$1);
    v123$2 := (if p2$2 then $$a.i12$1$2 else v123$2);
    v124$1 := (if p2$1 then $$a.i12$2$1 else v124$1);
    v124$2 := (if p2$2 then $$a.i12$2$2 else v124$2);
    $$40$0$1 := (if p2$1 then FMUL32(v122$1, v118$1) else $$40$0$1);
    $$40$0$2 := (if p2$2 then FMUL32(v122$2, v118$2) else $$40$0$2);
    $$40$1$1 := (if p2$1 then FMUL32(v123$1, v118$1) else $$40$1$1);
    $$40$1$2 := (if p2$2 then FMUL32(v123$2, v118$2) else $$40$1$2);
    $$40$2$1 := (if p2$1 then FMUL32(v124$1, v118$1) else $$40$2$1);
    $$40$2$2 := (if p2$2 then FMUL32(v124$2, v118$2) else $$40$2$2);
    v125$1 := (if p2$1 then $$40$0$1 else v125$1);
    v125$2 := (if p2$2 then $$40$0$2 else v125$2);
    v126$1 := (if p2$1 then $$40$1$1 else v126$1);
    v126$2 := (if p2$2 then $$40$1$2 else v126$2);
    v127$1 := (if p2$1 then $$40$2$1 else v127$1);
    v127$2 := (if p2$2 then $$40$2$2 else v127$2);
    $$41$0$1 := (if p2$1 then v125$1 else $$41$0$1);
    $$41$0$2 := (if p2$2 then v125$2 else $$41$0$2);
    $$41$1$1 := (if p2$1 then v126$1 else $$41$1$1);
    $$41$1$2 := (if p2$2 then v126$2 else $$41$1$2);
    $$41$2$1 := (if p2$1 then v127$1 else $$41$2$1);
    $$41$2$2 := (if p2$2 then v127$2 else $$41$2$2);
    v128$1 := (if p2$1 then $$41$0$1 else v128$1);
    v128$2 := (if p2$2 then $$41$0$2 else v128$2);
    v129$1 := (if p2$1 then $$41$1$1 else v129$1);
    v129$2 := (if p2$2 then $$41$1$2 else v129$2);
    v130$1 := (if p2$1 then $$41$2$1 else v130$1);
    v130$2 := (if p2$2 then $$41$2$2 else v130$2);
    $$84$0$1 := (if p2$1 then v128$1 else $$84$0$1);
    $$84$0$2 := (if p2$2 then v128$2 else $$84$0$2);
    $$84$1$1 := (if p2$1 then v129$1 else $$84$1$1);
    $$84$1$2 := (if p2$2 then v129$2 else $$84$1$2);
    $$84$2$1 := (if p2$1 then v130$1 else $$84$2$1);
    $$84$2$2 := (if p2$2 then v130$2 else $$84$2$2);
    v131$1 := (if p2$1 then $$84$0$1 else v131$1);
    v131$2 := (if p2$2 then $$84$0$2 else v131$2);
    v132$1 := (if p2$1 then $$84$1$1 else v132$1);
    v132$2 := (if p2$2 then $$84$1$2 else v132$2);
    v133$1 := (if p2$1 then $$84$2$1 else v133$1);
    v133$2 := (if p2$2 then $$84$2$2 else v133$2);
    $$a.i22$0$1 := (if p2$1 then v131$1 else $$a.i22$0$1);
    $$a.i22$0$2 := (if p2$2 then v131$2 else $$a.i22$0$2);
    $$a.i22$1$1 := (if p2$1 then v132$1 else $$a.i22$1$1);
    $$a.i22$1$2 := (if p2$2 then v132$2 else $$a.i22$1$2);
    $$a.i22$2$1 := (if p2$1 then v133$1 else $$a.i22$2$1);
    $$a.i22$2$2 := (if p2$2 then v133$2 else $$a.i22$2$2);
    v134$1 := (if p2$1 then $$a.i22$0$1 else v134$1);
    v134$2 := (if p2$2 then $$a.i22$0$2 else v134$2);
    v135$1 := (if p2$1 then $$a.i22$1$1 else v135$1);
    v135$2 := (if p2$2 then $$a.i22$1$2 else v135$2);
    v136$1 := (if p2$1 then $$a.i22$2$1 else v136$1);
    v136$2 := (if p2$2 then $$a.i22$2$2 else v136$2);
    $$21$0$1 := (if p2$1 then FMUL32(v134$1, v62$1) else $$21$0$1);
    $$21$0$2 := (if p2$2 then FMUL32(v134$2, v62$2) else $$21$0$2);
    $$21$1$1 := (if p2$1 then FMUL32(v135$1, v62$1) else $$21$1$1);
    $$21$1$2 := (if p2$2 then FMUL32(v135$2, v62$2) else $$21$1$2);
    $$21$2$1 := (if p2$1 then FMUL32(v136$1, v62$1) else $$21$2$1);
    $$21$2$2 := (if p2$2 then FMUL32(v136$2, v62$2) else $$21$2$2);
    v137$1 := (if p2$1 then $$21$0$1 else v137$1);
    v137$2 := (if p2$2 then $$21$0$2 else v137$2);
    v138$1 := (if p2$1 then $$21$1$1 else v138$1);
    v138$2 := (if p2$2 then $$21$1$2 else v138$2);
    v139$1 := (if p2$1 then $$21$2$1 else v139$1);
    v139$2 := (if p2$2 then $$21$2$2 else v139$2);
    $$22$0$1 := (if p2$1 then v137$1 else $$22$0$1);
    $$22$0$2 := (if p2$2 then v137$2 else $$22$0$2);
    $$22$1$1 := (if p2$1 then v138$1 else $$22$1$1);
    $$22$1$2 := (if p2$2 then v138$2 else $$22$1$2);
    $$22$2$1 := (if p2$1 then v139$1 else $$22$2$1);
    $$22$2$2 := (if p2$2 then v139$2 else $$22$2$2);
    v140$1 := (if p2$1 then $$22$0$1 else v140$1);
    v140$2 := (if p2$2 then $$22$0$2 else v140$2);
    v141$1 := (if p2$1 then $$22$1$1 else v141$1);
    v141$2 := (if p2$2 then $$22$1$2 else v141$2);
    v142$1 := (if p2$1 then $$22$2$1 else v142$1);
    v142$2 := (if p2$2 then $$22$2$2 else v142$2);
    $$83$0$1 := (if p2$1 then v140$1 else $$83$0$1);
    $$83$0$2 := (if p2$2 then v140$2 else $$83$0$2);
    $$83$1$1 := (if p2$1 then v141$1 else $$83$1$1);
    $$83$1$2 := (if p2$2 then v141$2 else $$83$1$2);
    $$83$2$1 := (if p2$1 then v142$1 else $$83$2$1);
    $$83$2$2 := (if p2$2 then v142$2 else $$83$2$2);
    v143$1 := (if p2$1 then $$80$0$1 else v143$1);
    v143$2 := (if p2$2 then $$80$0$2 else v143$2);
    v144$1 := (if p2$1 then $$80$1$1 else v144$1);
    v144$2 := (if p2$2 then $$80$1$2 else v144$2);
    v145$1 := (if p2$1 then $$80$2$1 else v145$1);
    v145$2 := (if p2$2 then $$80$2$2 else v145$2);
    v146$1 := (if p2$1 then $$83$0$1 else v146$1);
    v146$2 := (if p2$2 then $$83$0$2 else v146$2);
    v147$1 := (if p2$1 then $$83$1$1 else v147$1);
    v147$2 := (if p2$2 then $$83$1$2 else v147$2);
    v148$1 := (if p2$1 then $$83$2$1 else v148$1);
    v148$2 := (if p2$2 then $$83$2$2 else v148$2);
    $$a.i23$0$1 := (if p2$1 then v143$1 else $$a.i23$0$1);
    $$a.i23$0$2 := (if p2$2 then v143$2 else $$a.i23$0$2);
    $$a.i23$1$1 := (if p2$1 then v144$1 else $$a.i23$1$1);
    $$a.i23$1$2 := (if p2$2 then v144$2 else $$a.i23$1$2);
    $$a.i23$2$1 := (if p2$1 then v145$1 else $$a.i23$2$1);
    $$a.i23$2$2 := (if p2$2 then v145$2 else $$a.i23$2$2);
    $$b.i24$0$1 := (if p2$1 then v146$1 else $$b.i24$0$1);
    $$b.i24$0$2 := (if p2$2 then v146$2 else $$b.i24$0$2);
    $$b.i24$1$1 := (if p2$1 then v147$1 else $$b.i24$1$1);
    $$b.i24$1$2 := (if p2$2 then v147$2 else $$b.i24$1$2);
    $$b.i24$2$1 := (if p2$1 then v148$1 else $$b.i24$2$1);
    $$b.i24$2$2 := (if p2$2 then v148$2 else $$b.i24$2$2);
    v149$1 := (if p2$1 then $$a.i23$0$1 else v149$1);
    v149$2 := (if p2$2 then $$a.i23$0$2 else v149$2);
    v150$1 := (if p2$1 then $$b.i24$0$1 else v150$1);
    v150$2 := (if p2$2 then $$b.i24$0$2 else v150$2);
    v151$1 := (if p2$1 then $$a.i23$1$1 else v151$1);
    v151$2 := (if p2$2 then $$a.i23$1$2 else v151$2);
    v152$1 := (if p2$1 then $$b.i24$1$1 else v152$1);
    v152$2 := (if p2$2 then $$b.i24$1$2 else v152$2);
    v153$1 := (if p2$1 then $$a.i23$2$1 else v153$1);
    v153$2 := (if p2$2 then $$a.i23$2$2 else v153$2);
    v154$1 := (if p2$1 then $$b.i24$2$1 else v154$1);
    v154$2 := (if p2$2 then $$b.i24$2$2 else v154$2);
    $$19$0$1 := (if p2$1 then FADD32(v149$1, v150$1) else $$19$0$1);
    $$19$0$2 := (if p2$2 then FADD32(v149$2, v150$2) else $$19$0$2);
    $$19$1$1 := (if p2$1 then FADD32(v151$1, v152$1) else $$19$1$1);
    $$19$1$2 := (if p2$2 then FADD32(v151$2, v152$2) else $$19$1$2);
    $$19$2$1 := (if p2$1 then FADD32(v153$1, v154$1) else $$19$2$1);
    $$19$2$2 := (if p2$2 then FADD32(v153$2, v154$2) else $$19$2$2);
    v155$1 := (if p2$1 then $$19$0$1 else v155$1);
    v155$2 := (if p2$2 then $$19$0$2 else v155$2);
    v156$1 := (if p2$1 then $$19$1$1 else v156$1);
    v156$2 := (if p2$2 then $$19$1$2 else v156$2);
    v157$1 := (if p2$1 then $$19$2$1 else v157$1);
    v157$2 := (if p2$2 then $$19$2$2 else v157$2);
    $$20$0$1 := (if p2$1 then v155$1 else $$20$0$1);
    $$20$0$2 := (if p2$2 then v155$2 else $$20$0$2);
    $$20$1$1 := (if p2$1 then v156$1 else $$20$1$1);
    $$20$1$2 := (if p2$2 then v156$2 else $$20$1$2);
    $$20$2$1 := (if p2$1 then v157$1 else $$20$2$1);
    $$20$2$2 := (if p2$2 then v157$2 else $$20$2$2);
    v158$1 := (if p2$1 then $$20$0$1 else v158$1);
    v158$2 := (if p2$2 then $$20$0$2 else v158$2);
    v159$1 := (if p2$1 then $$20$1$1 else v159$1);
    v159$2 := (if p2$2 then $$20$1$2 else v159$2);
    v160$1 := (if p2$1 then $$20$2$1 else v160$1);
    v160$2 := (if p2$2 then $$20$2$2 else v160$2);
    $$79$0$1 := (if p2$1 then v158$1 else $$79$0$1);
    $$79$0$2 := (if p2$2 then v158$2 else $$79$0$2);
    $$79$1$1 := (if p2$1 then v159$1 else $$79$1$1);
    $$79$1$2 := (if p2$2 then v159$2 else $$79$1$2);
    $$79$2$1 := (if p2$1 then v160$1 else $$79$2$1);
    $$79$2$2 := (if p2$2 then v160$2 else $$79$2$2);
    v161$1 := (if p2$1 then $$M$4$1 else v161$1);
    v161$2 := (if p2$2 then $$M$4$2 else v161$2);
    $$90$0$1 := (if p2$1 then v161$1 else $$90$0$1);
    $$90$0$2 := (if p2$2 then v161$2 else $$90$0$2);
    v162$1 := (if p2$1 then $$M$5$1 else v162$1);
    v162$2 := (if p2$2 then $$M$5$2 else v162$2);
    $$90$1$1 := (if p2$1 then v162$1 else $$90$1$1);
    $$90$1$2 := (if p2$2 then v162$2 else $$90$1$2);
    v163$1 := (if p2$1 then $$M$6$1 else v163$1);
    v163$2 := (if p2$2 then $$M$6$2 else v163$2);
    $$90$2$1 := (if p2$1 then v163$1 else $$90$2$1);
    $$90$2$2 := (if p2$2 then v163$2 else $$90$2$2);
    v164$1 := (if p2$1 then $$M$7$1 else v164$1);
    v164$2 := (if p2$2 then $$M$7$2 else v164$2);
    $$90$3$1 := (if p2$1 then v164$1 else $$90$3$1);
    $$90$3$2 := (if p2$2 then v164$2 else $$90$3$2);
    v165$1 := (if p2$1 then $$90$0$1 else v165$1);
    v165$2 := (if p2$2 then $$90$0$2 else v165$2);
    v166$1 := (if p2$1 then $$90$1$1 else v166$1);
    v166$2 := (if p2$2 then $$90$1$2 else v166$2);
    v167$1 := (if p2$1 then $$90$2$1 else v167$1);
    v167$2 := (if p2$2 then $$90$2$2 else v167$2);
    v168$1 := (if p2$1 then $$90$3$1 else v168$1);
    v168$2 := (if p2$2 then $$90$3$2 else v168$2);
    $$a.i25$0$1 := (if p2$1 then v165$1 else $$a.i25$0$1);
    $$a.i25$0$2 := (if p2$2 then v165$2 else $$a.i25$0$2);
    $$a.i25$1$1 := (if p2$1 then v166$1 else $$a.i25$1$1);
    $$a.i25$1$2 := (if p2$2 then v166$2 else $$a.i25$1$2);
    $$a.i25$2$1 := (if p2$1 then v167$1 else $$a.i25$2$1);
    $$a.i25$2$2 := (if p2$2 then v167$2 else $$a.i25$2$2);
    $$a.i25$3$1 := (if p2$1 then v168$1 else $$a.i25$3$1);
    $$a.i25$3$2 := (if p2$2 then v168$2 else $$a.i25$3$2);
    v169$1 := (if p2$1 then $$a.i25$0$1 else v169$1);
    v169$2 := (if p2$2 then $$a.i25$0$2 else v169$2);
    v170$1 := (if p2$1 then $$a.i25$1$1 else v170$1);
    v170$2 := (if p2$2 then $$a.i25$1$2 else v170$2);
    v171$1 := (if p2$1 then $$a.i25$2$1 else v171$1);
    v171$2 := (if p2$2 then $$a.i25$2$2 else v171$2);
    $$17$0$1 := (if p2$1 then v169$1 else $$17$0$1);
    $$17$0$2 := (if p2$2 then v169$2 else $$17$0$2);
    $$17$1$1 := (if p2$1 then v170$1 else $$17$1$1);
    $$17$1$2 := (if p2$2 then v170$2 else $$17$1$2);
    $$17$2$1 := (if p2$1 then v171$1 else $$17$2$1);
    $$17$2$2 := (if p2$2 then v171$2 else $$17$2$2);
    v172$1 := (if p2$1 then $$17$0$1 else v172$1);
    v172$2 := (if p2$2 then $$17$0$2 else v172$2);
    v173$1 := (if p2$1 then $$17$1$1 else v173$1);
    v173$2 := (if p2$2 then $$17$1$2 else v173$2);
    v174$1 := (if p2$1 then $$17$2$1 else v174$1);
    v174$2 := (if p2$2 then $$17$2$2 else v174$2);
    $$18$0$1 := (if p2$1 then v172$1 else $$18$0$1);
    $$18$0$2 := (if p2$2 then v172$2 else $$18$0$2);
    $$18$1$1 := (if p2$1 then v173$1 else $$18$1$1);
    $$18$1$2 := (if p2$2 then v173$2 else $$18$1$2);
    $$18$2$1 := (if p2$1 then v174$1 else $$18$2$1);
    $$18$2$2 := (if p2$2 then v174$2 else $$18$2$2);
    v175$1 := (if p2$1 then $$18$0$1 else v175$1);
    v175$2 := (if p2$2 then $$18$0$2 else v175$2);
    v176$1 := (if p2$1 then $$18$1$1 else v176$1);
    v176$2 := (if p2$2 then $$18$1$2 else v176$2);
    v177$1 := (if p2$1 then $$18$2$1 else v177$1);
    v177$2 := (if p2$2 then $$18$2$2 else v177$2);
    $$89$0$1 := (if p2$1 then v175$1 else $$89$0$1);
    $$89$0$2 := (if p2$2 then v175$2 else $$89$0$2);
    $$89$1$1 := (if p2$1 then v176$1 else $$89$1$1);
    $$89$1$2 := (if p2$2 then v176$2 else $$89$1$2);
    $$89$2$1 := (if p2$1 then v177$1 else $$89$2$1);
    $$89$2$2 := (if p2$2 then v177$2 else $$89$2$2);
    v178$1 := (if p2$1 then FSUB32(UI32_TO_FP32(group_id_y$1), FMUL32(UI32_TO_FP32($imageH), 1056964608)) else v178$1);
    v178$2 := (if p2$2 then FSUB32(UI32_TO_FP32(group_id_y$2), FMUL32(UI32_TO_FP32($imageH), 1056964608)) else v178$2);
    v179$1 := (if p2$1 then $$89$0$1 else v179$1);
    v179$2 := (if p2$2 then $$89$0$2 else v179$2);
    v180$1 := (if p2$1 then $$89$1$1 else v180$1);
    v180$2 := (if p2$2 then $$89$1$2 else v180$2);
    v181$1 := (if p2$1 then $$89$2$1 else v181$1);
    v181$2 := (if p2$2 then $$89$2$2 else v181$2);
    $$a.i33$0$1 := (if p2$1 then v179$1 else $$a.i33$0$1);
    $$a.i33$0$2 := (if p2$2 then v179$2 else $$a.i33$0$2);
    $$a.i33$1$1 := (if p2$1 then v180$1 else $$a.i33$1$1);
    $$a.i33$1$2 := (if p2$2 then v180$2 else $$a.i33$1$2);
    $$a.i33$2$1 := (if p2$1 then v181$1 else $$a.i33$2$1);
    $$a.i33$2$2 := (if p2$2 then v181$2 else $$a.i33$2$2);
    v182$1 := (if p2$1 then $$a.i33$0$1 else v182$1);
    v182$2 := (if p2$2 then $$a.i33$0$2 else v182$2);
    v183$1 := (if p2$1 then $$a.i33$1$1 else v183$1);
    v183$2 := (if p2$2 then $$a.i33$1$2 else v183$2);
    v184$1 := (if p2$1 then $$a.i33$2$1 else v184$1);
    v184$2 := (if p2$2 then $$a.i33$2$2 else v184$2);
    $$4$0$1 := (if p2$1 then FMUL32(v182$1, v178$1) else $$4$0$1);
    $$4$0$2 := (if p2$2 then FMUL32(v182$2, v178$2) else $$4$0$2);
    $$4$1$1 := (if p2$1 then FMUL32(v183$1, v178$1) else $$4$1$1);
    $$4$1$2 := (if p2$2 then FMUL32(v183$2, v178$2) else $$4$1$2);
    $$4$2$1 := (if p2$1 then FMUL32(v184$1, v178$1) else $$4$2$1);
    $$4$2$2 := (if p2$2 then FMUL32(v184$2, v178$2) else $$4$2$2);
    v185$1 := (if p2$1 then $$4$0$1 else v185$1);
    v185$2 := (if p2$2 then $$4$0$2 else v185$2);
    v186$1 := (if p2$1 then $$4$1$1 else v186$1);
    v186$2 := (if p2$2 then $$4$1$2 else v186$2);
    v187$1 := (if p2$1 then $$4$2$1 else v187$1);
    v187$2 := (if p2$2 then $$4$2$2 else v187$2);
    $$5$0$1 := (if p2$1 then v185$1 else $$5$0$1);
    $$5$0$2 := (if p2$2 then v185$2 else $$5$0$2);
    $$5$1$1 := (if p2$1 then v186$1 else $$5$1$1);
    $$5$1$2 := (if p2$2 then v186$2 else $$5$1$2);
    $$5$2$1 := (if p2$1 then v187$1 else $$5$2$1);
    $$5$2$2 := (if p2$2 then v187$2 else $$5$2$2);
    v188$1 := (if p2$1 then $$5$0$1 else v188$1);
    v188$2 := (if p2$2 then $$5$0$2 else v188$2);
    v189$1 := (if p2$1 then $$5$1$1 else v189$1);
    v189$2 := (if p2$2 then $$5$1$2 else v189$2);
    v190$1 := (if p2$1 then $$5$2$1 else v190$1);
    v190$2 := (if p2$2 then $$5$2$2 else v190$2);
    $$88$0$1 := (if p2$1 then v188$1 else $$88$0$1);
    $$88$0$2 := (if p2$2 then v188$2 else $$88$0$2);
    $$88$1$1 := (if p2$1 then v189$1 else $$88$1$1);
    $$88$1$2 := (if p2$2 then v189$2 else $$88$1$2);
    $$88$2$1 := (if p2$1 then v190$1 else $$88$2$1);
    $$88$2$2 := (if p2$2 then v190$2 else $$88$2$2);
    v191$1 := (if p2$1 then $$88$0$1 else v191$1);
    v191$2 := (if p2$2 then $$88$0$2 else v191$2);
    v192$1 := (if p2$1 then $$88$1$1 else v192$1);
    v192$2 := (if p2$2 then $$88$1$2 else v192$2);
    v193$1 := (if p2$1 then $$88$2$1 else v193$1);
    v193$2 := (if p2$2 then $$88$2$2 else v193$2);
    $$a.i34$0$1 := (if p2$1 then v191$1 else $$a.i34$0$1);
    $$a.i34$0$2 := (if p2$2 then v191$2 else $$a.i34$0$2);
    $$a.i34$1$1 := (if p2$1 then v192$1 else $$a.i34$1$1);
    $$a.i34$1$2 := (if p2$2 then v192$2 else $$a.i34$1$2);
    $$a.i34$2$1 := (if p2$1 then v193$1 else $$a.i34$2$1);
    $$a.i34$2$2 := (if p2$2 then v193$2 else $$a.i34$2$2);
    v194$1 := (if p2$1 then $$a.i34$0$1 else v194$1);
    v194$2 := (if p2$2 then $$a.i34$0$2 else v194$2);
    v195$1 := (if p2$1 then $$a.i34$1$1 else v195$1);
    v195$2 := (if p2$2 then $$a.i34$1$2 else v195$2);
    v196$1 := (if p2$1 then $$a.i34$2$1 else v196$1);
    v196$2 := (if p2$2 then $$a.i34$2$2 else v196$2);
    $$2$0$1 := (if p2$1 then FMUL32(v194$1, v62$1) else $$2$0$1);
    $$2$0$2 := (if p2$2 then FMUL32(v194$2, v62$2) else $$2$0$2);
    $$2$1$1 := (if p2$1 then FMUL32(v195$1, v62$1) else $$2$1$1);
    $$2$1$2 := (if p2$2 then FMUL32(v195$2, v62$2) else $$2$1$2);
    $$2$2$1 := (if p2$1 then FMUL32(v196$1, v62$1) else $$2$2$1);
    $$2$2$2 := (if p2$2 then FMUL32(v196$2, v62$2) else $$2$2$2);
    v197$1 := (if p2$1 then $$2$0$1 else v197$1);
    v197$2 := (if p2$2 then $$2$0$2 else v197$2);
    v198$1 := (if p2$1 then $$2$1$1 else v198$1);
    v198$2 := (if p2$2 then $$2$1$2 else v198$2);
    v199$1 := (if p2$1 then $$2$2$1 else v199$1);
    v199$2 := (if p2$2 then $$2$2$2 else v199$2);
    $$3$0$1 := (if p2$1 then v197$1 else $$3$0$1);
    $$3$0$2 := (if p2$2 then v197$2 else $$3$0$2);
    $$3$1$1 := (if p2$1 then v198$1 else $$3$1$1);
    $$3$1$2 := (if p2$2 then v198$2 else $$3$1$2);
    $$3$2$1 := (if p2$1 then v199$1 else $$3$2$1);
    $$3$2$2 := (if p2$2 then v199$2 else $$3$2$2);
    v200$1 := (if p2$1 then $$3$0$1 else v200$1);
    v200$2 := (if p2$2 then $$3$0$2 else v200$2);
    v201$1 := (if p2$1 then $$3$1$1 else v201$1);
    v201$2 := (if p2$2 then $$3$1$2 else v201$2);
    v202$1 := (if p2$1 then $$3$2$1 else v202$1);
    v202$2 := (if p2$2 then $$3$2$2 else v202$2);
    $$87$0$1 := (if p2$1 then v200$1 else $$87$0$1);
    $$87$0$2 := (if p2$2 then v200$2 else $$87$0$2);
    $$87$1$1 := (if p2$1 then v201$1 else $$87$1$1);
    $$87$1$2 := (if p2$2 then v201$2 else $$87$1$2);
    $$87$2$1 := (if p2$1 then v202$1 else $$87$2$1);
    $$87$2$2 := (if p2$2 then v202$2 else $$87$2$2);
    v203$1 := (if p2$1 then $$79$0$1 else v203$1);
    v203$2 := (if p2$2 then $$79$0$2 else v203$2);
    v204$1 := (if p2$1 then $$79$1$1 else v204$1);
    v204$2 := (if p2$2 then $$79$1$2 else v204$2);
    v205$1 := (if p2$1 then $$79$2$1 else v205$1);
    v205$2 := (if p2$2 then $$79$2$2 else v205$2);
    v206$1 := (if p2$1 then $$87$0$1 else v206$1);
    v206$2 := (if p2$2 then $$87$0$2 else v206$2);
    v207$1 := (if p2$1 then $$87$1$1 else v207$1);
    v207$2 := (if p2$2 then $$87$1$2 else v207$2);
    v208$1 := (if p2$1 then $$87$2$1 else v208$1);
    v208$2 := (if p2$2 then $$87$2$2 else v208$2);
    $$a.i35$0$1 := (if p2$1 then v203$1 else $$a.i35$0$1);
    $$a.i35$0$2 := (if p2$2 then v203$2 else $$a.i35$0$2);
    $$a.i35$1$1 := (if p2$1 then v204$1 else $$a.i35$1$1);
    $$a.i35$1$2 := (if p2$2 then v204$2 else $$a.i35$1$2);
    $$a.i35$2$1 := (if p2$1 then v205$1 else $$a.i35$2$1);
    $$a.i35$2$2 := (if p2$2 then v205$2 else $$a.i35$2$2);
    $$b.i36$0$1 := (if p2$1 then v206$1 else $$b.i36$0$1);
    $$b.i36$0$2 := (if p2$2 then v206$2 else $$b.i36$0$2);
    $$b.i36$1$1 := (if p2$1 then v207$1 else $$b.i36$1$1);
    $$b.i36$1$2 := (if p2$2 then v207$2 else $$b.i36$1$2);
    $$b.i36$2$1 := (if p2$1 then v208$1 else $$b.i36$2$1);
    $$b.i36$2$2 := (if p2$2 then v208$2 else $$b.i36$2$2);
    v209$1 := (if p2$1 then $$a.i35$0$1 else v209$1);
    v209$2 := (if p2$2 then $$a.i35$0$2 else v209$2);
    v210$1 := (if p2$1 then $$b.i36$0$1 else v210$1);
    v210$2 := (if p2$2 then $$b.i36$0$2 else v210$2);
    v211$1 := (if p2$1 then $$a.i35$1$1 else v211$1);
    v211$2 := (if p2$2 then $$a.i35$1$2 else v211$2);
    v212$1 := (if p2$1 then $$b.i36$1$1 else v212$1);
    v212$2 := (if p2$2 then $$b.i36$1$2 else v212$2);
    v213$1 := (if p2$1 then $$a.i35$2$1 else v213$1);
    v213$2 := (if p2$2 then $$a.i35$2$2 else v213$2);
    v214$1 := (if p2$1 then $$b.i36$2$1 else v214$1);
    v214$2 := (if p2$2 then $$b.i36$2$2 else v214$2);
    $$0$0$1 := (if p2$1 then FADD32(v209$1, v210$1) else $$0$0$1);
    $$0$0$2 := (if p2$2 then FADD32(v209$2, v210$2) else $$0$0$2);
    $$0$1$1 := (if p2$1 then FADD32(v211$1, v212$1) else $$0$1$1);
    $$0$1$2 := (if p2$2 then FADD32(v211$2, v212$2) else $$0$1$2);
    $$0$2$1 := (if p2$1 then FADD32(v213$1, v214$1) else $$0$2$1);
    $$0$2$2 := (if p2$2 then FADD32(v213$2, v214$2) else $$0$2$2);
    v215$1 := (if p2$1 then $$0$0$1 else v215$1);
    v215$2 := (if p2$2 then $$0$0$2 else v215$2);
    v216$1 := (if p2$1 then $$0$1$1 else v216$1);
    v216$2 := (if p2$2 then $$0$1$2 else v216$2);
    v217$1 := (if p2$1 then $$0$2$1 else v217$1);
    v217$2 := (if p2$2 then $$0$2$2 else v217$2);
    $$1$0$1 := (if p2$1 then v215$1 else $$1$0$1);
    $$1$0$2 := (if p2$2 then v215$2 else $$1$0$2);
    $$1$1$1 := (if p2$1 then v216$1 else $$1$1$1);
    $$1$1$2 := (if p2$2 then v216$2 else $$1$1$2);
    $$1$2$1 := (if p2$1 then v217$1 else $$1$2$1);
    $$1$2$2 := (if p2$2 then v217$2 else $$1$2$2);
    v218$1 := (if p2$1 then $$1$0$1 else v218$1);
    v218$2 := (if p2$2 then $$1$0$2 else v218$2);
    v219$1 := (if p2$1 then $$1$1$1 else v219$1);
    v219$2 := (if p2$2 then $$1$1$2 else v219$2);
    v220$1 := (if p2$1 then $$1$2$1 else v220$1);
    v220$2 := (if p2$2 then $$1$2$2 else v220$2);
    $$78$0$1 := (if p2$1 then v218$1 else $$78$0$1);
    $$78$0$2 := (if p2$2 then v218$2 else $$78$0$2);
    $$78$1$1 := (if p2$1 then v219$1 else $$78$1$1);
    $$78$1$2 := (if p2$2 then v219$2 else $$78$1$2);
    $$78$2$1 := (if p2$1 then v220$1 else $$78$2$1);
    $$78$2$2 := (if p2$2 then v220$2 else $$78$2$2);
    v221$1 := (if p2$1 then $$78$0$1 else v221$1);
    v221$2 := (if p2$2 then $$78$0$2 else v221$2);
    $$R$3$1 := (if p2$1 then v221$1 else $$R$3$1);
    $$R$3$2 := (if p2$2 then v221$2 else $$R$3$2);
    v222$1 := (if p2$1 then $$78$1$1 else v222$1);
    v222$2 := (if p2$2 then $$78$1$2 else v222$2);
    $$R$4$1 := (if p2$1 then v222$1 else $$R$4$1);
    $$R$4$2 := (if p2$2 then v222$2 else $$R$4$2);
    v223$1 := (if p2$1 then $$78$2$1 else v223$1);
    v223$2 := (if p2$2 then $$78$2$2 else v223$2);
    $$R$5$1 := (if p2$1 then v223$1 else $$R$5$1);
    $$R$5$2 := (if p2$2 then v223$2 else $$R$5$2);
    v224$1 := (if p2$1 then $$R$3$1 else v224$1);
    v224$2 := (if p2$2 then $$R$3$2 else v224$2);
    $$92$0$1 := (if p2$1 then v224$1 else $$92$0$1);
    $$92$0$2 := (if p2$2 then v224$2 else $$92$0$2);
    v225$1 := (if p2$1 then $$R$4$1 else v225$1);
    v225$2 := (if p2$2 then $$R$4$2 else v225$2);
    $$92$1$1 := (if p2$1 then v225$1 else $$92$1$1);
    $$92$1$2 := (if p2$2 then v225$2 else $$92$1$2);
    v226$1 := (if p2$1 then $$R$5$1 else v226$1);
    v226$2 := (if p2$2 then $$R$5$2 else v226$2);
    $$92$2$1 := (if p2$1 then v226$1 else $$92$2$1);
    $$92$2$2 := (if p2$2 then v226$2 else $$92$2$2);
    v227$1 := (if p2$1 then $$92$0$1 else v227$1);
    v227$2 := (if p2$2 then $$92$0$2 else v227$2);
    v228$1 := (if p2$1 then $$92$1$1 else v228$1);
    v228$2 := (if p2$2 then $$92$1$2 else v228$2);
    v229$1 := (if p2$1 then $$92$2$1 else v229$1);
    v229$2 := (if p2$2 then $$92$2$2 else v229$2);
    call {:sourceloc_num 448} v230$1, v230$2 := $_Z9normalize6float3(p2$1, v227$1, v228$1, v229$1, p2$2, v227$2, v228$2, v229$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9normalize6float3"} true;
    $$91$0$1 := (if p2$1 then BV_EXTRACT(v230$1, 32, 0) else $$91$0$1);
    $$91$0$2 := (if p2$2 then BV_EXTRACT(v230$2, 32, 0) else $$91$0$2);
    $$91$1$1 := (if p2$1 then BV_EXTRACT(v230$1, 64, 32) else $$91$1$1);
    $$91$1$2 := (if p2$2 then BV_EXTRACT(v230$2, 64, 32) else $$91$1$2);
    $$91$2$1 := (if p2$1 then BV_EXTRACT(v230$1, 96, 64) else $$91$2$1);
    $$91$2$2 := (if p2$2 then BV_EXTRACT(v230$2, 96, 64) else $$91$2$2);
    v231$1 := (if p2$1 then $$91$0$1 else v231$1);
    v231$2 := (if p2$2 then $$91$0$2 else v231$2);
    $$R$3$1 := (if p2$1 then v231$1 else $$R$3$1);
    $$R$3$2 := (if p2$2 then v231$2 else $$R$3$2);
    v232$1 := (if p2$1 then $$91$1$1 else v232$1);
    v232$2 := (if p2$2 then $$91$1$2 else v232$2);
    $$R$4$1 := (if p2$1 then v232$1 else $$R$4$1);
    $$R$4$2 := (if p2$2 then v232$2 else $$R$4$2);
    v233$1 := (if p2$1 then $$91$2$1 else v233$1);
    v233$2 := (if p2$2 then $$91$2$2 else v233$2);
    $$R$5$1 := (if p2$1 then v233$1 else $$R$5$1);
    $$R$5$2 := (if p2$2 then v233$2 else $$R$5$2);
    v234$1 := (if p2$1 then $$node$0$1 else v234$1);
    v234$2 := (if p2$2 then $$node$0$2 else v234$2);
    $$s$0$1 := (if p2$1 then v234$1 else $$s$0$1);
    $$s$0$2 := (if p2$2 then v234$2 else $$s$0$2);
    v235$1 := (if p2$1 then $$node$1$1 else v235$1);
    v235$2 := (if p2$2 then $$node$1$2 else v235$2);
    $$s$1$1 := (if p2$1 then v235$1 else $$s$1$1);
    $$s$1$2 := (if p2$2 then v235$2 else $$s$1$2);
    v236$1 := (if p2$1 then $$node$2$1 else v236$1);
    v236$2 := (if p2$2 then $$node$2$2 else v236$2);
    $$s$2$1 := (if p2$1 then v236$1 else $$s$2$1);
    $$s$2$2 := (if p2$2 then v236$2 else $$s$2$2);
    v237$1 := (if p2$1 then $$node$3$1 else v237$1);
    v237$2 := (if p2$2 then $$node$3$2 else v237$2);
    $$s$3$1 := (if p2$1 then v237$1 else $$s$3$1);
    $$s$3$2 := (if p2$2 then v237$2 else $$s$3$2);
    v238$1 := (if p2$1 then $$node$4$1 else v238$1);
    v238$2 := (if p2$2 then $$node$4$2 else v238$2);
    $$s$4$1 := (if p2$1 then v238$1 else $$s$4$1);
    $$s$4$2 := (if p2$2 then v238$2 else $$s$4$2);
    v239$1 := (if p2$1 then $$node$5$1 else v239$1);
    v239$2 := (if p2$2 then $$node$5$2 else v239$2);
    $$s$5$1 := (if p2$1 then v239$1 else $$s$5$1);
    $$s$5$2 := (if p2$2 then v239$2 else $$s$5$2);
    v240$1 := (if p2$1 then $$node$6$1 else v240$1);
    v240$2 := (if p2$2 then $$node$6$2 else v240$2);
    $$s$6$1 := (if p2$1 then v240$1 else $$s$6$1);
    $$s$6$2 := (if p2$2 then v240$2 else $$s$6$2);
    v241$1 := (if p2$1 then $$node$7$1 else v241$1);
    v241$2 := (if p2$2 then $$node$7$2 else v241$2);
    $$s$7$1 := (if p2$1 then v241$1 else $$s$7$1);
    $$s$7$2 := (if p2$2 then v241$2 else $$s$7$2);
    v242$1 := (if p2$1 then $$node$8$1 else v242$1);
    v242$2 := (if p2$2 then $$node$8$2 else v242$2);
    $$s$8$1 := (if p2$1 then v242$1 else $$s$8$1);
    $$s$8$2 := (if p2$2 then v242$2 else $$s$8$2);
    v243$1 := (if p2$1 then $$node$9$1 else v243$1);
    v243$2 := (if p2$2 then $$node$9$2 else v243$2);
    $$s$9$1 := (if p2$1 then v243$1 else $$s$9$1);
    $$s$9$2 := (if p2$2 then v243$2 else $$s$9$2);
    v244$1 := (if p2$1 then $$node$10$1 else v244$1);
    v244$2 := (if p2$2 then $$node$10$2 else v244$2);
    $$s$10$1 := (if p2$1 then v244$1 else $$s$10$1);
    $$s$10$2 := (if p2$2 then v244$2 else $$s$10$2);
    v245$1 := (if p2$1 then $$node$11$1 else v245$1);
    v245$2 := (if p2$2 then $$node$11$2 else v245$2);
    $$s$11$1 := (if p2$1 then v245$1 else $$s$11$1);
    $$s$11$2 := (if p2$2 then v245$2 else $$s$11$2);
    v246$1 := (if p2$1 then $$node$12$1 else v246$1);
    v246$2 := (if p2$2 then $$node$12$2 else v246$2);
    $$s$12$1 := (if p2$1 then v246$1 else $$s$12$1);
    $$s$12$2 := (if p2$2 then v246$2 else $$s$12$2);
    v247$1 := (if p2$1 then $$node$13$1 else v247$1);
    v247$2 := (if p2$2 then $$node$13$2 else v247$2);
    $$s$13$1 := (if p2$1 then v247$1 else $$s$13$1);
    $$s$13$2 := (if p2$2 then v247$2 else $$s$13$2);
    v248$1 := (if p2$1 then $$node$14$1 else v248$1);
    v248$2 := (if p2$2 then $$node$14$2 else v248$2);
    $$s$14$1 := (if p2$1 then v248$1 else $$s$14$1);
    $$s$14$2 := (if p2$2 then v248$2 else $$s$14$2);
    v249$1 := (if p2$1 then $$node$15$1 else v249$1);
    v249$2 := (if p2$2 then $$node$15$2 else v249$2);
    $$s$15$1 := (if p2$1 then v249$1 else $$s$15$1);
    $$s$15$2 := (if p2$2 then v249$2 else $$s$15$2);
    v250$1 := (if p2$1 then $$node$16$1 else v250$1);
    v250$2 := (if p2$2 then $$node$16$2 else v250$2);
    $$s$16$1 := (if p2$1 then v250$1 else $$s$16$1);
    $$s$16$2 := (if p2$2 then v250$2 else $$s$16$2);
    v251$1 := (if p2$1 then $$node$17$1 else v251$1);
    v251$2 := (if p2$2 then $$node$17$2 else v251$2);
    $$s$17$1 := (if p2$1 then v251$1 else $$s$17$1);
    $$s$17$2 := (if p2$2 then v251$2 else $$s$17$2);
    v252$1 := (if p2$1 then $$node$18$1 else v252$1);
    v252$2 := (if p2$2 then $$node$18$2 else v252$2);
    $$s$18$1 := (if p2$1 then v252$1 else $$s$18$1);
    $$s$18$2 := (if p2$2 then v252$2 else $$s$18$2);
    v253$1 := (if p2$1 then $$node$19$1 else v253$1);
    v253$2 := (if p2$2 then $$node$19$2 else v253$2);
    $$s$19$1 := (if p2$1 then v253$1 else $$s$19$1);
    $$s$19$2 := (if p2$2 then v253$2 else $$s$19$2);
    v254$1 := (if p2$1 then $$node$20$1 else v254$1);
    v254$2 := (if p2$2 then $$node$20$2 else v254$2);
    $$s$20$1 := (if p2$1 then v254$1 else $$s$20$1);
    $$s$20$2 := (if p2$2 then v254$2 else $$s$20$2);
    v255$1 := (if p2$1 then $$node$21$1 else v255$1);
    v255$2 := (if p2$2 then $$node$21$2 else v255$2);
    $$s$21$1 := (if p2$1 then v255$1 else $$s$21$1);
    $$s$21$2 := (if p2$2 then v255$2 else $$s$21$2);
    v256$1 := (if p2$1 then $$node$22$1 else v256$1);
    v256$2 := (if p2$2 then $$node$22$2 else v256$2);
    $$s$22$1 := (if p2$1 then v256$1 else $$s$22$1);
    $$s$22$2 := (if p2$2 then v256$2 else $$s$22$2);
    v257$1 := (if p2$1 then $$node$23$1 else v257$1);
    v257$2 := (if p2$2 then $$node$23$2 else v257$2);
    $$s$23$1 := (if p2$1 then v257$1 else $$s$23$1);
    $$s$23$2 := (if p2$2 then v257$2 else $$s$23$2);
    v258$1 := (if p2$1 then $$node$24$1 else v258$1);
    v258$2 := (if p2$2 then $$node$24$2 else v258$2);
    $$s$24$1 := (if p2$1 then v258$1 else $$s$24$1);
    $$s$24$2 := (if p2$2 then v258$2 else $$s$24$2);
    v259$1 := (if p2$1 then $$node$25$1 else v259$1);
    v259$2 := (if p2$2 then $$node$25$2 else v259$2);
    $$s$25$1 := (if p2$1 then v259$1 else $$s$25$1);
    $$s$25$2 := (if p2$2 then v259$2 else $$s$25$2);
    v260$1 := (if p2$1 then $$node$26$1 else v260$1);
    v260$2 := (if p2$2 then $$node$26$2 else v260$2);
    $$s$26$1 := (if p2$1 then v260$1 else $$s$26$1);
    $$s$26$2 := (if p2$2 then v260$2 else $$s$26$2);
    v261$1 := (if p2$1 then $$node$27$1 else v261$1);
    v261$2 := (if p2$2 then $$node$27$2 else v261$2);
    $$s$27$1 := (if p2$1 then v261$1 else $$s$27$1);
    $$s$27$2 := (if p2$2 then v261$2 else $$s$27$2);
    v262$1 := (if p2$1 then $$node$28$1 else v262$1);
    v262$2 := (if p2$2 then $$node$28$2 else v262$2);
    $$s$28$1 := (if p2$1 then v262$1 else $$s$28$1);
    $$s$28$2 := (if p2$2 then v262$2 else $$s$28$2);
    v263$1 := (if p2$1 then $$node$29$1 else v263$1);
    v263$2 := (if p2$2 then $$node$29$2 else v263$2);
    $$s$29$1 := (if p2$1 then v263$1 else $$s$29$1);
    $$s$29$2 := (if p2$2 then v263$2 else $$s$29$2);
    v264$1 := (if p2$1 then $$node$30$1 else v264$1);
    v264$2 := (if p2$2 then $$node$30$2 else v264$2);
    $$s$30$1 := (if p2$1 then v264$1 else $$s$30$1);
    $$s$30$2 := (if p2$2 then v264$2 else $$s$30$2);
    v265$1 := (if p2$1 then $$node$31$1 else v265$1);
    v265$2 := (if p2$2 then $$node$31$2 else v265$2);
    $$s$31$1 := (if p2$1 then v265$1 else $$s$31$1);
    $$s$31$2 := (if p2$2 then v265$2 else $$s$31$2);
    v266$1 := (if p2$1 then $$s$0$1 else v266$1);
    v266$2 := (if p2$2 then $$s$0$2 else v266$2);
    v267$1 := (if p2$1 then $$s$1$1 else v267$1);
    v267$2 := (if p2$2 then $$s$1$2 else v267$2);
    v268$1 := (if p2$1 then $$s$2$1 else v268$1);
    v268$2 := (if p2$2 then $$s$2$2 else v268$2);
    v269$1 := (if p2$1 then $$s$3$1 else v269$1);
    v269$2 := (if p2$2 then $$s$3$2 else v269$2);
    v270$1 := (if p2$1 then FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v269$1, v268$1), v267$1), v266$1), $pas) else v270$1);
    v270$2 := (if p2$2 then FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v269$2, v268$2), v267$2), v266$2), $pas) else v270$2);
    $$s$0$1 := (if p2$1 then BV_EXTRACT(v270$1, 8, 0) else $$s$0$1);
    $$s$0$2 := (if p2$2 then BV_EXTRACT(v270$2, 8, 0) else $$s$0$2);
    $$s$1$1 := (if p2$1 then BV_EXTRACT(v270$1, 16, 8) else $$s$1$1);
    $$s$1$2 := (if p2$2 then BV_EXTRACT(v270$2, 16, 8) else $$s$1$2);
    $$s$2$1 := (if p2$1 then BV_EXTRACT(v270$1, 24, 16) else $$s$2$1);
    $$s$2$2 := (if p2$2 then BV_EXTRACT(v270$2, 24, 16) else $$s$2$2);
    $$s$3$1 := (if p2$1 then BV_EXTRACT(v270$1, 32, 24) else $$s$3$1);
    $$s$3$2 := (if p2$2 then BV_EXTRACT(v270$2, 32, 24) else $$s$3$2);
    v271$1 := (if p2$1 then $$node$32$1 else v271$1);
    v271$2 := (if p2$2 then $$node$32$2 else v271$2);
    v272$1 := (if p2$1 then $$node$33$1 else v272$1);
    v272$2 := (if p2$2 then $$node$33$2 else v272$2);
    v273$1 := (if p2$1 then $$node$34$1 else v273$1);
    v273$2 := (if p2$2 then $$node$34$2 else v273$2);
    v274$1 := (if p2$1 then $$node$35$1 else v274$1);
    v274$2 := (if p2$2 then $$node$35$2 else v274$2);
    v275$1 := (if p2$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v274$1, v273$1), v272$1), v271$1) != 0 else v275$1);
    v275$2 := (if p2$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v274$2, v273$2), v272$2), v271$2) != 0 else v275$2);
    p5$1 := (if p2$1 && v275$1 then v275$1 else p5$1);
    p5$2 := (if p2$2 && v275$2 then v275$2 else p5$2);
    p10$1 := (if p2$1 && !v275$1 then !v275$1 else p10$1);
    p10$2 := (if p2$2 && !v275$2 then !v275$2 else p10$2);
    v276$1 := (if p5$1 then $$R$0$1 else v276$1);
    v276$2 := (if p5$2 then $$R$0$2 else v276$2);
    $$93$0$1 := (if p5$1 then v276$1 else $$93$0$1);
    $$93$0$2 := (if p5$2 then v276$2 else $$93$0$2);
    v277$1 := (if p5$1 then $$R$1$1 else v277$1);
    v277$2 := (if p5$2 then $$R$1$2 else v277$2);
    $$93$1$1 := (if p5$1 then v277$1 else $$93$1$1);
    $$93$1$2 := (if p5$2 then v277$2 else $$93$1$2);
    v278$1 := (if p5$1 then $$R$2$1 else v278$1);
    v278$2 := (if p5$2 then $$R$2$2 else v278$2);
    $$93$2$1 := (if p5$1 then v278$1 else $$93$2$1);
    $$93$2$2 := (if p5$2 then v278$2 else $$93$2$2);
    v279$1 := (if p5$1 then $$R$3$1 else v279$1);
    v279$2 := (if p5$2 then $$R$3$2 else v279$2);
    $$93$3$1 := (if p5$1 then v279$1 else $$93$3$1);
    $$93$3$2 := (if p5$2 then v279$2 else $$93$3$2);
    v280$1 := (if p5$1 then $$R$4$1 else v280$1);
    v280$2 := (if p5$2 then $$R$4$2 else v280$2);
    $$93$4$1 := (if p5$1 then v280$1 else $$93$4$1);
    $$93$4$2 := (if p5$2 then v280$2 else $$93$4$2);
    v281$1 := (if p5$1 then $$R$5$1 else v281$1);
    v281$2 := (if p5$2 then $$R$5$2 else v281$2);
    $$93$5$1 := (if p5$1 then v281$1 else $$93$5$1);
    $$93$5$2 := (if p5$2 then v281$2 else $$93$5$2);
    v282$1 := (if p5$1 then $$s$0$1 else v282$1);
    v282$2 := (if p5$2 then $$s$0$2 else v282$2);
    $$94$0$1 := (if p5$1 then v282$1 else $$94$0$1);
    $$94$0$2 := (if p5$2 then v282$2 else $$94$0$2);
    v283$1 := (if p5$1 then $$s$1$1 else v283$1);
    v283$2 := (if p5$2 then $$s$1$2 else v283$2);
    $$94$1$1 := (if p5$1 then v283$1 else $$94$1$1);
    $$94$1$2 := (if p5$2 then v283$2 else $$94$1$2);
    v284$1 := (if p5$1 then $$s$2$1 else v284$1);
    v284$2 := (if p5$2 then $$s$2$2 else v284$2);
    $$94$2$1 := (if p5$1 then v284$1 else $$94$2$1);
    $$94$2$2 := (if p5$2 then v284$2 else $$94$2$2);
    v285$1 := (if p5$1 then $$s$3$1 else v285$1);
    v285$2 := (if p5$2 then $$s$3$2 else v285$2);
    $$94$3$1 := (if p5$1 then v285$1 else $$94$3$1);
    $$94$3$2 := (if p5$2 then v285$2 else $$94$3$2);
    v286$1 := (if p5$1 then $$s$4$1 else v286$1);
    v286$2 := (if p5$2 then $$s$4$2 else v286$2);
    $$94$4$1 := (if p5$1 then v286$1 else $$94$4$1);
    $$94$4$2 := (if p5$2 then v286$2 else $$94$4$2);
    v287$1 := (if p5$1 then $$s$5$1 else v287$1);
    v287$2 := (if p5$2 then $$s$5$2 else v287$2);
    $$94$5$1 := (if p5$1 then v287$1 else $$94$5$1);
    $$94$5$2 := (if p5$2 then v287$2 else $$94$5$2);
    v288$1 := (if p5$1 then $$s$6$1 else v288$1);
    v288$2 := (if p5$2 then $$s$6$2 else v288$2);
    $$94$6$1 := (if p5$1 then v288$1 else $$94$6$1);
    $$94$6$2 := (if p5$2 then v288$2 else $$94$6$2);
    v289$1 := (if p5$1 then $$s$7$1 else v289$1);
    v289$2 := (if p5$2 then $$s$7$2 else v289$2);
    $$94$7$1 := (if p5$1 then v289$1 else $$94$7$1);
    $$94$7$2 := (if p5$2 then v289$2 else $$94$7$2);
    v290$1 := (if p5$1 then $$s$8$1 else v290$1);
    v290$2 := (if p5$2 then $$s$8$2 else v290$2);
    $$94$8$1 := (if p5$1 then v290$1 else $$94$8$1);
    $$94$8$2 := (if p5$2 then v290$2 else $$94$8$2);
    v291$1 := (if p5$1 then $$s$9$1 else v291$1);
    v291$2 := (if p5$2 then $$s$9$2 else v291$2);
    $$94$9$1 := (if p5$1 then v291$1 else $$94$9$1);
    $$94$9$2 := (if p5$2 then v291$2 else $$94$9$2);
    v292$1 := (if p5$1 then $$s$10$1 else v292$1);
    v292$2 := (if p5$2 then $$s$10$2 else v292$2);
    $$94$10$1 := (if p5$1 then v292$1 else $$94$10$1);
    $$94$10$2 := (if p5$2 then v292$2 else $$94$10$2);
    v293$1 := (if p5$1 then $$s$11$1 else v293$1);
    v293$2 := (if p5$2 then $$s$11$2 else v293$2);
    $$94$11$1 := (if p5$1 then v293$1 else $$94$11$1);
    $$94$11$2 := (if p5$2 then v293$2 else $$94$11$2);
    v294$1 := (if p5$1 then $$s$0$1 else v294$1);
    v294$2 := (if p5$2 then $$s$0$2 else v294$2);
    $$95$0$1 := (if p5$1 then v294$1 else $$95$0$1);
    $$95$0$2 := (if p5$2 then v294$2 else $$95$0$2);
    v295$1 := (if p5$1 then $$s$1$1 else v295$1);
    v295$2 := (if p5$2 then $$s$1$2 else v295$2);
    $$95$1$1 := (if p5$1 then v295$1 else $$95$1$1);
    $$95$1$2 := (if p5$2 then v295$2 else $$95$1$2);
    v296$1 := (if p5$1 then $$s$2$1 else v296$1);
    v296$2 := (if p5$2 then $$s$2$2 else v296$2);
    $$95$2$1 := (if p5$1 then v296$1 else $$95$2$1);
    $$95$2$2 := (if p5$2 then v296$2 else $$95$2$2);
    v297$1 := (if p5$1 then $$s$3$1 else v297$1);
    v297$2 := (if p5$2 then $$s$3$2 else v297$2);
    $$95$3$1 := (if p5$1 then v297$1 else $$95$3$1);
    $$95$3$2 := (if p5$2 then v297$2 else $$95$3$2);
    v298$1 := (if p5$1 then $$s$4$1 else v298$1);
    v298$2 := (if p5$2 then $$s$4$2 else v298$2);
    $$95$4$1 := (if p5$1 then v298$1 else $$95$4$1);
    $$95$4$2 := (if p5$2 then v298$2 else $$95$4$2);
    v299$1 := (if p5$1 then $$s$5$1 else v299$1);
    v299$2 := (if p5$2 then $$s$5$2 else v299$2);
    $$95$5$1 := (if p5$1 then v299$1 else $$95$5$1);
    $$95$5$2 := (if p5$2 then v299$2 else $$95$5$2);
    v300$1 := (if p5$1 then $$s$6$1 else v300$1);
    v300$2 := (if p5$2 then $$s$6$2 else v300$2);
    $$95$6$1 := (if p5$1 then v300$1 else $$95$6$1);
    $$95$6$2 := (if p5$2 then v300$2 else $$95$6$2);
    v301$1 := (if p5$1 then $$s$7$1 else v301$1);
    v301$2 := (if p5$2 then $$s$7$2 else v301$2);
    $$95$7$1 := (if p5$1 then v301$1 else $$95$7$1);
    $$95$7$2 := (if p5$2 then v301$2 else $$95$7$2);
    v302$1 := (if p5$1 then $$s$8$1 else v302$1);
    v302$2 := (if p5$2 then $$s$8$2 else v302$2);
    $$95$8$1 := (if p5$1 then v302$1 else $$95$8$1);
    $$95$8$2 := (if p5$2 then v302$2 else $$95$8$2);
    v303$1 := (if p5$1 then $$s$9$1 else v303$1);
    v303$2 := (if p5$2 then $$s$9$2 else v303$2);
    $$95$9$1 := (if p5$1 then v303$1 else $$95$9$1);
    $$95$9$2 := (if p5$2 then v303$2 else $$95$9$2);
    v304$1 := (if p5$1 then $$s$10$1 else v304$1);
    v304$2 := (if p5$2 then $$s$10$2 else v304$2);
    $$95$10$1 := (if p5$1 then v304$1 else $$95$10$1);
    $$95$10$2 := (if p5$2 then v304$2 else $$95$10$2);
    v305$1 := (if p5$1 then $$s$11$1 else v305$1);
    v305$2 := (if p5$2 then $$s$11$2 else v305$2);
    $$95$11$1 := (if p5$1 then v305$1 else $$95$11$1);
    $$95$11$2 := (if p5$2 then v305$2 else $$95$11$2);
    v306$1 := (if p5$1 then $$93$0$1 else v306$1);
    v306$2 := (if p5$2 then $$93$0$2 else v306$2);
    v307$1 := (if p5$1 then $$93$1$1 else v307$1);
    v307$2 := (if p5$2 then $$93$1$2 else v307$2);
    v308$1 := (if p5$1 then $$93$2$1 else v308$1);
    v308$2 := (if p5$2 then $$93$2$2 else v308$2);
    v309$1 := (if p5$1 then $$93$3$1 else v309$1);
    v309$2 := (if p5$2 then $$93$3$2 else v309$2);
    v310$1 := (if p5$1 then $$93$4$1 else v310$1);
    v310$2 := (if p5$2 then $$93$4$2 else v310$2);
    v311$1 := (if p5$1 then $$93$5$1 else v311$1);
    v311$2 := (if p5$2 then $$93$5$2 else v311$2);
    v312$1 := (if p5$1 then $$94$0$1 else v312$1);
    v312$2 := (if p5$2 then $$94$0$2 else v312$2);
    v313$1 := (if p5$1 then $$94$1$1 else v313$1);
    v313$2 := (if p5$2 then $$94$1$2 else v313$2);
    v314$1 := (if p5$1 then $$94$2$1 else v314$1);
    v314$2 := (if p5$2 then $$94$2$2 else v314$2);
    v315$1 := (if p5$1 then $$94$3$1 else v315$1);
    v315$2 := (if p5$2 then $$94$3$2 else v315$2);
    v316$1 := (if p5$1 then $$94$4$1 else v316$1);
    v316$2 := (if p5$2 then $$94$4$2 else v316$2);
    v317$1 := (if p5$1 then $$94$5$1 else v317$1);
    v317$2 := (if p5$2 then $$94$5$2 else v317$2);
    v318$1 := (if p5$1 then $$94$6$1 else v318$1);
    v318$2 := (if p5$2 then $$94$6$2 else v318$2);
    v319$1 := (if p5$1 then $$94$7$1 else v319$1);
    v319$2 := (if p5$2 then $$94$7$2 else v319$2);
    v320$1 := (if p5$1 then $$94$8$1 else v320$1);
    v320$2 := (if p5$2 then $$94$8$2 else v320$2);
    v321$1 := (if p5$1 then $$94$9$1 else v321$1);
    v321$2 := (if p5$2 then $$94$9$2 else v321$2);
    v322$1 := (if p5$1 then $$94$10$1 else v322$1);
    v322$2 := (if p5$2 then $$94$10$2 else v322$2);
    v323$1 := (if p5$1 then $$94$11$1 else v323$1);
    v323$2 := (if p5$2 then $$94$11$2 else v323$2);
    v324$1 := (if p5$1 then $$95$0$1 else v324$1);
    v324$2 := (if p5$2 then $$95$0$2 else v324$2);
    v325$1 := (if p5$1 then $$95$1$1 else v325$1);
    v325$2 := (if p5$2 then $$95$1$2 else v325$2);
    v326$1 := (if p5$1 then $$95$2$1 else v326$1);
    v326$2 := (if p5$2 then $$95$2$2 else v326$2);
    v327$1 := (if p5$1 then $$95$3$1 else v327$1);
    v327$2 := (if p5$2 then $$95$3$2 else v327$2);
    v328$1 := (if p5$1 then $$95$4$1 else v328$1);
    v328$2 := (if p5$2 then $$95$4$2 else v328$2);
    v329$1 := (if p5$1 then $$95$5$1 else v329$1);
    v329$2 := (if p5$2 then $$95$5$2 else v329$2);
    v330$1 := (if p5$1 then $$95$6$1 else v330$1);
    v330$2 := (if p5$2 then $$95$6$2 else v330$2);
    v331$1 := (if p5$1 then $$95$7$1 else v331$1);
    v331$2 := (if p5$2 then $$95$7$2 else v331$2);
    v332$1 := (if p5$1 then $$95$8$1 else v332$1);
    v332$2 := (if p5$2 then $$95$8$2 else v332$2);
    v333$1 := (if p5$1 then $$95$9$1 else v333$1);
    v333$2 := (if p5$2 then $$95$9$2 else v333$2);
    v334$1 := (if p5$1 then $$95$10$1 else v334$1);
    v334$2 := (if p5$2 then $$95$10$2 else v334$2);
    v335$1 := (if p5$1 then $$95$11$1 else v335$1);
    v335$2 := (if p5$2 then $$95$11$2 else v335$2);
    $$R.i28$0$1 := (if p5$1 then v306$1 else $$R.i28$0$1);
    $$R.i28$0$2 := (if p5$2 then v306$2 else $$R.i28$0$2);
    $$R.i28$1$1 := (if p5$1 then v307$1 else $$R.i28$1$1);
    $$R.i28$1$2 := (if p5$2 then v307$2 else $$R.i28$1$2);
    $$R.i28$2$1 := (if p5$1 then v308$1 else $$R.i28$2$1);
    $$R.i28$2$2 := (if p5$2 then v308$2 else $$R.i28$2$2);
    $$R.i28$3$1 := (if p5$1 then v309$1 else $$R.i28$3$1);
    $$R.i28$3$2 := (if p5$2 then v309$2 else $$R.i28$3$2);
    $$R.i28$4$1 := (if p5$1 then v310$1 else $$R.i28$4$1);
    $$R.i28$4$2 := (if p5$2 then v310$2 else $$R.i28$4$2);
    $$R.i28$5$1 := (if p5$1 then v311$1 else $$R.i28$5$1);
    $$R.i28$5$2 := (if p5$2 then v311$2 else $$R.i28$5$2);
    $$C.i29$0$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v315$1, v314$1), v313$1), v312$1) else $$C.i29$0$1);
    $$C.i29$0$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v315$2, v314$2), v313$2), v312$2) else $$C.i29$0$2);
    $$C.i29$1$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v319$1, v318$1), v317$1), v316$1) else $$C.i29$1$1);
    $$C.i29$1$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v319$2, v318$2), v317$2), v316$2) else $$C.i29$1$2);
    $$C.i29$2$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v323$1, v322$1), v321$1), v320$1) else $$C.i29$2$1);
    $$C.i29$2$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v323$2, v322$2), v321$2), v320$2) else $$C.i29$2$2);
    $$N2.i$0$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v327$1, v326$1), v325$1), v324$1) else $$N2.i$0$1);
    $$N2.i$0$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v327$2, v326$2), v325$2), v324$2) else $$N2.i$0$2);
    $$N2.i$1$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v331$1, v330$1), v329$1), v328$1) else $$N2.i$1$1);
    $$N2.i$1$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v331$2, v330$2), v329$2), v328$2) else $$N2.i$1$2);
    $$N2.i$2$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v335$1, v334$1), v333$1), v332$1) else $$N2.i$2$1);
    $$N2.i$2$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v335$2, v334$2), v333$2), v332$2) else $$N2.i$2$2);
    $$8$0$1 := (if p5$1 then 0 else $$8$0$1);
    $$8$0$2 := (if p5$2 then 0 else $$8$0$2);
    $$8$1$1 := (if p5$1 then 1065353216 else $$8$1$1);
    $$8$1$2 := (if p5$2 then 1065353216 else $$8$1$2);
    $$8$2$1 := (if p5$1 then 0 else $$8$2$1);
    $$8$2$2 := (if p5$2 then 0 else $$8$2$2);
    v336$1 := (if p5$1 then $$8$0$1 else v336$1);
    v336$2 := (if p5$2 then $$8$0$2 else v336$2);
    v337$1 := (if p5$1 then $$8$1$1 else v337$1);
    v337$2 := (if p5$2 then $$8$1$2 else v337$2);
    v338$1 := (if p5$1 then $$8$2$1 else v338$1);
    v338$2 := (if p5$2 then $$8$2$2 else v338$2);
    $$9$0$1 := (if p5$1 then v336$1 else $$9$0$1);
    $$9$0$2 := (if p5$2 then v336$2 else $$9$0$2);
    $$9$1$1 := (if p5$1 then v337$1 else $$9$1$1);
    $$9$1$2 := (if p5$2 then v337$2 else $$9$1$2);
    $$9$2$1 := (if p5$1 then v338$1 else $$9$2$1);
    $$9$2$2 := (if p5$2 then v338$2 else $$9$2$2);
    v339$1 := (if p5$1 then $$9$0$1 else v339$1);
    v339$2 := (if p5$2 then $$9$0$2 else v339$2);
    v340$1 := (if p5$1 then $$9$1$1 else v340$1);
    v340$2 := (if p5$2 then $$9$1$2 else v340$2);
    v341$1 := (if p5$1 then $$9$2$1 else v341$1);
    v341$2 := (if p5$2 then $$9$2$2 else v341$2);
    call {:sourceloc_num 649} v342$1, v342$2 := $_Z9normalize6float3(p5$1, v339$1, v340$1, v341$1, p5$2, v339$2, v340$2, v341$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9normalize6float3"} true;
    $$N.i$0$1 := (if p5$1 then BV_EXTRACT(v342$1, 32, 0) else $$N.i$0$1);
    $$N.i$0$2 := (if p5$2 then BV_EXTRACT(v342$2, 32, 0) else $$N.i$0$2);
    $$N.i$1$1 := (if p5$1 then BV_EXTRACT(v342$1, 64, 32) else $$N.i$1$1);
    $$N.i$1$2 := (if p5$2 then BV_EXTRACT(v342$2, 64, 32) else $$N.i$1$2);
    $$N.i$2$1 := (if p5$1 then BV_EXTRACT(v342$1, 96, 64) else $$N.i$2$1);
    $$N.i$2$2 := (if p5$2 then BV_EXTRACT(v342$2, 96, 64) else $$N.i$2$2);
    v343$1 := (if p5$1 then $$N.i$0$1 else v343$1);
    v343$2 := (if p5$2 then $$N.i$0$2 else v343$2);
    $$10$0$1 := (if p5$1 then v343$1 else $$10$0$1);
    $$10$0$2 := (if p5$2 then v343$2 else $$10$0$2);
    v344$1 := (if p5$1 then $$N.i$1$1 else v344$1);
    v344$2 := (if p5$2 then $$N.i$1$2 else v344$2);
    $$10$1$1 := (if p5$1 then v344$1 else $$10$1$1);
    $$10$1$2 := (if p5$2 then v344$2 else $$10$1$2);
    v345$1 := (if p5$1 then $$N.i$2$1 else v345$1);
    v345$2 := (if p5$2 then $$N.i$2$2 else v345$2);
    $$10$2$1 := (if p5$1 then v345$1 else $$10$2$1);
    $$10$2$2 := (if p5$2 then v345$2 else $$10$2$2);
    v346$1 := (if p5$1 then $$R.i28$3$1 else v346$1);
    v346$2 := (if p5$2 then $$R.i28$3$2 else v346$2);
    $$11$0$1 := (if p5$1 then v346$1 else $$11$0$1);
    $$11$0$2 := (if p5$2 then v346$2 else $$11$0$2);
    v347$1 := (if p5$1 then $$R.i28$4$1 else v347$1);
    v347$2 := (if p5$2 then $$R.i28$4$2 else v347$2);
    $$11$1$1 := (if p5$1 then v347$1 else $$11$1$1);
    $$11$1$2 := (if p5$2 then v347$2 else $$11$1$2);
    v348$1 := (if p5$1 then $$R.i28$5$1 else v348$1);
    v348$2 := (if p5$2 then $$R.i28$5$2 else v348$2);
    $$11$2$1 := (if p5$1 then v348$1 else $$11$2$1);
    $$11$2$2 := (if p5$2 then v348$2 else $$11$2$2);
    v349$1 := (if p5$1 then $$10$0$1 else v349$1);
    v349$2 := (if p5$2 then $$10$0$2 else v349$2);
    v350$1 := (if p5$1 then $$10$1$1 else v350$1);
    v350$2 := (if p5$2 then $$10$1$2 else v350$2);
    v351$1 := (if p5$1 then $$10$2$1 else v351$1);
    v351$2 := (if p5$2 then $$10$2$2 else v351$2);
    v352$1 := (if p5$1 then $$11$0$1 else v352$1);
    v352$2 := (if p5$2 then $$11$0$2 else v352$2);
    v353$1 := (if p5$1 then $$11$1$1 else v353$1);
    v353$2 := (if p5$2 then $$11$1$2 else v353$2);
    v354$1 := (if p5$1 then $$11$2$1 else v354$1);
    v354$2 := (if p5$2 then $$11$2$2 else v354$2);
    call {:sourceloc_num 671} v355$1, v355$2 := $_Z3dot6float3S_(p5$1, v349$1, v350$1, v351$1, v352$1, v353$1, v354$1, p5$2, v349$2, v350$2, v351$2, v352$2, v353$2, v354$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    call {:sourceloc_num 672} v356$1, v356$2 := $fabs(p5$1, FP32_CONV64(v355$1), p5$2, FP32_CONV64(v355$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$fabs"} true;
    v357$1 := (if p5$1 then FLT64(v356$1, 4547007121832542208) else v357$1);
    v357$2 := (if p5$2 then FLT64(v356$2, 4547007121832542208) else v357$2);
    p6$1 := (if p5$1 && v357$1 then v357$1 else p6$1);
    p6$2 := (if p5$2 && v357$2 then v357$2 else p6$2);
    p7$1 := (if p5$1 && !v357$1 then !v357$1 else p7$1);
    p7$2 := (if p5$2 && !v357$2 then !v357$2 else p7$2);
    $res.i30.1$1 := (if p6$1 then 0 else $res.i30.1$1);
    $res.i30.1$2 := (if p6$2 then 0 else $res.i30.1$2);
    v358$1 := (if p7$1 then $$R.i28$0$1 else v358$1);
    v358$2 := (if p7$2 then $$R.i28$0$2 else v358$2);
    $$13$0$1 := (if p7$1 then v358$1 else $$13$0$1);
    $$13$0$2 := (if p7$2 then v358$2 else $$13$0$2);
    v359$1 := (if p7$1 then $$R.i28$1$1 else v359$1);
    v359$2 := (if p7$2 then $$R.i28$1$2 else v359$2);
    $$13$1$1 := (if p7$1 then v359$1 else $$13$1$1);
    $$13$1$2 := (if p7$2 then v359$2 else $$13$1$2);
    v360$1 := (if p7$1 then $$R.i28$2$1 else v360$1);
    v360$2 := (if p7$2 then $$R.i28$2$2 else v360$2);
    $$13$2$1 := (if p7$1 then v360$1 else $$13$2$1);
    $$13$2$2 := (if p7$2 then v360$2 else $$13$2$2);
    v361$1 := (if p7$1 then $$C.i29$0$1 else v361$1);
    v361$2 := (if p7$2 then $$C.i29$0$2 else v361$2);
    $$14$0$1 := (if p7$1 then v361$1 else $$14$0$1);
    $$14$0$2 := (if p7$2 then v361$2 else $$14$0$2);
    v362$1 := (if p7$1 then $$C.i29$1$1 else v362$1);
    v362$2 := (if p7$2 then $$C.i29$1$2 else v362$2);
    $$14$1$1 := (if p7$1 then v362$1 else $$14$1$1);
    $$14$1$2 := (if p7$2 then v362$2 else $$14$1$2);
    v363$1 := (if p7$1 then $$C.i29$2$1 else v363$1);
    v363$2 := (if p7$2 then $$C.i29$2$2 else v363$2);
    $$14$2$1 := (if p7$1 then v363$1 else $$14$2$1);
    $$14$2$2 := (if p7$2 then v363$2 else $$14$2$2);
    v364$1 := (if p7$1 then $$13$0$1 else v364$1);
    v364$2 := (if p7$2 then $$13$0$2 else v364$2);
    v365$1 := (if p7$1 then $$13$1$1 else v365$1);
    v365$2 := (if p7$2 then $$13$1$2 else v365$2);
    v366$1 := (if p7$1 then $$13$2$1 else v366$1);
    v366$2 := (if p7$2 then $$13$2$2 else v366$2);
    v367$1 := (if p7$1 then $$14$0$1 else v367$1);
    v367$2 := (if p7$2 then $$14$0$2 else v367$2);
    v368$1 := (if p7$1 then $$14$1$1 else v368$1);
    v368$2 := (if p7$2 then $$14$1$2 else v368$2);
    v369$1 := (if p7$1 then $$14$2$1 else v369$1);
    v369$2 := (if p7$2 then $$14$2$2 else v369$2);
    $$a.i.i26$0$1 := (if p7$1 then v364$1 else $$a.i.i26$0$1);
    $$a.i.i26$0$2 := (if p7$2 then v364$2 else $$a.i.i26$0$2);
    $$a.i.i26$1$1 := (if p7$1 then v365$1 else $$a.i.i26$1$1);
    $$a.i.i26$1$2 := (if p7$2 then v365$2 else $$a.i.i26$1$2);
    $$a.i.i26$2$1 := (if p7$1 then v366$1 else $$a.i.i26$2$1);
    $$a.i.i26$2$2 := (if p7$2 then v366$2 else $$a.i.i26$2$2);
    $$b.i.i27$0$1 := (if p7$1 then v367$1 else $$b.i.i27$0$1);
    $$b.i.i27$0$2 := (if p7$2 then v367$2 else $$b.i.i27$0$2);
    $$b.i.i27$1$1 := (if p7$1 then v368$1 else $$b.i.i27$1$1);
    $$b.i.i27$1$2 := (if p7$2 then v368$2 else $$b.i.i27$1$2);
    $$b.i.i27$2$1 := (if p7$1 then v369$1 else $$b.i.i27$2$1);
    $$b.i.i27$2$2 := (if p7$2 then v369$2 else $$b.i.i27$2$2);
    v370$1 := (if p7$1 then $$a.i.i26$0$1 else v370$1);
    v370$2 := (if p7$2 then $$a.i.i26$0$2 else v370$2);
    v371$1 := (if p7$1 then $$b.i.i27$0$1 else v371$1);
    v371$2 := (if p7$2 then $$b.i.i27$0$2 else v371$2);
    v372$1 := (if p7$1 then $$a.i.i26$1$1 else v372$1);
    v372$2 := (if p7$2 then $$a.i.i26$1$2 else v372$2);
    v373$1 := (if p7$1 then $$b.i.i27$1$1 else v373$1);
    v373$2 := (if p7$2 then $$b.i.i27$1$2 else v373$2);
    v374$1 := (if p7$1 then $$a.i.i26$2$1 else v374$1);
    v374$2 := (if p7$2 then $$a.i.i26$2$2 else v374$2);
    v375$1 := (if p7$1 then $$b.i.i27$2$1 else v375$1);
    v375$2 := (if p7$2 then $$b.i.i27$2$2 else v375$2);
    $$6$0$1 := (if p7$1 then FSUB32(v370$1, v371$1) else $$6$0$1);
    $$6$0$2 := (if p7$2 then FSUB32(v370$2, v371$2) else $$6$0$2);
    $$6$1$1 := (if p7$1 then FSUB32(v372$1, v373$1) else $$6$1$1);
    $$6$1$2 := (if p7$2 then FSUB32(v372$2, v373$2) else $$6$1$2);
    $$6$2$1 := (if p7$1 then FSUB32(v374$1, v375$1) else $$6$2$1);
    $$6$2$2 := (if p7$2 then FSUB32(v374$2, v375$2) else $$6$2$2);
    v376$1 := (if p7$1 then $$6$0$1 else v376$1);
    v376$2 := (if p7$2 then $$6$0$2 else v376$2);
    v377$1 := (if p7$1 then $$6$1$1 else v377$1);
    v377$2 := (if p7$2 then $$6$1$2 else v377$2);
    v378$1 := (if p7$1 then $$6$2$1 else v378$1);
    v378$2 := (if p7$2 then $$6$2$2 else v378$2);
    $$7$0$1 := (if p7$1 then v376$1 else $$7$0$1);
    $$7$0$2 := (if p7$2 then v376$2 else $$7$0$2);
    $$7$1$1 := (if p7$1 then v377$1 else $$7$1$1);
    $$7$1$2 := (if p7$2 then v377$2 else $$7$1$2);
    $$7$2$1 := (if p7$1 then v378$1 else $$7$2$1);
    $$7$2$2 := (if p7$2 then v378$2 else $$7$2$2);
    v379$1 := (if p7$1 then $$7$0$1 else v379$1);
    v379$2 := (if p7$2 then $$7$0$2 else v379$2);
    v380$1 := (if p7$1 then $$7$1$1 else v380$1);
    v380$2 := (if p7$2 then $$7$1$2 else v380$2);
    v381$1 := (if p7$1 then $$7$2$1 else v381$1);
    v381$2 := (if p7$2 then $$7$2$2 else v381$2);
    $$12$0$1 := (if p7$1 then v379$1 else $$12$0$1);
    $$12$0$2 := (if p7$2 then v379$2 else $$12$0$2);
    $$12$1$1 := (if p7$1 then v380$1 else $$12$1$1);
    $$12$1$2 := (if p7$2 then v380$2 else $$12$1$2);
    $$12$2$1 := (if p7$1 then v381$1 else $$12$2$1);
    $$12$2$2 := (if p7$2 then v381$2 else $$12$2$2);
    v382$1 := (if p7$1 then $$12$0$1 else v382$1);
    v382$2 := (if p7$2 then $$12$0$2 else v382$2);
    $$L.i32$0$1 := (if p7$1 then v382$1 else $$L.i32$0$1);
    $$L.i32$0$2 := (if p7$2 then v382$2 else $$L.i32$0$2);
    v383$1 := (if p7$1 then $$12$1$1 else v383$1);
    v383$2 := (if p7$2 then $$12$1$2 else v383$2);
    $$L.i32$1$1 := (if p7$1 then v383$1 else $$L.i32$1$1);
    $$L.i32$1$2 := (if p7$2 then v383$2 else $$L.i32$1$2);
    v384$1 := (if p7$1 then $$12$2$1 else v384$1);
    v384$2 := (if p7$2 then $$12$2$2 else v384$2);
    $$L.i32$2$1 := (if p7$1 then v384$1 else $$L.i32$2$1);
    $$L.i32$2$2 := (if p7$2 then v384$2 else $$L.i32$2$2);
    v385$1 := (if p7$1 then $$N.i$0$1 else v385$1);
    v385$2 := (if p7$2 then $$N.i$0$2 else v385$2);
    $$15$0$1 := (if p7$1 then v385$1 else $$15$0$1);
    $$15$0$2 := (if p7$2 then v385$2 else $$15$0$2);
    v386$1 := (if p7$1 then $$N.i$1$1 else v386$1);
    v386$2 := (if p7$2 then $$N.i$1$2 else v386$2);
    $$15$1$1 := (if p7$1 then v386$1 else $$15$1$1);
    $$15$1$2 := (if p7$2 then v386$2 else $$15$1$2);
    v387$1 := (if p7$1 then $$N.i$2$1 else v387$1);
    v387$2 := (if p7$2 then $$N.i$2$2 else v387$2);
    $$15$2$1 := (if p7$1 then v387$1 else $$15$2$1);
    $$15$2$2 := (if p7$2 then v387$2 else $$15$2$2);
    v388$1 := (if p7$1 then $$L.i32$0$1 else v388$1);
    v388$2 := (if p7$2 then $$L.i32$0$2 else v388$2);
    $$16$0$1 := (if p7$1 then v388$1 else $$16$0$1);
    $$16$0$2 := (if p7$2 then v388$2 else $$16$0$2);
    v389$1 := (if p7$1 then $$L.i32$1$1 else v389$1);
    v389$2 := (if p7$2 then $$L.i32$1$2 else v389$2);
    $$16$1$1 := (if p7$1 then v389$1 else $$16$1$1);
    $$16$1$2 := (if p7$2 then v389$2 else $$16$1$2);
    v390$1 := (if p7$1 then $$L.i32$2$1 else v390$1);
    v390$2 := (if p7$2 then $$L.i32$2$2 else v390$2);
    $$16$2$1 := (if p7$1 then v390$1 else $$16$2$1);
    $$16$2$2 := (if p7$2 then v390$2 else $$16$2$2);
    v391$1 := (if p7$1 then $$15$0$1 else v391$1);
    v391$2 := (if p7$2 then $$15$0$2 else v391$2);
    v392$1 := (if p7$1 then $$15$1$1 else v392$1);
    v392$2 := (if p7$2 then $$15$1$2 else v392$2);
    v393$1 := (if p7$1 then $$15$2$1 else v393$1);
    v393$2 := (if p7$2 then $$15$2$2 else v393$2);
    v394$1 := (if p7$1 then $$16$0$1 else v394$1);
    v394$2 := (if p7$2 then $$16$0$2 else v394$2);
    v395$1 := (if p7$1 then $$16$1$1 else v395$1);
    v395$2 := (if p7$2 then $$16$1$2 else v395$2);
    v396$1 := (if p7$1 then $$16$2$1 else v396$1);
    v396$2 := (if p7$2 then $$16$2$2 else v396$2);
    call {:sourceloc_num 744} v397$1, v397$2 := $_Z3dot6float3S_(p7$1, v391$1, v392$1, v393$1, v394$1, v395$1, v396$1, p7$2, v391$2, v392$2, v393$2, v394$2, v395$2, v396$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    v398$1 := (if p7$1 then FDIV32(FSUB32(-2147483648, v397$1), v355$1) else v398$1);
    v398$2 := (if p7$2 then FDIV32(FSUB32(-2147483648, v397$2), v355$2) else v398$2);
    v399$1 := (if p7$1 then FLT32(0, v398$1) else v399$1);
    v399$2 := (if p7$2 then FLT32(0, v398$2) else v399$2);
    p8$1 := (if p7$1 && v399$1 then v399$1 else p8$1);
    p8$2 := (if p7$2 && v399$2 then v399$2 else p8$2);
    p9$1 := (if p7$1 && !v399$1 then !v399$1 else p9$1);
    p9$2 := (if p7$2 && !v399$2 then !v399$2 else p9$2);
    $res.i30.0$1 := (if p8$1 then v398$1 else $res.i30.0$1);
    $res.i30.0$2 := (if p8$2 then v398$2 else $res.i30.0$2);
    $res.i30.0$1 := (if p9$1 then 0 else $res.i30.0$1);
    $res.i30.0$2 := (if p9$2 then 0 else $res.i30.0$2);
    $res.i30.1$1 := (if p7$1 then $res.i30.0$1 else $res.i30.1$1);
    $res.i30.1$2 := (if p7$2 then $res.i30.0$2 else $res.i30.1$2);
    $t.0$1 := (if p5$1 then $res.i30.1$1 else $t.0$1);
    $t.0$2 := (if p5$2 then $res.i30.1$2 else $t.0$2);
    v400$1 := (if p10$1 then $$R$0$1 else v400$1);
    v400$2 := (if p10$2 then $$R$0$2 else v400$2);
    $$96$0$1 := (if p10$1 then v400$1 else $$96$0$1);
    $$96$0$2 := (if p10$2 then v400$2 else $$96$0$2);
    v401$1 := (if p10$1 then $$R$1$1 else v401$1);
    v401$2 := (if p10$2 then $$R$1$2 else v401$2);
    $$96$1$1 := (if p10$1 then v401$1 else $$96$1$1);
    $$96$1$2 := (if p10$2 then v401$2 else $$96$1$2);
    v402$1 := (if p10$1 then $$R$2$1 else v402$1);
    v402$2 := (if p10$2 then $$R$2$2 else v402$2);
    $$96$2$1 := (if p10$1 then v402$1 else $$96$2$1);
    $$96$2$2 := (if p10$2 then v402$2 else $$96$2$2);
    v403$1 := (if p10$1 then $$R$3$1 else v403$1);
    v403$2 := (if p10$2 then $$R$3$2 else v403$2);
    $$96$3$1 := (if p10$1 then v403$1 else $$96$3$1);
    $$96$3$2 := (if p10$2 then v403$2 else $$96$3$2);
    v404$1 := (if p10$1 then $$R$4$1 else v404$1);
    v404$2 := (if p10$2 then $$R$4$2 else v404$2);
    $$96$4$1 := (if p10$1 then v404$1 else $$96$4$1);
    $$96$4$2 := (if p10$2 then v404$2 else $$96$4$2);
    v405$1 := (if p10$1 then $$R$5$1 else v405$1);
    v405$2 := (if p10$2 then $$R$5$2 else v405$2);
    $$96$5$1 := (if p10$1 then v405$1 else $$96$5$1);
    $$96$5$2 := (if p10$2 then v405$2 else $$96$5$2);
    v406$1 := (if p10$1 then $$s$0$1 else v406$1);
    v406$2 := (if p10$2 then $$s$0$2 else v406$2);
    $$97$0$1 := (if p10$1 then v406$1 else $$97$0$1);
    $$97$0$2 := (if p10$2 then v406$2 else $$97$0$2);
    v407$1 := (if p10$1 then $$s$1$1 else v407$1);
    v407$2 := (if p10$2 then $$s$1$2 else v407$2);
    $$97$1$1 := (if p10$1 then v407$1 else $$97$1$1);
    $$97$1$2 := (if p10$2 then v407$2 else $$97$1$2);
    v408$1 := (if p10$1 then $$s$2$1 else v408$1);
    v408$2 := (if p10$2 then $$s$2$2 else v408$2);
    $$97$2$1 := (if p10$1 then v408$1 else $$97$2$1);
    $$97$2$2 := (if p10$2 then v408$2 else $$97$2$2);
    v409$1 := (if p10$1 then $$s$3$1 else v409$1);
    v409$2 := (if p10$2 then $$s$3$2 else v409$2);
    $$97$3$1 := (if p10$1 then v409$1 else $$97$3$1);
    $$97$3$2 := (if p10$2 then v409$2 else $$97$3$2);
    v410$1 := (if p10$1 then $$s$4$1 else v410$1);
    v410$2 := (if p10$2 then $$s$4$2 else v410$2);
    $$97$4$1 := (if p10$1 then v410$1 else $$97$4$1);
    $$97$4$2 := (if p10$2 then v410$2 else $$97$4$2);
    v411$1 := (if p10$1 then $$s$5$1 else v411$1);
    v411$2 := (if p10$2 then $$s$5$2 else v411$2);
    $$97$5$1 := (if p10$1 then v411$1 else $$97$5$1);
    $$97$5$2 := (if p10$2 then v411$2 else $$97$5$2);
    v412$1 := (if p10$1 then $$s$6$1 else v412$1);
    v412$2 := (if p10$2 then $$s$6$2 else v412$2);
    $$97$6$1 := (if p10$1 then v412$1 else $$97$6$1);
    $$97$6$2 := (if p10$2 then v412$2 else $$97$6$2);
    v413$1 := (if p10$1 then $$s$7$1 else v413$1);
    v413$2 := (if p10$2 then $$s$7$2 else v413$2);
    $$97$7$1 := (if p10$1 then v413$1 else $$97$7$1);
    $$97$7$2 := (if p10$2 then v413$2 else $$97$7$2);
    v414$1 := (if p10$1 then $$s$8$1 else v414$1);
    v414$2 := (if p10$2 then $$s$8$2 else v414$2);
    $$97$8$1 := (if p10$1 then v414$1 else $$97$8$1);
    $$97$8$2 := (if p10$2 then v414$2 else $$97$8$2);
    v415$1 := (if p10$1 then $$s$9$1 else v415$1);
    v415$2 := (if p10$2 then $$s$9$2 else v415$2);
    $$97$9$1 := (if p10$1 then v415$1 else $$97$9$1);
    $$97$9$2 := (if p10$2 then v415$2 else $$97$9$2);
    v416$1 := (if p10$1 then $$s$10$1 else v416$1);
    v416$2 := (if p10$2 then $$s$10$2 else v416$2);
    $$97$10$1 := (if p10$1 then v416$1 else $$97$10$1);
    $$97$10$2 := (if p10$2 then v416$2 else $$97$10$2);
    v417$1 := (if p10$1 then $$s$11$1 else v417$1);
    v417$2 := (if p10$2 then $$s$11$2 else v417$2);
    $$97$11$1 := (if p10$1 then v417$1 else $$97$11$1);
    $$97$11$2 := (if p10$2 then v417$2 else $$97$11$2);
    v418$1 := (if p10$1 then $$s$12$1 else v418$1);
    v418$2 := (if p10$2 then $$s$12$2 else v418$2);
    v419$1 := (if p10$1 then $$s$13$1 else v419$1);
    v419$2 := (if p10$2 then $$s$13$2 else v419$2);
    v420$1 := (if p10$1 then $$s$14$1 else v420$1);
    v420$2 := (if p10$2 then $$s$14$2 else v420$2);
    v421$1 := (if p10$1 then $$s$15$1 else v421$1);
    v421$2 := (if p10$2 then $$s$15$2 else v421$2);
    v422$1 := (if p10$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v421$1, v420$1), v419$1), v418$1) else v422$1);
    v422$2 := (if p10$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v421$2, v420$2), v419$2), v418$2) else v422$2);
    v423$1 := (if p10$1 then $$96$0$1 else v423$1);
    v423$2 := (if p10$2 then $$96$0$2 else v423$2);
    v424$1 := (if p10$1 then $$96$1$1 else v424$1);
    v424$2 := (if p10$2 then $$96$1$2 else v424$2);
    v425$1 := (if p10$1 then $$96$2$1 else v425$1);
    v425$2 := (if p10$2 then $$96$2$2 else v425$2);
    v426$1 := (if p10$1 then $$96$3$1 else v426$1);
    v426$2 := (if p10$2 then $$96$3$2 else v426$2);
    v427$1 := (if p10$1 then $$96$4$1 else v427$1);
    v427$2 := (if p10$2 then $$96$4$2 else v427$2);
    v428$1 := (if p10$1 then $$96$5$1 else v428$1);
    v428$2 := (if p10$2 then $$96$5$2 else v428$2);
    v429$1 := (if p10$1 then $$97$0$1 else v429$1);
    v429$2 := (if p10$2 then $$97$0$2 else v429$2);
    v430$1 := (if p10$1 then $$97$1$1 else v430$1);
    v430$2 := (if p10$2 then $$97$1$2 else v430$2);
    v431$1 := (if p10$1 then $$97$2$1 else v431$1);
    v431$2 := (if p10$2 then $$97$2$2 else v431$2);
    v432$1 := (if p10$1 then $$97$3$1 else v432$1);
    v432$2 := (if p10$2 then $$97$3$2 else v432$2);
    v433$1 := (if p10$1 then $$97$4$1 else v433$1);
    v433$2 := (if p10$2 then $$97$4$2 else v433$2);
    v434$1 := (if p10$1 then $$97$5$1 else v434$1);
    v434$2 := (if p10$2 then $$97$5$2 else v434$2);
    v435$1 := (if p10$1 then $$97$6$1 else v435$1);
    v435$2 := (if p10$2 then $$97$6$2 else v435$2);
    v436$1 := (if p10$1 then $$97$7$1 else v436$1);
    v436$2 := (if p10$2 then $$97$7$2 else v436$2);
    v437$1 := (if p10$1 then $$97$8$1 else v437$1);
    v437$2 := (if p10$2 then $$97$8$2 else v437$2);
    v438$1 := (if p10$1 then $$97$9$1 else v438$1);
    v438$2 := (if p10$2 then $$97$9$2 else v438$2);
    v439$1 := (if p10$1 then $$97$10$1 else v439$1);
    v439$2 := (if p10$2 then $$97$10$2 else v439$2);
    v440$1 := (if p10$1 then $$97$11$1 else v440$1);
    v440$2 := (if p10$2 then $$97$11$2 else v440$2);
    $$R.i$0$1 := (if p10$1 then v423$1 else $$R.i$0$1);
    $$R.i$0$2 := (if p10$2 then v423$2 else $$R.i$0$2);
    $$R.i$1$1 := (if p10$1 then v424$1 else $$R.i$1$1);
    $$R.i$1$2 := (if p10$2 then v424$2 else $$R.i$1$2);
    $$R.i$2$1 := (if p10$1 then v425$1 else $$R.i$2$1);
    $$R.i$2$2 := (if p10$2 then v425$2 else $$R.i$2$2);
    $$R.i$3$1 := (if p10$1 then v426$1 else $$R.i$3$1);
    $$R.i$3$2 := (if p10$2 then v426$2 else $$R.i$3$2);
    $$R.i$4$1 := (if p10$1 then v427$1 else $$R.i$4$1);
    $$R.i$4$2 := (if p10$2 then v427$2 else $$R.i$4$2);
    $$R.i$5$1 := (if p10$1 then v428$1 else $$R.i$5$1);
    $$R.i$5$2 := (if p10$2 then v428$2 else $$R.i$5$2);
    $$C.i21$0$1 := (if p10$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v432$1, v431$1), v430$1), v429$1) else $$C.i21$0$1);
    $$C.i21$0$2 := (if p10$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v432$2, v431$2), v430$2), v429$2) else $$C.i21$0$2);
    $$C.i21$1$1 := (if p10$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v436$1, v435$1), v434$1), v433$1) else $$C.i21$1$1);
    $$C.i21$1$2 := (if p10$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v436$2, v435$2), v434$2), v433$2) else $$C.i21$1$2);
    $$C.i21$2$1 := (if p10$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v440$1, v439$1), v438$1), v437$1) else $$C.i21$2$1);
    $$C.i21$2$2 := (if p10$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v440$2, v439$2), v438$2), v437$2) else $$C.i21$2$2);
    v441$1 := (if p10$1 then $$C.i21$0$1 else v441$1);
    v441$2 := (if p10$2 then $$C.i21$0$2 else v441$2);
    $$25$0$1 := (if p10$1 then v441$1 else $$25$0$1);
    $$25$0$2 := (if p10$2 then v441$2 else $$25$0$2);
    v442$1 := (if p10$1 then $$C.i21$1$1 else v442$1);
    v442$2 := (if p10$2 then $$C.i21$1$2 else v442$2);
    $$25$1$1 := (if p10$1 then v442$1 else $$25$1$1);
    $$25$1$2 := (if p10$2 then v442$2 else $$25$1$2);
    v443$1 := (if p10$1 then $$C.i21$2$1 else v443$1);
    v443$2 := (if p10$2 then $$C.i21$2$2 else v443$2);
    $$25$2$1 := (if p10$1 then v443$1 else $$25$2$1);
    $$25$2$2 := (if p10$2 then v443$2 else $$25$2$2);
    v444$1 := (if p10$1 then $$R.i$0$1 else v444$1);
    v444$2 := (if p10$2 then $$R.i$0$2 else v444$2);
    $$26$0$1 := (if p10$1 then v444$1 else $$26$0$1);
    $$26$0$2 := (if p10$2 then v444$2 else $$26$0$2);
    v445$1 := (if p10$1 then $$R.i$1$1 else v445$1);
    v445$2 := (if p10$2 then $$R.i$1$2 else v445$2);
    $$26$1$1 := (if p10$1 then v445$1 else $$26$1$1);
    $$26$1$2 := (if p10$2 then v445$2 else $$26$1$2);
    v446$1 := (if p10$1 then $$R.i$2$1 else v446$1);
    v446$2 := (if p10$2 then $$R.i$2$2 else v446$2);
    $$26$2$1 := (if p10$1 then v446$1 else $$26$2$1);
    $$26$2$2 := (if p10$2 then v446$2 else $$26$2$2);
    v447$1 := (if p10$1 then $$25$0$1 else v447$1);
    v447$2 := (if p10$2 then $$25$0$2 else v447$2);
    v448$1 := (if p10$1 then $$25$1$1 else v448$1);
    v448$2 := (if p10$2 then $$25$1$2 else v448$2);
    v449$1 := (if p10$1 then $$25$2$1 else v449$1);
    v449$2 := (if p10$2 then $$25$2$2 else v449$2);
    v450$1 := (if p10$1 then $$26$0$1 else v450$1);
    v450$2 := (if p10$2 then $$26$0$2 else v450$2);
    v451$1 := (if p10$1 then $$26$1$1 else v451$1);
    v451$2 := (if p10$2 then $$26$1$2 else v451$2);
    v452$1 := (if p10$1 then $$26$2$1 else v452$1);
    v452$2 := (if p10$2 then $$26$2$2 else v452$2);
    $$a.i.i19$0$1 := (if p10$1 then v447$1 else $$a.i.i19$0$1);
    $$a.i.i19$0$2 := (if p10$2 then v447$2 else $$a.i.i19$0$2);
    $$a.i.i19$1$1 := (if p10$1 then v448$1 else $$a.i.i19$1$1);
    $$a.i.i19$1$2 := (if p10$2 then v448$2 else $$a.i.i19$1$2);
    $$a.i.i19$2$1 := (if p10$1 then v449$1 else $$a.i.i19$2$1);
    $$a.i.i19$2$2 := (if p10$2 then v449$2 else $$a.i.i19$2$2);
    $$b.i.i20$0$1 := (if p10$1 then v450$1 else $$b.i.i20$0$1);
    $$b.i.i20$0$2 := (if p10$2 then v450$2 else $$b.i.i20$0$2);
    $$b.i.i20$1$1 := (if p10$1 then v451$1 else $$b.i.i20$1$1);
    $$b.i.i20$1$2 := (if p10$2 then v451$2 else $$b.i.i20$1$2);
    $$b.i.i20$2$1 := (if p10$1 then v452$1 else $$b.i.i20$2$1);
    $$b.i.i20$2$2 := (if p10$2 then v452$2 else $$b.i.i20$2$2);
    v453$1 := (if p10$1 then $$a.i.i19$0$1 else v453$1);
    v453$2 := (if p10$2 then $$a.i.i19$0$2 else v453$2);
    v454$1 := (if p10$1 then $$b.i.i20$0$1 else v454$1);
    v454$2 := (if p10$2 then $$b.i.i20$0$2 else v454$2);
    v455$1 := (if p10$1 then $$a.i.i19$1$1 else v455$1);
    v455$2 := (if p10$2 then $$a.i.i19$1$2 else v455$2);
    v456$1 := (if p10$1 then $$b.i.i20$1$1 else v456$1);
    v456$2 := (if p10$2 then $$b.i.i20$1$2 else v456$2);
    v457$1 := (if p10$1 then $$a.i.i19$2$1 else v457$1);
    v457$2 := (if p10$2 then $$a.i.i19$2$2 else v457$2);
    v458$1 := (if p10$1 then $$b.i.i20$2$1 else v458$1);
    v458$2 := (if p10$2 then $$b.i.i20$2$2 else v458$2);
    $$23$0$1 := (if p10$1 then FSUB32(v453$1, v454$1) else $$23$0$1);
    $$23$0$2 := (if p10$2 then FSUB32(v453$2, v454$2) else $$23$0$2);
    $$23$1$1 := (if p10$1 then FSUB32(v455$1, v456$1) else $$23$1$1);
    $$23$1$2 := (if p10$2 then FSUB32(v455$2, v456$2) else $$23$1$2);
    $$23$2$1 := (if p10$1 then FSUB32(v457$1, v458$1) else $$23$2$1);
    $$23$2$2 := (if p10$2 then FSUB32(v457$2, v458$2) else $$23$2$2);
    v459$1 := (if p10$1 then $$23$0$1 else v459$1);
    v459$2 := (if p10$2 then $$23$0$2 else v459$2);
    v460$1 := (if p10$1 then $$23$1$1 else v460$1);
    v460$2 := (if p10$2 then $$23$1$2 else v460$2);
    v461$1 := (if p10$1 then $$23$2$1 else v461$1);
    v461$2 := (if p10$2 then $$23$2$2 else v461$2);
    $$24$0$1 := (if p10$1 then v459$1 else $$24$0$1);
    $$24$0$2 := (if p10$2 then v459$2 else $$24$0$2);
    $$24$1$1 := (if p10$1 then v460$1 else $$24$1$1);
    $$24$1$2 := (if p10$2 then v460$2 else $$24$1$2);
    $$24$2$1 := (if p10$1 then v461$1 else $$24$2$1);
    $$24$2$2 := (if p10$2 then v461$2 else $$24$2$2);
    v462$1 := (if p10$1 then $$24$0$1 else v462$1);
    v462$2 := (if p10$2 then $$24$0$2 else v462$2);
    v463$1 := (if p10$1 then $$24$1$1 else v463$1);
    v463$2 := (if p10$2 then $$24$1$2 else v463$2);
    v464$1 := (if p10$1 then $$24$2$1 else v464$1);
    v464$2 := (if p10$2 then $$24$2$2 else v464$2);
    $$L.i$0$1 := (if p10$1 then v462$1 else $$L.i$0$1);
    $$L.i$0$2 := (if p10$2 then v462$2 else $$L.i$0$2);
    $$L.i$1$1 := (if p10$1 then v463$1 else $$L.i$1$1);
    $$L.i$1$2 := (if p10$2 then v463$2 else $$L.i$1$2);
    $$L.i$2$1 := (if p10$1 then v464$1 else $$L.i$2$1);
    $$L.i$2$2 := (if p10$2 then v464$2 else $$L.i$2$2);
    v465$1 := (if p10$1 then $$L.i$0$1 else v465$1);
    v465$2 := (if p10$2 then $$L.i$0$2 else v465$2);
    $$27$0$1 := (if p10$1 then v465$1 else $$27$0$1);
    $$27$0$2 := (if p10$2 then v465$2 else $$27$0$2);
    v466$1 := (if p10$1 then $$L.i$1$1 else v466$1);
    v466$2 := (if p10$2 then $$L.i$1$2 else v466$2);
    $$27$1$1 := (if p10$1 then v466$1 else $$27$1$1);
    $$27$1$2 := (if p10$2 then v466$2 else $$27$1$2);
    v467$1 := (if p10$1 then $$L.i$2$1 else v467$1);
    v467$2 := (if p10$2 then $$L.i$2$2 else v467$2);
    $$27$2$1 := (if p10$1 then v467$1 else $$27$2$1);
    $$27$2$2 := (if p10$2 then v467$2 else $$27$2$2);
    v468$1 := (if p10$1 then $$R.i$3$1 else v468$1);
    v468$2 := (if p10$2 then $$R.i$3$2 else v468$2);
    $$28$0$1 := (if p10$1 then v468$1 else $$28$0$1);
    $$28$0$2 := (if p10$2 then v468$2 else $$28$0$2);
    v469$1 := (if p10$1 then $$R.i$4$1 else v469$1);
    v469$2 := (if p10$2 then $$R.i$4$2 else v469$2);
    $$28$1$1 := (if p10$1 then v469$1 else $$28$1$1);
    $$28$1$2 := (if p10$2 then v469$2 else $$28$1$2);
    v470$1 := (if p10$1 then $$R.i$5$1 else v470$1);
    v470$2 := (if p10$2 then $$R.i$5$2 else v470$2);
    $$28$2$1 := (if p10$1 then v470$1 else $$28$2$1);
    $$28$2$2 := (if p10$2 then v470$2 else $$28$2$2);
    v471$1 := (if p10$1 then $$27$0$1 else v471$1);
    v471$2 := (if p10$2 then $$27$0$2 else v471$2);
    v472$1 := (if p10$1 then $$27$1$1 else v472$1);
    v472$2 := (if p10$2 then $$27$1$2 else v472$2);
    v473$1 := (if p10$1 then $$27$2$1 else v473$1);
    v473$2 := (if p10$2 then $$27$2$2 else v473$2);
    v474$1 := (if p10$1 then $$28$0$1 else v474$1);
    v474$2 := (if p10$2 then $$28$0$2 else v474$2);
    v475$1 := (if p10$1 then $$28$1$1 else v475$1);
    v475$2 := (if p10$2 then $$28$1$2 else v475$2);
    v476$1 := (if p10$1 then $$28$2$1 else v476$1);
    v476$2 := (if p10$2 then $$28$2$2 else v476$2);
    call {:sourceloc_num 880} v477$1, v477$2 := $_Z3dot6float3S_(p10$1, v471$1, v472$1, v473$1, v474$1, v475$1, v476$1, p10$2, v471$2, v472$2, v473$2, v474$2, v475$2, v476$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    v478$1 := (if p10$1 then $$L.i$0$1 else v478$1);
    v478$2 := (if p10$2 then $$L.i$0$2 else v478$2);
    $$29$0$1 := (if p10$1 then v478$1 else $$29$0$1);
    $$29$0$2 := (if p10$2 then v478$2 else $$29$0$2);
    v479$1 := (if p10$1 then $$L.i$1$1 else v479$1);
    v479$2 := (if p10$2 then $$L.i$1$2 else v479$2);
    $$29$1$1 := (if p10$1 then v479$1 else $$29$1$1);
    $$29$1$2 := (if p10$2 then v479$2 else $$29$1$2);
    v480$1 := (if p10$1 then $$L.i$2$1 else v480$1);
    v480$2 := (if p10$2 then $$L.i$2$2 else v480$2);
    $$29$2$1 := (if p10$1 then v480$1 else $$29$2$1);
    $$29$2$2 := (if p10$2 then v480$2 else $$29$2$2);
    v481$1 := (if p10$1 then $$L.i$0$1 else v481$1);
    v481$2 := (if p10$2 then $$L.i$0$2 else v481$2);
    $$30$0$1 := (if p10$1 then v481$1 else $$30$0$1);
    $$30$0$2 := (if p10$2 then v481$2 else $$30$0$2);
    v482$1 := (if p10$1 then $$L.i$1$1 else v482$1);
    v482$2 := (if p10$2 then $$L.i$1$2 else v482$2);
    $$30$1$1 := (if p10$1 then v482$1 else $$30$1$1);
    $$30$1$2 := (if p10$2 then v482$2 else $$30$1$2);
    v483$1 := (if p10$1 then $$L.i$2$1 else v483$1);
    v483$2 := (if p10$2 then $$L.i$2$2 else v483$2);
    $$30$2$1 := (if p10$1 then v483$1 else $$30$2$1);
    $$30$2$2 := (if p10$2 then v483$2 else $$30$2$2);
    v484$1 := (if p10$1 then $$29$0$1 else v484$1);
    v484$2 := (if p10$2 then $$29$0$2 else v484$2);
    v485$1 := (if p10$1 then $$29$1$1 else v485$1);
    v485$2 := (if p10$2 then $$29$1$2 else v485$2);
    v486$1 := (if p10$1 then $$29$2$1 else v486$1);
    v486$2 := (if p10$2 then $$29$2$2 else v486$2);
    v487$1 := (if p10$1 then $$30$0$1 else v487$1);
    v487$2 := (if p10$2 then $$30$0$2 else v487$2);
    v488$1 := (if p10$1 then $$30$1$1 else v488$1);
    v488$2 := (if p10$2 then $$30$1$2 else v488$2);
    v489$1 := (if p10$1 then $$30$2$1 else v489$1);
    v489$2 := (if p10$2 then $$30$2$2 else v489$2);
    call {:sourceloc_num 899} v490$1, v490$2 := $_Z3dot6float3S_(p10$1, v484$1, v485$1, v486$1, v487$1, v488$1, v489$1, p10$2, v484$2, v485$2, v486$2, v487$2, v488$2, v489$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    v491$1 := (if p10$1 then FMUL32(v422$1, v422$1) else v491$1);
    v491$2 := (if p10$2 then FMUL32(v422$2, v422$2) else v491$2);
    v492$1 := (if p10$1 then FLT32(v477$1, 0) else v492$1);
    v492$2 := (if p10$2 then FLT32(v477$2, 0) else v492$2);
    p11$1 := (if p10$1 && v492$1 then v492$1 else p11$1);
    p11$2 := (if p10$2 && v492$2 then v492$2 else p11$2);
    p15$1 := (if p10$1 && !v492$1 then !v492$1 else p15$1);
    p15$2 := (if p10$2 && !v492$2 then !v492$2 else p15$2);
    v493$1 := (if p11$1 then FLT32(v491$1, v490$1) else v493$1);
    v493$2 := (if p11$2 then FLT32(v491$2, v490$2) else v493$2);
    p12$1 := (if p11$1 && v493$1 then v493$1 else p12$1);
    p12$2 := (if p11$2 && v493$2 then v493$2 else p12$2);
    p15$1 := (if p11$1 && !v493$1 then !v493$1 else p15$1);
    p15$2 := (if p11$2 && !v493$2 then !v493$2 else p15$2);
    $res.i.2$1 := (if p12$1 then 0 else $res.i.2$1);
    $res.i.2$2 := (if p12$2 then 0 else $res.i.2$2);
    p15$1 := (if p13$1 then true else p15$1);
    p15$2 := (if p13$2 then true else p15$2);
    p15$1 := (if p14$1 then true else p15$1);
    p15$2 := (if p14$2 then true else p15$2);
    v494$1 := (if p15$1 then FSUB32(v490$1, FMUL32(v477$1, v477$1)) else v494$1);
    v494$2 := (if p15$2 then FSUB32(v490$2, FMUL32(v477$2, v477$2)) else v494$2);
    v495$1 := (if p15$1 then FLT32(v491$1, v494$1) else v495$1);
    v495$2 := (if p15$2 then FLT32(v491$2, v494$2) else v495$2);
    p16$1 := (if p15$1 && v495$1 then v495$1 else p16$1);
    p16$2 := (if p15$2 && v495$2 then v495$2 else p16$2);
    p17$1 := (if p15$1 && !v495$1 then !v495$1 else p17$1);
    p17$2 := (if p15$2 && !v495$2 then !v495$2 else p17$2);
    $res.i.1$1 := (if p16$1 then 0 else $res.i.1$1);
    $res.i.1$2 := (if p16$2 then 0 else $res.i.1$2);
    v496$1 := (if p17$1 then FP64_CONV32(FSQRT64(FP32_CONV64(FSUB32(v491$1, v494$1)))) else v496$1);
    v496$2 := (if p17$2 then FP64_CONV32(FSQRT64(FP32_CONV64(FSUB32(v491$2, v494$2)))) else v496$2);
    v497$1 := (if p17$1 then FLT32(v491$1, v490$1) else v497$1);
    v497$2 := (if p17$2 then FLT32(v491$2, v490$2) else v497$2);
    p18$1 := (if p17$1 && v497$1 then v497$1 else p18$1);
    p18$2 := (if p17$2 && v497$2 then v497$2 else p18$2);
    p19$1 := (if p17$1 && !v497$1 then !v497$1 else p19$1);
    p19$2 := (if p17$2 && !v497$2 then !v497$2 else p19$2);
    $res.i.0$1 := (if p18$1 then FSUB32(v477$1, v496$1) else $res.i.0$1);
    $res.i.0$2 := (if p18$2 then FSUB32(v477$2, v496$2) else $res.i.0$2);
    $res.i.0$1 := (if p19$1 then FADD32(v477$1, v496$1) else $res.i.0$1);
    $res.i.0$2 := (if p19$2 then FADD32(v477$2, v496$2) else $res.i.0$2);
    $res.i.1$1 := (if p17$1 then $res.i.0$1 else $res.i.1$1);
    $res.i.1$2 := (if p17$2 then $res.i.0$2 else $res.i.1$2);
    $res.i.2$1 := (if p15$1 then $res.i.1$1 else $res.i.2$1);
    $res.i.2$2 := (if p15$2 then $res.i.1$2 else $res.i.2$2);
    $t.0$1 := (if p10$1 then $res.i.2$1 else $t.0$1);
    $t.0$2 := (if p10$2 then $res.i.2$2 else $t.0$2);
    call {:sourceloc} {:sourceloc_num 911} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T(p2$1, local_id_x$1, $t.0$1, $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T(p2$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 911} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 911} _CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T(p2$2, local_id_x$2, $t.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T"} true;
    $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][local_id_x$1] := (if p2$1 then $t.0$1 else $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][local_id_x$1]);
    $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p2$2 then $t.0$2 else $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 912} $bugle_barrier_duplicated_0(-1, -1, p2$1, p2$2);
    v498$1 := (if p2$1 then local_id_x$1 == 0 else v498$1);
    v498$2 := (if p2$2 then local_id_x$2 == 0 else v498$2);
    p20$1 := (if p2$1 && v498$1 then v498$1 else p20$1);
    p20$2 := (if p2$2 && v498$2 then v498$2 else p20$2);
    call {:sourceloc} {:sourceloc_num 914} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p20$1, 0, 0, $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p20$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 914} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 914} _CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p20$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj"} true;
    $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0] := (if p20$1 then 0 else $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0]);
    $$_ZZ11renderPixelPjP4NodejjffE3Obj[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p20$2 then 0 else $$_ZZ11renderPixelPjP4NodejjffE3Obj[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    $tmp.0$1, $i.0$1 := (if p20$1 then $t.0$1 else $tmp.0$1), (if p20$1 then 1 else $i.0$1);
    $tmp.0$2, $i.0$2 := (if p20$2 then $t.0$2 else $tmp.0$2), (if p20$2 then 1 else $i.0$2);
    p21$1 := (if p20$1 then true else p21$1);
    p21$2 := (if p20$2 then true else p21$2);
    _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T$ghost$$24 := _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj$ghost$$24 := _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $24;

  $24:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b18 ==> !p20$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj$ghost$$24 == _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b17 ==> _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b16 ==> !p20$1 ==> _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T$ghost$$24 == _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b15 ==> _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> _WATCHED_OFFSET mod 1 == 1 mod 1 || _WATCHED_OFFSET mod 1 == 1 mod 1 || _WATCHED_OFFSET mod 1 == 1 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p21"} {:dominator_predicate "p20"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> local_id_x$1 == 0;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> BV32_ULT(local_id_x$1, 4);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b12 ==> _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> BV32_ULT(group_id_y$1, $imageH);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b11 ==> _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj ==> BV32_ULT(group_id_x$1, $imageW);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b10 ==> _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> local_id_x$1 == 0;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b9 ==> _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> BV32_ULT(local_id_x$1, 4);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b8 ==> _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> BV32_ULT(group_id_y$1, $imageH);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T ==> BV32_ULT(group_id_x$1, $imageW);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV32_ULT(group_id_x$1, $imageW) && BV32_ULT(group_id_y$1, $imageH) && BV32_ULT(local_id_x$1, 4) && local_id_x$1 == 0 && BV32_SLT($i.0$1, 4) ==> p21$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV32_ULT(group_id_x$2, $imageW) && BV32_ULT(group_id_y$2, $imageH) && BV32_ULT(local_id_x$2, 4) && local_id_x$2 == 0 && BV32_SLT($i.0$2, 4) ==> p21$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p21$1 ==> _b5 ==> p21$1 ==> BV32_ULT(group_id_x$1, $imageW) && BV32_ULT(group_id_y$1, $imageH) && BV32_ULT(local_id_x$1, 4) && local_id_x$1 == 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p21$2 ==> _b5 ==> p21$2 ==> BV32_ULT(group_id_x$2, $imageW) && BV32_ULT(group_id_y$2, $imageH) && BV32_ULT(local_id_x$2, 4) && local_id_x$2 == 0;
    assert {:tag "loopBound"} {:thread 1} p21$1 ==> _b4 ==> BV32_UGE($i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p21$2 ==> _b4 ==> BV32_UGE($i.0$2, 1);
    assert {:tag "loopBound"} {:thread 1} p21$1 ==> _b3 ==> BV32_ULE($i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p21$2 ==> _b3 ==> BV32_ULE($i.0$2, 1);
    assert {:tag "loopBound"} {:thread 1} p21$1 ==> _b2 ==> BV32_SGE($i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p21$2 ==> _b2 ==> BV32_SGE($i.0$2, 1);
    assert {:tag "loopBound"} {:thread 1} p21$1 ==> _b1 ==> BV32_SLE($i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p21$2 ==> _b1 ==> BV32_SLE($i.0$2, 1);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p21$1 ==> _b0 ==> $i.0$1 mod 1 == 1 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p21$2 ==> _b0 ==> $i.0$2 mod 1 == 1 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 915} p21$1 ==> true;
    v499$1 := (if p21$1 then BV32_SLT($i.0$1, 4) else v499$1);
    v499$2 := (if p21$2 then BV32_SLT($i.0$2, 4) else v499$2);
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p22$1 := (if p21$1 && v499$1 then v499$1 else p22$1);
    p22$2 := (if p21$2 && v499$2 then v499$2 else p22$2);
    p21$1 := (if p21$1 && !v499$1 then v499$1 else p21$1);
    p21$2 := (if p21$2 && !v499$2 then v499$2 else p21$2);
    call {:sourceloc} {:sourceloc_num 917} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(p22$1, $i.0$1, $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][$i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 917} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 917} _CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(p22$2, $i.0$2, $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE1T"} true;
    v500$1 := (if p22$1 then $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][$i.0$1] else v500$1);
    v500$2 := (if p22$2 then $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2] else v500$2);
    v501$1 := (if p22$1 then FLT32(0, v500$1) else v501$1);
    v501$2 := (if p22$2 then FLT32(0, v500$2) else v501$2);
    p24$1 := (if p22$1 && v501$1 then v501$1 else p24$1);
    p24$2 := (if p22$2 && v501$2 then v501$2 else p24$2);
    p23$1 := (if p22$1 && !v501$1 then !v501$1 else p23$1);
    p23$2 := (if p22$2 && !v501$2 then !v501$2 else p23$2);
    $tmp.1$1 := (if p23$1 then $tmp.0$1 else $tmp.1$1);
    $tmp.1$2 := (if p23$2 then $tmp.0$2 else $tmp.1$2);
    v502$1 := (if p24$1 then FEQ32($tmp.0$1, 0) else v502$1);
    v502$2 := (if p24$2 then FEQ32($tmp.0$2, 0) else v502$2);
    p29$1 := (if p24$1 && v502$1 then v502$1 else p29$1);
    p29$2 := (if p24$2 && v502$2 then v502$2 else p29$2);
    p26$1 := (if p24$1 && !v502$1 then !v502$1 else p26$1);
    p26$2 := (if p24$2 && !v502$2 then !v502$2 else p26$2);
    p29$1 := (if p25$1 then true else p29$1);
    p29$2 := (if p25$2 then true else p29$2);
    call {:sourceloc} {:sourceloc_num 920} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(p26$1, $i.0$1, $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][$i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 920} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 920} _CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(p26$2, $i.0$2, $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE1T"} true;
    v503$1 := (if p26$1 then $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][$i.0$1] else v503$1);
    v503$2 := (if p26$2 then $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2] else v503$2);
    v504$1 := (if p26$1 then FLT32(v503$1, $tmp.0$1) else v504$1);
    v504$2 := (if p26$2 then FLT32(v503$2, $tmp.0$2) else v504$2);
    p29$1 := (if p26$1 && v504$1 then v504$1 else p29$1);
    p29$2 := (if p26$2 && v504$2 then v504$2 else p29$2);
    p27$1 := (if p26$1 && !v504$1 then !v504$1 else p27$1);
    p27$2 := (if p26$2 && !v504$2 then !v504$2 else p27$2);
    $tmp.1$1 := (if p27$1 then $tmp.0$1 else $tmp.1$1);
    $tmp.1$2 := (if p27$2 then $tmp.0$2 else $tmp.1$2);
    p29$1 := (if p28$1 then true else p29$1);
    p29$2 := (if p28$2 then true else p29$2);
    call {:sourceloc} {:sourceloc_num 922} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(p29$1, $i.0$1, $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][$i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 922} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 922} _CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(p29$2, $i.0$2, $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE1T"} true;
    v505$1 := (if p29$1 then $$_ZZ11renderPixelPjP4NodejjffE1T[1bv1][$i.0$1] else v505$1);
    v505$2 := (if p29$2 then $$_ZZ11renderPixelPjP4NodejjffE1T[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2] else v505$2);
    call {:sourceloc} {:sourceloc_num 923} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p29$1, 0, $i.0$1, $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p29$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 923} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 923} _CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p29$2, 0, $i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj"} true;
    $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0] := (if p29$1 then $i.0$1 else $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0]);
    $$_ZZ11renderPixelPjP4NodejjffE3Obj[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p29$2 then $i.0$2 else $$_ZZ11renderPixelPjP4NodejjffE3Obj[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    $tmp.1$1 := (if p29$1 then v505$1 else $tmp.1$1);
    $tmp.1$2 := (if p29$2 then v505$2 else $tmp.1$2);
    $tmp.0$1, $i.0$1 := (if p22$1 then $tmp.1$1 else $tmp.0$1), (if p22$1 then BV32_ADD($i.0$1, 1) else $i.0$1);
    $tmp.0$2, $i.0$2 := (if p22$2 then $tmp.1$2 else $tmp.0$2), (if p22$2 then BV32_ADD($i.0$2, 1) else $i.0$2);
    p21$1 := (if p22$1 then true else p21$1);
    p21$2 := (if p22$2 then true else p21$2);
    goto $24.backedge, __partitioned_block_$24.tail_0;

  __partitioned_block_$24.tail_0:
    assume !p21$1 && !p21$2;
    goto __partitioned_block_$24.tail_1;

  __partitioned_block_$24.tail_1:
    call {:sourceloc_num 928} $bugle_barrier_duplicated_1(-1, -1, p2$1, p2$2);
    call {:sourceloc} {:sourceloc_num 929} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p2$1, 0, $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 929} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 929} _CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE3Obj(p2$2, 0, $$_ZZ11renderPixelPjP4NodejjffE3Obj[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE3Obj"} true;
    v506$1 := (if p2$1 then $$_ZZ11renderPixelPjP4NodejjffE3Obj[1bv1][0] else v506$1);
    v506$2 := (if p2$2 then $$_ZZ11renderPixelPjP4NodejjffE3Obj[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v506$2);
    v507$1 := (if p2$1 then local_id_x$1 == v506$1 else v507$1);
    v507$2 := (if p2$2 then local_id_x$2 == v506$2 else v507$2);
    p31$1 := (if p2$1 && v507$1 then v507$1 else p31$1);
    p31$2 := (if p2$2 && v507$2 then v507$2 else p31$2);
    v508$1 := (if p31$1 then FLT32(0, $t.0$1) else v508$1);
    v508$2 := (if p31$2 then FLT32(0, $t.0$2) else v508$2);
    p32$1 := (if p31$1 && v508$1 then v508$1 else p32$1);
    p32$2 := (if p31$2 && v508$2 then v508$2 else p32$2);
    v509$1 := (if p32$1 then $$node$0$1 else v509$1);
    v509$2 := (if p32$2 then $$node$0$2 else v509$2);
    $$s$0$1 := (if p32$1 then v509$1 else $$s$0$1);
    $$s$0$2 := (if p32$2 then v509$2 else $$s$0$2);
    v510$1 := (if p32$1 then $$node$1$1 else v510$1);
    v510$2 := (if p32$2 then $$node$1$2 else v510$2);
    $$s$1$1 := (if p32$1 then v510$1 else $$s$1$1);
    $$s$1$2 := (if p32$2 then v510$2 else $$s$1$2);
    v511$1 := (if p32$1 then $$node$2$1 else v511$1);
    v511$2 := (if p32$2 then $$node$2$2 else v511$2);
    $$s$2$1 := (if p32$1 then v511$1 else $$s$2$1);
    $$s$2$2 := (if p32$2 then v511$2 else $$s$2$2);
    v512$1 := (if p32$1 then $$node$3$1 else v512$1);
    v512$2 := (if p32$2 then $$node$3$2 else v512$2);
    $$s$3$1 := (if p32$1 then v512$1 else $$s$3$1);
    $$s$3$2 := (if p32$2 then v512$2 else $$s$3$2);
    v513$1 := (if p32$1 then $$node$4$1 else v513$1);
    v513$2 := (if p32$2 then $$node$4$2 else v513$2);
    $$s$4$1 := (if p32$1 then v513$1 else $$s$4$1);
    $$s$4$2 := (if p32$2 then v513$2 else $$s$4$2);
    v514$1 := (if p32$1 then $$node$5$1 else v514$1);
    v514$2 := (if p32$2 then $$node$5$2 else v514$2);
    $$s$5$1 := (if p32$1 then v514$1 else $$s$5$1);
    $$s$5$2 := (if p32$2 then v514$2 else $$s$5$2);
    v515$1 := (if p32$1 then $$node$6$1 else v515$1);
    v515$2 := (if p32$2 then $$node$6$2 else v515$2);
    $$s$6$1 := (if p32$1 then v515$1 else $$s$6$1);
    $$s$6$2 := (if p32$2 then v515$2 else $$s$6$2);
    v516$1 := (if p32$1 then $$node$7$1 else v516$1);
    v516$2 := (if p32$2 then $$node$7$2 else v516$2);
    $$s$7$1 := (if p32$1 then v516$1 else $$s$7$1);
    $$s$7$2 := (if p32$2 then v516$2 else $$s$7$2);
    v517$1 := (if p32$1 then $$node$8$1 else v517$1);
    v517$2 := (if p32$2 then $$node$8$2 else v517$2);
    $$s$8$1 := (if p32$1 then v517$1 else $$s$8$1);
    $$s$8$2 := (if p32$2 then v517$2 else $$s$8$2);
    v518$1 := (if p32$1 then $$node$9$1 else v518$1);
    v518$2 := (if p32$2 then $$node$9$2 else v518$2);
    $$s$9$1 := (if p32$1 then v518$1 else $$s$9$1);
    $$s$9$2 := (if p32$2 then v518$2 else $$s$9$2);
    v519$1 := (if p32$1 then $$node$10$1 else v519$1);
    v519$2 := (if p32$2 then $$node$10$2 else v519$2);
    $$s$10$1 := (if p32$1 then v519$1 else $$s$10$1);
    $$s$10$2 := (if p32$2 then v519$2 else $$s$10$2);
    v520$1 := (if p32$1 then $$node$11$1 else v520$1);
    v520$2 := (if p32$2 then $$node$11$2 else v520$2);
    $$s$11$1 := (if p32$1 then v520$1 else $$s$11$1);
    $$s$11$2 := (if p32$2 then v520$2 else $$s$11$2);
    v521$1 := (if p32$1 then $$node$12$1 else v521$1);
    v521$2 := (if p32$2 then $$node$12$2 else v521$2);
    $$s$12$1 := (if p32$1 then v521$1 else $$s$12$1);
    $$s$12$2 := (if p32$2 then v521$2 else $$s$12$2);
    v522$1 := (if p32$1 then $$node$13$1 else v522$1);
    v522$2 := (if p32$2 then $$node$13$2 else v522$2);
    $$s$13$1 := (if p32$1 then v522$1 else $$s$13$1);
    $$s$13$2 := (if p32$2 then v522$2 else $$s$13$2);
    v523$1 := (if p32$1 then $$node$14$1 else v523$1);
    v523$2 := (if p32$2 then $$node$14$2 else v523$2);
    $$s$14$1 := (if p32$1 then v523$1 else $$s$14$1);
    $$s$14$2 := (if p32$2 then v523$2 else $$s$14$2);
    v524$1 := (if p32$1 then $$node$15$1 else v524$1);
    v524$2 := (if p32$2 then $$node$15$2 else v524$2);
    $$s$15$1 := (if p32$1 then v524$1 else $$s$15$1);
    $$s$15$2 := (if p32$2 then v524$2 else $$s$15$2);
    v525$1 := (if p32$1 then $$node$16$1 else v525$1);
    v525$2 := (if p32$2 then $$node$16$2 else v525$2);
    $$s$16$1 := (if p32$1 then v525$1 else $$s$16$1);
    $$s$16$2 := (if p32$2 then v525$2 else $$s$16$2);
    v526$1 := (if p32$1 then $$node$17$1 else v526$1);
    v526$2 := (if p32$2 then $$node$17$2 else v526$2);
    $$s$17$1 := (if p32$1 then v526$1 else $$s$17$1);
    $$s$17$2 := (if p32$2 then v526$2 else $$s$17$2);
    v527$1 := (if p32$1 then $$node$18$1 else v527$1);
    v527$2 := (if p32$2 then $$node$18$2 else v527$2);
    $$s$18$1 := (if p32$1 then v527$1 else $$s$18$1);
    $$s$18$2 := (if p32$2 then v527$2 else $$s$18$2);
    v528$1 := (if p32$1 then $$node$19$1 else v528$1);
    v528$2 := (if p32$2 then $$node$19$2 else v528$2);
    $$s$19$1 := (if p32$1 then v528$1 else $$s$19$1);
    $$s$19$2 := (if p32$2 then v528$2 else $$s$19$2);
    v529$1 := (if p32$1 then $$node$20$1 else v529$1);
    v529$2 := (if p32$2 then $$node$20$2 else v529$2);
    $$s$20$1 := (if p32$1 then v529$1 else $$s$20$1);
    $$s$20$2 := (if p32$2 then v529$2 else $$s$20$2);
    v530$1 := (if p32$1 then $$node$21$1 else v530$1);
    v530$2 := (if p32$2 then $$node$21$2 else v530$2);
    $$s$21$1 := (if p32$1 then v530$1 else $$s$21$1);
    $$s$21$2 := (if p32$2 then v530$2 else $$s$21$2);
    v531$1 := (if p32$1 then $$node$22$1 else v531$1);
    v531$2 := (if p32$2 then $$node$22$2 else v531$2);
    $$s$22$1 := (if p32$1 then v531$1 else $$s$22$1);
    $$s$22$2 := (if p32$2 then v531$2 else $$s$22$2);
    v532$1 := (if p32$1 then $$node$23$1 else v532$1);
    v532$2 := (if p32$2 then $$node$23$2 else v532$2);
    $$s$23$1 := (if p32$1 then v532$1 else $$s$23$1);
    $$s$23$2 := (if p32$2 then v532$2 else $$s$23$2);
    v533$1 := (if p32$1 then $$node$24$1 else v533$1);
    v533$2 := (if p32$2 then $$node$24$2 else v533$2);
    $$s$24$1 := (if p32$1 then v533$1 else $$s$24$1);
    $$s$24$2 := (if p32$2 then v533$2 else $$s$24$2);
    v534$1 := (if p32$1 then $$node$25$1 else v534$1);
    v534$2 := (if p32$2 then $$node$25$2 else v534$2);
    $$s$25$1 := (if p32$1 then v534$1 else $$s$25$1);
    $$s$25$2 := (if p32$2 then v534$2 else $$s$25$2);
    v535$1 := (if p32$1 then $$node$26$1 else v535$1);
    v535$2 := (if p32$2 then $$node$26$2 else v535$2);
    $$s$26$1 := (if p32$1 then v535$1 else $$s$26$1);
    $$s$26$2 := (if p32$2 then v535$2 else $$s$26$2);
    v536$1 := (if p32$1 then $$node$27$1 else v536$1);
    v536$2 := (if p32$2 then $$node$27$2 else v536$2);
    $$s$27$1 := (if p32$1 then v536$1 else $$s$27$1);
    $$s$27$2 := (if p32$2 then v536$2 else $$s$27$2);
    v537$1 := (if p32$1 then $$node$28$1 else v537$1);
    v537$2 := (if p32$2 then $$node$28$2 else v537$2);
    $$s$28$1 := (if p32$1 then v537$1 else $$s$28$1);
    $$s$28$2 := (if p32$2 then v537$2 else $$s$28$2);
    v538$1 := (if p32$1 then $$node$29$1 else v538$1);
    v538$2 := (if p32$2 then $$node$29$2 else v538$2);
    $$s$29$1 := (if p32$1 then v538$1 else $$s$29$1);
    $$s$29$2 := (if p32$2 then v538$2 else $$s$29$2);
    v539$1 := (if p32$1 then $$node$30$1 else v539$1);
    v539$2 := (if p32$2 then $$node$30$2 else v539$2);
    $$s$30$1 := (if p32$1 then v539$1 else $$s$30$1);
    $$s$30$2 := (if p32$2 then v539$2 else $$s$30$2);
    v540$1 := (if p32$1 then $$node$31$1 else v540$1);
    v540$2 := (if p32$2 then $$node$31$2 else v540$2);
    $$s$31$1 := (if p32$1 then v540$1 else $$s$31$1);
    $$s$31$2 := (if p32$2 then v540$2 else $$s$31$2);
    v541$1 := (if p32$1 then $$s$0$1 else v541$1);
    v541$2 := (if p32$2 then $$s$0$2 else v541$2);
    v542$1 := (if p32$1 then $$s$1$1 else v542$1);
    v542$2 := (if p32$2 then $$s$1$2 else v542$2);
    v543$1 := (if p32$1 then $$s$2$1 else v543$1);
    v543$2 := (if p32$2 then $$s$2$2 else v543$2);
    v544$1 := (if p32$1 then $$s$3$1 else v544$1);
    v544$2 := (if p32$2 then $$s$3$2 else v544$2);
    v545$1 := (if p32$1 then FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v544$1, v543$1), v542$1), v541$1), $pas) else v545$1);
    v545$2 := (if p32$2 then FADD32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v544$2, v543$2), v542$2), v541$2), $pas) else v545$2);
    $$s$0$1 := (if p32$1 then BV_EXTRACT(v545$1, 8, 0) else $$s$0$1);
    $$s$0$2 := (if p32$2 then BV_EXTRACT(v545$2, 8, 0) else $$s$0$2);
    $$s$1$1 := (if p32$1 then BV_EXTRACT(v545$1, 16, 8) else $$s$1$1);
    $$s$1$2 := (if p32$2 then BV_EXTRACT(v545$2, 16, 8) else $$s$1$2);
    $$s$2$1 := (if p32$1 then BV_EXTRACT(v545$1, 24, 16) else $$s$2$1);
    $$s$2$2 := (if p32$2 then BV_EXTRACT(v545$2, 24, 16) else $$s$2$2);
    $$s$3$1 := (if p32$1 then BV_EXTRACT(v545$1, 32, 24) else $$s$3$1);
    $$s$3$2 := (if p32$2 then BV_EXTRACT(v545$2, 32, 24) else $$s$3$2);
    v546$1 := (if p32$1 then $$R$0$1 else v546$1);
    v546$2 := (if p32$2 then $$R$0$2 else v546$2);
    $$98$0$1 := (if p32$1 then v546$1 else $$98$0$1);
    $$98$0$2 := (if p32$2 then v546$2 else $$98$0$2);
    v547$1 := (if p32$1 then $$R$1$1 else v547$1);
    v547$2 := (if p32$2 then $$R$1$2 else v547$2);
    $$98$1$1 := (if p32$1 then v547$1 else $$98$1$1);
    $$98$1$2 := (if p32$2 then v547$2 else $$98$1$2);
    v548$1 := (if p32$1 then $$R$2$1 else v548$1);
    v548$2 := (if p32$2 then $$R$2$2 else v548$2);
    $$98$2$1 := (if p32$1 then v548$1 else $$98$2$1);
    $$98$2$2 := (if p32$2 then v548$2 else $$98$2$2);
    v549$1 := (if p32$1 then $$R$3$1 else v549$1);
    v549$2 := (if p32$2 then $$R$3$2 else v549$2);
    $$100$0$1 := (if p32$1 then v549$1 else $$100$0$1);
    $$100$0$2 := (if p32$2 then v549$2 else $$100$0$2);
    v550$1 := (if p32$1 then $$R$4$1 else v550$1);
    v550$2 := (if p32$2 then $$R$4$2 else v550$2);
    $$100$1$1 := (if p32$1 then v550$1 else $$100$1$1);
    $$100$1$2 := (if p32$2 then v550$2 else $$100$1$2);
    v551$1 := (if p32$1 then $$R$5$1 else v551$1);
    v551$2 := (if p32$2 then $$R$5$2 else v551$2);
    $$100$2$1 := (if p32$1 then v551$1 else $$100$2$1);
    $$100$2$2 := (if p32$2 then v551$2 else $$100$2$2);
    v552$1 := (if p32$1 then $$100$0$1 else v552$1);
    v552$2 := (if p32$2 then $$100$0$2 else v552$2);
    v553$1 := (if p32$1 then $$100$1$1 else v553$1);
    v553$2 := (if p32$2 then $$100$1$2 else v553$2);
    v554$1 := (if p32$1 then $$100$2$1 else v554$1);
    v554$2 := (if p32$2 then $$100$2$2 else v554$2);
    $$a.i18$0$1 := (if p32$1 then v552$1 else $$a.i18$0$1);
    $$a.i18$0$2 := (if p32$2 then v552$2 else $$a.i18$0$2);
    $$a.i18$1$1 := (if p32$1 then v553$1 else $$a.i18$1$1);
    $$a.i18$1$2 := (if p32$2 then v553$2 else $$a.i18$1$2);
    $$a.i18$2$1 := (if p32$1 then v554$1 else $$a.i18$2$1);
    $$a.i18$2$2 := (if p32$2 then v554$2 else $$a.i18$2$2);
    v555$1 := (if p32$1 then $$a.i18$0$1 else v555$1);
    v555$2 := (if p32$2 then $$a.i18$0$2 else v555$2);
    v556$1 := (if p32$1 then $$a.i18$1$1 else v556$1);
    v556$2 := (if p32$2 then $$a.i18$1$2 else v556$2);
    v557$1 := (if p32$1 then $$a.i18$2$1 else v557$1);
    v557$2 := (if p32$2 then $$a.i18$2$2 else v557$2);
    $$31$0$1 := (if p32$1 then FMUL32(v555$1, $t.0$1) else $$31$0$1);
    $$31$0$2 := (if p32$2 then FMUL32(v555$2, $t.0$2) else $$31$0$2);
    $$31$1$1 := (if p32$1 then FMUL32(v556$1, $t.0$1) else $$31$1$1);
    $$31$1$2 := (if p32$2 then FMUL32(v556$2, $t.0$2) else $$31$1$2);
    $$31$2$1 := (if p32$1 then FMUL32(v557$1, $t.0$1) else $$31$2$1);
    $$31$2$2 := (if p32$2 then FMUL32(v557$2, $t.0$2) else $$31$2$2);
    v558$1 := (if p32$1 then $$31$0$1 else v558$1);
    v558$2 := (if p32$2 then $$31$0$2 else v558$2);
    v559$1 := (if p32$1 then $$31$1$1 else v559$1);
    v559$2 := (if p32$2 then $$31$1$2 else v559$2);
    v560$1 := (if p32$1 then $$31$2$1 else v560$1);
    v560$2 := (if p32$2 then $$31$2$2 else v560$2);
    $$32$0$1 := (if p32$1 then v558$1 else $$32$0$1);
    $$32$0$2 := (if p32$2 then v558$2 else $$32$0$2);
    $$32$1$1 := (if p32$1 then v559$1 else $$32$1$1);
    $$32$1$2 := (if p32$2 then v559$2 else $$32$1$2);
    $$32$2$1 := (if p32$1 then v560$1 else $$32$2$1);
    $$32$2$2 := (if p32$2 then v560$2 else $$32$2$2);
    v561$1 := (if p32$1 then $$32$0$1 else v561$1);
    v561$2 := (if p32$2 then $$32$0$2 else v561$2);
    v562$1 := (if p32$1 then $$32$1$1 else v562$1);
    v562$2 := (if p32$2 then $$32$1$2 else v562$2);
    v563$1 := (if p32$1 then $$32$2$1 else v563$1);
    v563$2 := (if p32$2 then $$32$2$2 else v563$2);
    $$99$0$1 := (if p32$1 then v561$1 else $$99$0$1);
    $$99$0$2 := (if p32$2 then v561$2 else $$99$0$2);
    $$99$1$1 := (if p32$1 then v562$1 else $$99$1$1);
    $$99$1$2 := (if p32$2 then v562$2 else $$99$1$2);
    $$99$2$1 := (if p32$1 then v563$1 else $$99$2$1);
    $$99$2$2 := (if p32$2 then v563$2 else $$99$2$2);
    v564$1 := (if p32$1 then $$98$0$1 else v564$1);
    v564$2 := (if p32$2 then $$98$0$2 else v564$2);
    v565$1 := (if p32$1 then $$98$1$1 else v565$1);
    v565$2 := (if p32$2 then $$98$1$2 else v565$2);
    v566$1 := (if p32$1 then $$98$2$1 else v566$1);
    v566$2 := (if p32$2 then $$98$2$2 else v566$2);
    v567$1 := (if p32$1 then $$99$0$1 else v567$1);
    v567$2 := (if p32$2 then $$99$0$2 else v567$2);
    v568$1 := (if p32$1 then $$99$1$1 else v568$1);
    v568$2 := (if p32$2 then $$99$1$2 else v568$2);
    v569$1 := (if p32$1 then $$99$2$1 else v569$1);
    v569$2 := (if p32$2 then $$99$2$2 else v569$2);
    $$a.i16$0$1 := (if p32$1 then v564$1 else $$a.i16$0$1);
    $$a.i16$0$2 := (if p32$2 then v564$2 else $$a.i16$0$2);
    $$a.i16$1$1 := (if p32$1 then v565$1 else $$a.i16$1$1);
    $$a.i16$1$2 := (if p32$2 then v565$2 else $$a.i16$1$2);
    $$a.i16$2$1 := (if p32$1 then v566$1 else $$a.i16$2$1);
    $$a.i16$2$2 := (if p32$2 then v566$2 else $$a.i16$2$2);
    $$b.i17$0$1 := (if p32$1 then v567$1 else $$b.i17$0$1);
    $$b.i17$0$2 := (if p32$2 then v567$2 else $$b.i17$0$2);
    $$b.i17$1$1 := (if p32$1 then v568$1 else $$b.i17$1$1);
    $$b.i17$1$2 := (if p32$2 then v568$2 else $$b.i17$1$2);
    $$b.i17$2$1 := (if p32$1 then v569$1 else $$b.i17$2$1);
    $$b.i17$2$2 := (if p32$2 then v569$2 else $$b.i17$2$2);
    v570$1 := (if p32$1 then $$a.i16$0$1 else v570$1);
    v570$2 := (if p32$2 then $$a.i16$0$2 else v570$2);
    v571$1 := (if p32$1 then $$b.i17$0$1 else v571$1);
    v571$2 := (if p32$2 then $$b.i17$0$2 else v571$2);
    v572$1 := (if p32$1 then $$a.i16$1$1 else v572$1);
    v572$2 := (if p32$2 then $$a.i16$1$2 else v572$2);
    v573$1 := (if p32$1 then $$b.i17$1$1 else v573$1);
    v573$2 := (if p32$2 then $$b.i17$1$2 else v573$2);
    v574$1 := (if p32$1 then $$a.i16$2$1 else v574$1);
    v574$2 := (if p32$2 then $$a.i16$2$2 else v574$2);
    v575$1 := (if p32$1 then $$b.i17$2$1 else v575$1);
    v575$2 := (if p32$2 then $$b.i17$2$2 else v575$2);
    $$33$0$1 := (if p32$1 then FADD32(v570$1, v571$1) else $$33$0$1);
    $$33$0$2 := (if p32$2 then FADD32(v570$2, v571$2) else $$33$0$2);
    $$33$1$1 := (if p32$1 then FADD32(v572$1, v573$1) else $$33$1$1);
    $$33$1$2 := (if p32$2 then FADD32(v572$2, v573$2) else $$33$1$2);
    $$33$2$1 := (if p32$1 then FADD32(v574$1, v575$1) else $$33$2$1);
    $$33$2$2 := (if p32$2 then FADD32(v574$2, v575$2) else $$33$2$2);
    v576$1 := (if p32$1 then $$33$0$1 else v576$1);
    v576$2 := (if p32$2 then $$33$0$2 else v576$2);
    v577$1 := (if p32$1 then $$33$1$1 else v577$1);
    v577$2 := (if p32$2 then $$33$1$2 else v577$2);
    v578$1 := (if p32$1 then $$33$2$1 else v578$1);
    v578$2 := (if p32$2 then $$33$2$2 else v578$2);
    $$34$0$1 := (if p32$1 then v576$1 else $$34$0$1);
    $$34$0$2 := (if p32$2 then v576$2 else $$34$0$2);
    $$34$1$1 := (if p32$1 then v577$1 else $$34$1$1);
    $$34$1$2 := (if p32$2 then v577$2 else $$34$1$2);
    $$34$2$1 := (if p32$1 then v578$1 else $$34$2$1);
    $$34$2$2 := (if p32$2 then v578$2 else $$34$2$2);
    v579$1 := (if p32$1 then $$34$0$1 else v579$1);
    v579$2 := (if p32$2 then $$34$0$2 else v579$2);
    v580$1 := (if p32$1 then $$34$1$1 else v580$1);
    v580$2 := (if p32$2 then $$34$1$2 else v580$2);
    v581$1 := (if p32$1 then $$34$2$1 else v581$1);
    v581$2 := (if p32$2 then $$34$2$2 else v581$2);
    $$P$0$1 := (if p32$1 then v579$1 else $$P$0$1);
    $$P$0$2 := (if p32$2 then v579$2 else $$P$0$2);
    $$P$1$1 := (if p32$1 then v580$1 else $$P$1$1);
    $$P$1$2 := (if p32$2 then v580$2 else $$P$1$2);
    $$P$2$1 := (if p32$1 then v581$1 else $$P$2$1);
    $$P$2$2 := (if p32$2 then v581$2 else $$P$2$2);
    $$35$0$1 := (if p32$1 then 0 else $$35$0$1);
    $$35$0$2 := (if p32$2 then 0 else $$35$0$2);
    $$35$1$1 := (if p32$1 then 1065353216 else $$35$1$1);
    $$35$1$2 := (if p32$2 then 1065353216 else $$35$1$2);
    $$35$2$1 := (if p32$1 then 1073741824 else $$35$2$1);
    $$35$2$2 := (if p32$2 then 1073741824 else $$35$2$2);
    v582$1 := (if p32$1 then $$35$0$1 else v582$1);
    v582$2 := (if p32$2 then $$35$0$2 else v582$2);
    v583$1 := (if p32$1 then $$35$1$1 else v583$1);
    v583$2 := (if p32$2 then $$35$1$2 else v583$2);
    v584$1 := (if p32$1 then $$35$2$1 else v584$1);
    v584$2 := (if p32$2 then $$35$2$2 else v584$2);
    $$102$0$1 := (if p32$1 then v582$1 else $$102$0$1);
    $$102$0$2 := (if p32$2 then v582$2 else $$102$0$2);
    $$102$1$1 := (if p32$1 then v583$1 else $$102$1$1);
    $$102$1$2 := (if p32$2 then v583$2 else $$102$1$2);
    $$102$2$1 := (if p32$1 then v584$1 else $$102$2$1);
    $$102$2$2 := (if p32$2 then v584$2 else $$102$2$2);
    v585$1 := (if p32$1 then $$P$0$1 else v585$1);
    v585$2 := (if p32$2 then $$P$0$2 else v585$2);
    $$103$0$1 := (if p32$1 then v585$1 else $$103$0$1);
    $$103$0$2 := (if p32$2 then v585$2 else $$103$0$2);
    v586$1 := (if p32$1 then $$P$1$1 else v586$1);
    v586$2 := (if p32$2 then $$P$1$2 else v586$2);
    $$103$1$1 := (if p32$1 then v586$1 else $$103$1$1);
    $$103$1$2 := (if p32$2 then v586$2 else $$103$1$2);
    v587$1 := (if p32$1 then $$P$2$1 else v587$1);
    v587$2 := (if p32$2 then $$P$2$2 else v587$2);
    $$103$2$1 := (if p32$1 then v587$1 else $$103$2$1);
    $$103$2$2 := (if p32$2 then v587$2 else $$103$2$2);
    v588$1 := (if p32$1 then $$102$0$1 else v588$1);
    v588$2 := (if p32$2 then $$102$0$2 else v588$2);
    v589$1 := (if p32$1 then $$102$1$1 else v589$1);
    v589$2 := (if p32$2 then $$102$1$2 else v589$2);
    v590$1 := (if p32$1 then $$102$2$1 else v590$1);
    v590$2 := (if p32$2 then $$102$2$2 else v590$2);
    v591$1 := (if p32$1 then $$103$0$1 else v591$1);
    v591$2 := (if p32$2 then $$103$0$2 else v591$2);
    v592$1 := (if p32$1 then $$103$1$1 else v592$1);
    v592$2 := (if p32$2 then $$103$1$2 else v592$2);
    v593$1 := (if p32$1 then $$103$2$1 else v593$1);
    v593$2 := (if p32$2 then $$103$2$2 else v593$2);
    $$a.i14$0$1 := (if p32$1 then v588$1 else $$a.i14$0$1);
    $$a.i14$0$2 := (if p32$2 then v588$2 else $$a.i14$0$2);
    $$a.i14$1$1 := (if p32$1 then v589$1 else $$a.i14$1$1);
    $$a.i14$1$2 := (if p32$2 then v589$2 else $$a.i14$1$2);
    $$a.i14$2$1 := (if p32$1 then v590$1 else $$a.i14$2$1);
    $$a.i14$2$2 := (if p32$2 then v590$2 else $$a.i14$2$2);
    $$b.i15$0$1 := (if p32$1 then v591$1 else $$b.i15$0$1);
    $$b.i15$0$2 := (if p32$2 then v591$2 else $$b.i15$0$2);
    $$b.i15$1$1 := (if p32$1 then v592$1 else $$b.i15$1$1);
    $$b.i15$1$2 := (if p32$2 then v592$2 else $$b.i15$1$2);
    $$b.i15$2$1 := (if p32$1 then v593$1 else $$b.i15$2$1);
    $$b.i15$2$2 := (if p32$2 then v593$2 else $$b.i15$2$2);
    v594$1 := (if p32$1 then $$a.i14$0$1 else v594$1);
    v594$2 := (if p32$2 then $$a.i14$0$2 else v594$2);
    v595$1 := (if p32$1 then $$b.i15$0$1 else v595$1);
    v595$2 := (if p32$2 then $$b.i15$0$2 else v595$2);
    v596$1 := (if p32$1 then $$a.i14$1$1 else v596$1);
    v596$2 := (if p32$2 then $$a.i14$1$2 else v596$2);
    v597$1 := (if p32$1 then $$b.i15$1$1 else v597$1);
    v597$2 := (if p32$2 then $$b.i15$1$2 else v597$2);
    v598$1 := (if p32$1 then $$a.i14$2$1 else v598$1);
    v598$2 := (if p32$2 then $$a.i14$2$2 else v598$2);
    v599$1 := (if p32$1 then $$b.i15$2$1 else v599$1);
    v599$2 := (if p32$2 then $$b.i15$2$2 else v599$2);
    $$36$0$1 := (if p32$1 then FSUB32(v594$1, v595$1) else $$36$0$1);
    $$36$0$2 := (if p32$2 then FSUB32(v594$2, v595$2) else $$36$0$2);
    $$36$1$1 := (if p32$1 then FSUB32(v596$1, v597$1) else $$36$1$1);
    $$36$1$2 := (if p32$2 then FSUB32(v596$2, v597$2) else $$36$1$2);
    $$36$2$1 := (if p32$1 then FSUB32(v598$1, v599$1) else $$36$2$1);
    $$36$2$2 := (if p32$2 then FSUB32(v598$2, v599$2) else $$36$2$2);
    v600$1 := (if p32$1 then $$36$0$1 else v600$1);
    v600$2 := (if p32$2 then $$36$0$2 else v600$2);
    v601$1 := (if p32$1 then $$36$1$1 else v601$1);
    v601$2 := (if p32$2 then $$36$1$2 else v601$2);
    v602$1 := (if p32$1 then $$36$2$1 else v602$1);
    v602$2 := (if p32$2 then $$36$2$2 else v602$2);
    $$37$0$1 := (if p32$1 then v600$1 else $$37$0$1);
    $$37$0$2 := (if p32$2 then v600$2 else $$37$0$2);
    $$37$1$1 := (if p32$1 then v601$1 else $$37$1$1);
    $$37$1$2 := (if p32$2 then v601$2 else $$37$1$2);
    $$37$2$1 := (if p32$1 then v602$1 else $$37$2$1);
    $$37$2$2 := (if p32$2 then v602$2 else $$37$2$2);
    v603$1 := (if p32$1 then $$37$0$1 else v603$1);
    v603$2 := (if p32$2 then $$37$0$2 else v603$2);
    v604$1 := (if p32$1 then $$37$1$1 else v604$1);
    v604$2 := (if p32$2 then $$37$1$2 else v604$2);
    v605$1 := (if p32$1 then $$37$2$1 else v605$1);
    v605$2 := (if p32$2 then $$37$2$2 else v605$2);
    $$101$0$1 := (if p32$1 then v603$1 else $$101$0$1);
    $$101$0$2 := (if p32$2 then v603$2 else $$101$0$2);
    $$101$1$1 := (if p32$1 then v604$1 else $$101$1$1);
    $$101$1$2 := (if p32$2 then v604$2 else $$101$1$2);
    $$101$2$1 := (if p32$1 then v605$1 else $$101$2$1);
    $$101$2$2 := (if p32$2 then v605$2 else $$101$2$2);
    v606$1 := (if p32$1 then $$101$0$1 else v606$1);
    v606$2 := (if p32$2 then $$101$0$2 else v606$2);
    v607$1 := (if p32$1 then $$101$1$1 else v607$1);
    v607$2 := (if p32$2 then $$101$1$2 else v607$2);
    v608$1 := (if p32$1 then $$101$2$1 else v608$1);
    v608$2 := (if p32$2 then $$101$2$2 else v608$2);
    call {:sourceloc_num 1124} v609$1, v609$2 := $_Z9normalize6float3(p32$1, v606$1, v607$1, v608$1, p32$2, v606$2, v607$2, v608$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9normalize6float3"} true;
    $$L$0$1 := (if p32$1 then BV_EXTRACT(v609$1, 32, 0) else $$L$0$1);
    $$L$0$2 := (if p32$2 then BV_EXTRACT(v609$2, 32, 0) else $$L$0$2);
    $$L$1$1 := (if p32$1 then BV_EXTRACT(v609$1, 64, 32) else $$L$1$1);
    $$L$1$2 := (if p32$2 then BV_EXTRACT(v609$2, 64, 32) else $$L$1$2);
    $$L$2$1 := (if p32$1 then BV_EXTRACT(v609$1, 96, 64) else $$L$2$1);
    $$L$2$2 := (if p32$2 then BV_EXTRACT(v609$2, 96, 64) else $$L$2$2);
    v610$1 := (if p32$1 then $$R$3$1 else v610$1);
    v610$2 := (if p32$2 then $$R$3$2 else v610$2);
    $$104$0$1 := (if p32$1 then v610$1 else $$104$0$1);
    $$104$0$2 := (if p32$2 then v610$2 else $$104$0$2);
    v611$1 := (if p32$1 then $$R$4$1 else v611$1);
    v611$2 := (if p32$2 then $$R$4$2 else v611$2);
    $$104$1$1 := (if p32$1 then v611$1 else $$104$1$1);
    $$104$1$2 := (if p32$2 then v611$2 else $$104$1$2);
    v612$1 := (if p32$1 then $$R$5$1 else v612$1);
    v612$2 := (if p32$2 then $$R$5$2 else v612$2);
    $$104$2$1 := (if p32$1 then v612$1 else $$104$2$1);
    $$104$2$2 := (if p32$2 then v612$2 else $$104$2$2);
    v613$1 := (if p32$1 then $$104$0$1 else v613$1);
    v613$2 := (if p32$2 then $$104$0$2 else v613$2);
    v614$1 := (if p32$1 then $$104$1$1 else v614$1);
    v614$2 := (if p32$2 then $$104$1$2 else v614$2);
    v615$1 := (if p32$1 then $$104$2$1 else v615$1);
    v615$2 := (if p32$2 then $$104$2$2 else v615$2);
    $$b.i13$0$1 := (if p32$1 then v613$1 else $$b.i13$0$1);
    $$b.i13$0$2 := (if p32$2 then v613$2 else $$b.i13$0$2);
    $$b.i13$1$1 := (if p32$1 then v614$1 else $$b.i13$1$1);
    $$b.i13$1$2 := (if p32$2 then v614$2 else $$b.i13$1$2);
    $$b.i13$2$1 := (if p32$1 then v615$1 else $$b.i13$2$1);
    $$b.i13$2$2 := (if p32$2 then v615$2 else $$b.i13$2$2);
    v616$1 := (if p32$1 then $$b.i13$0$1 else v616$1);
    v616$2 := (if p32$2 then $$b.i13$0$2 else v616$2);
    v617$1 := (if p32$1 then $$b.i13$1$1 else v617$1);
    v617$2 := (if p32$2 then $$b.i13$1$2 else v617$2);
    v618$1 := (if p32$1 then $$b.i13$2$1 else v618$1);
    v618$2 := (if p32$2 then $$b.i13$2$2 else v618$2);
    $$38$0$1 := (if p32$1 then FMUL32(-1082130432, v616$1) else $$38$0$1);
    $$38$0$2 := (if p32$2 then FMUL32(-1082130432, v616$2) else $$38$0$2);
    $$38$1$1 := (if p32$1 then FMUL32(-1082130432, v617$1) else $$38$1$1);
    $$38$1$2 := (if p32$2 then FMUL32(-1082130432, v617$2) else $$38$1$2);
    $$38$2$1 := (if p32$1 then FMUL32(-1082130432, v618$1) else $$38$2$1);
    $$38$2$2 := (if p32$2 then FMUL32(-1082130432, v618$2) else $$38$2$2);
    v619$1 := (if p32$1 then $$38$0$1 else v619$1);
    v619$2 := (if p32$2 then $$38$0$2 else v619$2);
    v620$1 := (if p32$1 then $$38$1$1 else v620$1);
    v620$2 := (if p32$2 then $$38$1$2 else v620$2);
    v621$1 := (if p32$1 then $$38$2$1 else v621$1);
    v621$2 := (if p32$2 then $$38$2$2 else v621$2);
    $$39$0$1 := (if p32$1 then v619$1 else $$39$0$1);
    $$39$0$2 := (if p32$2 then v619$2 else $$39$0$2);
    $$39$1$1 := (if p32$1 then v620$1 else $$39$1$1);
    $$39$1$2 := (if p32$2 then v620$2 else $$39$1$2);
    $$39$2$1 := (if p32$1 then v621$1 else $$39$2$1);
    $$39$2$2 := (if p32$2 then v621$2 else $$39$2$2);
    v622$1 := (if p32$1 then $$39$0$1 else v622$1);
    v622$2 := (if p32$2 then $$39$0$2 else v622$2);
    v623$1 := (if p32$1 then $$39$1$1 else v623$1);
    v623$2 := (if p32$2 then $$39$1$2 else v623$2);
    v624$1 := (if p32$1 then $$39$2$1 else v624$1);
    v624$2 := (if p32$2 then $$39$2$2 else v624$2);
    $$V$0$1 := (if p32$1 then v622$1 else $$V$0$1);
    $$V$0$2 := (if p32$2 then v622$2 else $$V$0$2);
    $$V$1$1 := (if p32$1 then v623$1 else $$V$1$1);
    $$V$1$2 := (if p32$2 then v623$2 else $$V$1$2);
    $$V$2$1 := (if p32$1 then v624$1 else $$V$2$1);
    $$V$2$2 := (if p32$2 then v624$2 else $$V$2$2);
    v625$1 := (if p32$1 then $$node$32$1 else v625$1);
    v625$2 := (if p32$2 then $$node$32$2 else v625$2);
    v626$1 := (if p32$1 then $$node$33$1 else v626$1);
    v626$2 := (if p32$2 then $$node$33$2 else v626$2);
    v627$1 := (if p32$1 then $$node$34$1 else v627$1);
    v627$2 := (if p32$2 then $$node$34$2 else v627$2);
    v628$1 := (if p32$1 then $$node$35$1 else v628$1);
    v628$2 := (if p32$2 then $$node$35$2 else v628$2);
    v629$1 := (if p32$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v628$1, v627$1), v626$1), v625$1) != 0 else v629$1);
    v629$2 := (if p32$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v628$2, v627$2), v626$2), v625$2) != 0 else v629$2);
    p33$1 := (if p32$1 && v629$1 then v629$1 else p33$1);
    p33$2 := (if p32$2 && v629$2 then v629$2 else p33$2);
    p34$1 := (if p32$1 && !v629$1 then !v629$1 else p34$1);
    p34$2 := (if p32$2 && !v629$2 then !v629$2 else p34$2);
    v630$1 := (if p33$1 then $$P$0$1 else v630$1);
    v630$2 := (if p33$2 then $$P$0$2 else v630$2);
    $$105$0$1 := (if p33$1 then v630$1 else $$105$0$1);
    $$105$0$2 := (if p33$2 then v630$2 else $$105$0$2);
    v631$1 := (if p33$1 then $$P$1$1 else v631$1);
    v631$2 := (if p33$2 then $$P$1$2 else v631$2);
    $$105$1$1 := (if p33$1 then v631$1 else $$105$1$1);
    $$105$1$2 := (if p33$2 then v631$2 else $$105$1$2);
    v632$1 := (if p33$1 then $$P$2$1 else v632$1);
    v632$2 := (if p33$2 then $$P$2$2 else v632$2);
    $$105$2$1 := (if p33$1 then v632$1 else $$105$2$1);
    $$105$2$2 := (if p33$2 then v632$2 else $$105$2$2);
    v633$1 := (if p33$1 then $$105$0$1 else v633$1);
    v633$2 := (if p33$2 then $$105$0$2 else v633$2);
    v634$1 := (if p33$1 then $$105$1$1 else v634$1);
    v634$2 := (if p33$2 then $$105$1$2 else v634$2);
    v635$1 := (if p33$1 then $$105$2$1 else v635$1);
    v635$2 := (if p33$2 then $$105$2$2 else v635$2);
    $$P.i11$0$1 := (if p33$1 then v633$1 else $$P.i11$0$1);
    $$P.i11$0$2 := (if p33$2 then v633$2 else $$P.i11$0$2);
    $$P.i11$1$1 := (if p33$1 then v634$1 else $$P.i11$1$1);
    $$P.i11$1$2 := (if p33$2 then v634$2 else $$P.i11$1$2);
    $$P.i11$2$1 := (if p33$1 then v635$1 else $$P.i11$2$1);
    $$P.i11$2$2 := (if p33$2 then v635$2 else $$P.i11$2$2);
    $$42$0$1 := (if p33$1 then 0 else $$42$0$1);
    $$42$0$2 := (if p33$2 then 0 else $$42$0$2);
    $$42$1$1 := (if p33$1 then 1065353216 else $$42$1$1);
    $$42$1$2 := (if p33$2 then 1065353216 else $$42$1$2);
    $$42$2$1 := (if p33$1 then 0 else $$42$2$1);
    $$42$2$2 := (if p33$2 then 0 else $$42$2$2);
    v636$1 := (if p33$1 then $$42$0$1 else v636$1);
    v636$2 := (if p33$2 then $$42$0$2 else v636$2);
    v637$1 := (if p33$1 then $$42$1$1 else v637$1);
    v637$2 := (if p33$2 then $$42$1$2 else v637$2);
    v638$1 := (if p33$1 then $$42$2$1 else v638$1);
    v638$2 := (if p33$2 then $$42$2$2 else v638$2);
    $$44$0$1 := (if p33$1 then v636$1 else $$44$0$1);
    $$44$0$2 := (if p33$2 then v636$2 else $$44$0$2);
    $$44$1$1 := (if p33$1 then v637$1 else $$44$1$1);
    $$44$1$2 := (if p33$2 then v637$2 else $$44$1$2);
    $$44$2$1 := (if p33$1 then v638$1 else $$44$2$1);
    $$44$2$2 := (if p33$2 then v638$2 else $$44$2$2);
    v639$1 := (if p33$1 then $$44$0$1 else v639$1);
    v639$2 := (if p33$2 then $$44$0$2 else v639$2);
    v640$1 := (if p33$1 then $$44$1$1 else v640$1);
    v640$2 := (if p33$2 then $$44$1$2 else v640$2);
    v641$1 := (if p33$1 then $$44$2$1 else v641$1);
    v641$2 := (if p33$2 then $$44$2$2 else v641$2);
    call {:sourceloc_num 1187} v642$1, v642$2 := $_Z9normalize6float3(p33$1, v639$1, v640$1, v641$1, p33$2, v639$2, v640$2, v641$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9normalize6float3"} true;
    $$43$0$1 := (if p33$1 then BV_EXTRACT(v642$1, 32, 0) else $$43$0$1);
    $$43$0$2 := (if p33$2 then BV_EXTRACT(v642$2, 32, 0) else $$43$0$2);
    $$43$1$1 := (if p33$1 then BV_EXTRACT(v642$1, 64, 32) else $$43$1$1);
    $$43$1$2 := (if p33$2 then BV_EXTRACT(v642$2, 64, 32) else $$43$1$2);
    $$43$2$1 := (if p33$1 then BV_EXTRACT(v642$1, 96, 64) else $$43$2$1);
    $$43$2$2 := (if p33$2 then BV_EXTRACT(v642$2, 96, 64) else $$43$2$2);
    v643$1 := (if p33$1 then $$43$0$1 else v643$1);
    v643$2 := (if p33$2 then $$43$0$2 else v643$2);
    v644$1 := (if p33$1 then $$43$1$1 else v644$1);
    v644$2 := (if p33$2 then $$43$1$2 else v644$2);
    v645$1 := (if p33$1 then $$43$2$1 else v645$1);
    v645$2 := (if p33$2 then $$43$2$2 else v645$2);
    $$N$0$1 := (if p33$1 then v643$1 else $$N$0$1);
    $$N$0$2 := (if p33$2 then v643$2 else $$N$0$2);
    $$N$1$1 := (if p33$1 then v644$1 else $$N$1$1);
    $$N$1$2 := (if p33$2 then v644$2 else $$N$1$2);
    $$N$2$1 := (if p33$1 then v645$1 else $$N$2$1);
    $$N$2$2 := (if p33$2 then v645$2 else $$N$2$2);
    v646$1 := (if p34$1 then $$P$0$1 else v646$1);
    v646$2 := (if p34$2 then $$P$0$2 else v646$2);
    $$106$0$1 := (if p34$1 then v646$1 else $$106$0$1);
    $$106$0$2 := (if p34$2 then v646$2 else $$106$0$2);
    v647$1 := (if p34$1 then $$P$1$1 else v647$1);
    v647$2 := (if p34$2 then $$P$1$2 else v647$2);
    $$106$1$1 := (if p34$1 then v647$1 else $$106$1$1);
    $$106$1$2 := (if p34$2 then v647$2 else $$106$1$2);
    v648$1 := (if p34$1 then $$P$2$1 else v648$1);
    v648$2 := (if p34$2 then $$P$2$2 else v648$2);
    $$106$2$1 := (if p34$1 then v648$1 else $$106$2$1);
    $$106$2$2 := (if p34$2 then v648$2 else $$106$2$2);
    v649$1 := (if p34$1 then $$s$0$1 else v649$1);
    v649$2 := (if p34$2 then $$s$0$2 else v649$2);
    $$107$0$1 := (if p34$1 then v649$1 else $$107$0$1);
    $$107$0$2 := (if p34$2 then v649$2 else $$107$0$2);
    v650$1 := (if p34$1 then $$s$1$1 else v650$1);
    v650$2 := (if p34$2 then $$s$1$2 else v650$2);
    $$107$1$1 := (if p34$1 then v650$1 else $$107$1$1);
    $$107$1$2 := (if p34$2 then v650$2 else $$107$1$2);
    v651$1 := (if p34$1 then $$s$2$1 else v651$1);
    v651$2 := (if p34$2 then $$s$2$2 else v651$2);
    $$107$2$1 := (if p34$1 then v651$1 else $$107$2$1);
    $$107$2$2 := (if p34$2 then v651$2 else $$107$2$2);
    v652$1 := (if p34$1 then $$s$3$1 else v652$1);
    v652$2 := (if p34$2 then $$s$3$2 else v652$2);
    $$107$3$1 := (if p34$1 then v652$1 else $$107$3$1);
    $$107$3$2 := (if p34$2 then v652$2 else $$107$3$2);
    v653$1 := (if p34$1 then $$s$4$1 else v653$1);
    v653$2 := (if p34$2 then $$s$4$2 else v653$2);
    $$107$4$1 := (if p34$1 then v653$1 else $$107$4$1);
    $$107$4$2 := (if p34$2 then v653$2 else $$107$4$2);
    v654$1 := (if p34$1 then $$s$5$1 else v654$1);
    v654$2 := (if p34$2 then $$s$5$2 else v654$2);
    $$107$5$1 := (if p34$1 then v654$1 else $$107$5$1);
    $$107$5$2 := (if p34$2 then v654$2 else $$107$5$2);
    v655$1 := (if p34$1 then $$s$6$1 else v655$1);
    v655$2 := (if p34$2 then $$s$6$2 else v655$2);
    $$107$6$1 := (if p34$1 then v655$1 else $$107$6$1);
    $$107$6$2 := (if p34$2 then v655$2 else $$107$6$2);
    v656$1 := (if p34$1 then $$s$7$1 else v656$1);
    v656$2 := (if p34$2 then $$s$7$2 else v656$2);
    $$107$7$1 := (if p34$1 then v656$1 else $$107$7$1);
    $$107$7$2 := (if p34$2 then v656$2 else $$107$7$2);
    v657$1 := (if p34$1 then $$s$8$1 else v657$1);
    v657$2 := (if p34$2 then $$s$8$2 else v657$2);
    $$107$8$1 := (if p34$1 then v657$1 else $$107$8$1);
    $$107$8$2 := (if p34$2 then v657$2 else $$107$8$2);
    v658$1 := (if p34$1 then $$s$9$1 else v658$1);
    v658$2 := (if p34$2 then $$s$9$2 else v658$2);
    $$107$9$1 := (if p34$1 then v658$1 else $$107$9$1);
    $$107$9$2 := (if p34$2 then v658$2 else $$107$9$2);
    v659$1 := (if p34$1 then $$s$10$1 else v659$1);
    v659$2 := (if p34$2 then $$s$10$2 else v659$2);
    $$107$10$1 := (if p34$1 then v659$1 else $$107$10$1);
    $$107$10$2 := (if p34$2 then v659$2 else $$107$10$2);
    v660$1 := (if p34$1 then $$s$11$1 else v660$1);
    v660$2 := (if p34$2 then $$s$11$2 else v660$2);
    $$107$11$1 := (if p34$1 then v660$1 else $$107$11$1);
    $$107$11$2 := (if p34$2 then v660$2 else $$107$11$2);
    v661$1 := (if p34$1 then $$106$0$1 else v661$1);
    v661$2 := (if p34$2 then $$106$0$2 else v661$2);
    v662$1 := (if p34$1 then $$106$1$1 else v662$1);
    v662$2 := (if p34$2 then $$106$1$2 else v662$2);
    v663$1 := (if p34$1 then $$106$2$1 else v663$1);
    v663$2 := (if p34$2 then $$106$2$2 else v663$2);
    v664$1 := (if p34$1 then $$107$0$1 else v664$1);
    v664$2 := (if p34$2 then $$107$0$2 else v664$2);
    v665$1 := (if p34$1 then $$107$1$1 else v665$1);
    v665$2 := (if p34$2 then $$107$1$2 else v665$2);
    v666$1 := (if p34$1 then $$107$2$1 else v666$1);
    v666$2 := (if p34$2 then $$107$2$2 else v666$2);
    v667$1 := (if p34$1 then $$107$3$1 else v667$1);
    v667$2 := (if p34$2 then $$107$3$2 else v667$2);
    v668$1 := (if p34$1 then $$107$4$1 else v668$1);
    v668$2 := (if p34$2 then $$107$4$2 else v668$2);
    v669$1 := (if p34$1 then $$107$5$1 else v669$1);
    v669$2 := (if p34$2 then $$107$5$2 else v669$2);
    v670$1 := (if p34$1 then $$107$6$1 else v670$1);
    v670$2 := (if p34$2 then $$107$6$2 else v670$2);
    v671$1 := (if p34$1 then $$107$7$1 else v671$1);
    v671$2 := (if p34$2 then $$107$7$2 else v671$2);
    v672$1 := (if p34$1 then $$107$8$1 else v672$1);
    v672$2 := (if p34$2 then $$107$8$2 else v672$2);
    v673$1 := (if p34$1 then $$107$9$1 else v673$1);
    v673$2 := (if p34$2 then $$107$9$2 else v673$2);
    v674$1 := (if p34$1 then $$107$10$1 else v674$1);
    v674$2 := (if p34$2 then $$107$10$2 else v674$2);
    v675$1 := (if p34$1 then $$107$11$1 else v675$1);
    v675$2 := (if p34$2 then $$107$11$2 else v675$2);
    $$P.i$0$1 := (if p34$1 then v661$1 else $$P.i$0$1);
    $$P.i$0$2 := (if p34$2 then v661$2 else $$P.i$0$2);
    $$P.i$1$1 := (if p34$1 then v662$1 else $$P.i$1$1);
    $$P.i$1$2 := (if p34$2 then v662$2 else $$P.i$1$2);
    $$P.i$2$1 := (if p34$1 then v663$1 else $$P.i$2$1);
    $$P.i$2$2 := (if p34$2 then v663$2 else $$P.i$2$2);
    $$C.i$0$1 := (if p34$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v667$1, v666$1), v665$1), v664$1) else $$C.i$0$1);
    $$C.i$0$2 := (if p34$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v667$2, v666$2), v665$2), v664$2) else $$C.i$0$2);
    $$C.i$1$1 := (if p34$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v671$1, v670$1), v669$1), v668$1) else $$C.i$1$1);
    $$C.i$1$2 := (if p34$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v671$2, v670$2), v669$2), v668$2) else $$C.i$1$2);
    $$C.i$2$1 := (if p34$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v675$1, v674$1), v673$1), v672$1) else $$C.i$2$1);
    $$C.i$2$2 := (if p34$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v675$2, v674$2), v673$2), v672$2) else $$C.i$2$2);
    v676$1 := (if p34$1 then $$P.i$0$1 else v676$1);
    v676$2 := (if p34$2 then $$P.i$0$2 else v676$2);
    $$51$0$1 := (if p34$1 then v676$1 else $$51$0$1);
    $$51$0$2 := (if p34$2 then v676$2 else $$51$0$2);
    v677$1 := (if p34$1 then $$P.i$1$1 else v677$1);
    v677$2 := (if p34$2 then $$P.i$1$2 else v677$2);
    $$51$1$1 := (if p34$1 then v677$1 else $$51$1$1);
    $$51$1$2 := (if p34$2 then v677$2 else $$51$1$2);
    v678$1 := (if p34$1 then $$P.i$2$1 else v678$1);
    v678$2 := (if p34$2 then $$P.i$2$2 else v678$2);
    $$51$2$1 := (if p34$1 then v678$1 else $$51$2$1);
    $$51$2$2 := (if p34$2 then v678$2 else $$51$2$2);
    v679$1 := (if p34$1 then $$C.i$0$1 else v679$1);
    v679$2 := (if p34$2 then $$C.i$0$2 else v679$2);
    $$52$0$1 := (if p34$1 then v679$1 else $$52$0$1);
    $$52$0$2 := (if p34$2 then v679$2 else $$52$0$2);
    v680$1 := (if p34$1 then $$C.i$1$1 else v680$1);
    v680$2 := (if p34$2 then $$C.i$1$2 else v680$2);
    $$52$1$1 := (if p34$1 then v680$1 else $$52$1$1);
    $$52$1$2 := (if p34$2 then v680$2 else $$52$1$2);
    v681$1 := (if p34$1 then $$C.i$2$1 else v681$1);
    v681$2 := (if p34$2 then $$C.i$2$2 else v681$2);
    $$52$2$1 := (if p34$1 then v681$1 else $$52$2$1);
    $$52$2$2 := (if p34$2 then v681$2 else $$52$2$2);
    v682$1 := (if p34$1 then $$51$0$1 else v682$1);
    v682$2 := (if p34$2 then $$51$0$2 else v682$2);
    v683$1 := (if p34$1 then $$51$1$1 else v683$1);
    v683$2 := (if p34$2 then $$51$1$2 else v683$2);
    v684$1 := (if p34$1 then $$51$2$1 else v684$1);
    v684$2 := (if p34$2 then $$51$2$2 else v684$2);
    v685$1 := (if p34$1 then $$52$0$1 else v685$1);
    v685$2 := (if p34$2 then $$52$0$2 else v685$2);
    v686$1 := (if p34$1 then $$52$1$1 else v686$1);
    v686$2 := (if p34$2 then $$52$1$2 else v686$2);
    v687$1 := (if p34$1 then $$52$2$1 else v687$1);
    v687$2 := (if p34$2 then $$52$2$2 else v687$2);
    $$a.i.i$0$1 := (if p34$1 then v682$1 else $$a.i.i$0$1);
    $$a.i.i$0$2 := (if p34$2 then v682$2 else $$a.i.i$0$2);
    $$a.i.i$1$1 := (if p34$1 then v683$1 else $$a.i.i$1$1);
    $$a.i.i$1$2 := (if p34$2 then v683$2 else $$a.i.i$1$2);
    $$a.i.i$2$1 := (if p34$1 then v684$1 else $$a.i.i$2$1);
    $$a.i.i$2$2 := (if p34$2 then v684$2 else $$a.i.i$2$2);
    $$b.i.i$0$1 := (if p34$1 then v685$1 else $$b.i.i$0$1);
    $$b.i.i$0$2 := (if p34$2 then v685$2 else $$b.i.i$0$2);
    $$b.i.i$1$1 := (if p34$1 then v686$1 else $$b.i.i$1$1);
    $$b.i.i$1$2 := (if p34$2 then v686$2 else $$b.i.i$1$2);
    $$b.i.i$2$1 := (if p34$1 then v687$1 else $$b.i.i$2$1);
    $$b.i.i$2$2 := (if p34$2 then v687$2 else $$b.i.i$2$2);
    v688$1 := (if p34$1 then $$a.i.i$0$1 else v688$1);
    v688$2 := (if p34$2 then $$a.i.i$0$2 else v688$2);
    v689$1 := (if p34$1 then $$b.i.i$0$1 else v689$1);
    v689$2 := (if p34$2 then $$b.i.i$0$2 else v689$2);
    v690$1 := (if p34$1 then $$a.i.i$1$1 else v690$1);
    v690$2 := (if p34$2 then $$a.i.i$1$2 else v690$2);
    v691$1 := (if p34$1 then $$b.i.i$1$1 else v691$1);
    v691$2 := (if p34$2 then $$b.i.i$1$2 else v691$2);
    v692$1 := (if p34$1 then $$a.i.i$2$1 else v692$1);
    v692$2 := (if p34$2 then $$a.i.i$2$2 else v692$2);
    v693$1 := (if p34$1 then $$b.i.i$2$1 else v693$1);
    v693$2 := (if p34$2 then $$b.i.i$2$2 else v693$2);
    $$47$0$1 := (if p34$1 then FSUB32(v688$1, v689$1) else $$47$0$1);
    $$47$0$2 := (if p34$2 then FSUB32(v688$2, v689$2) else $$47$0$2);
    $$47$1$1 := (if p34$1 then FSUB32(v690$1, v691$1) else $$47$1$1);
    $$47$1$2 := (if p34$2 then FSUB32(v690$2, v691$2) else $$47$1$2);
    $$47$2$1 := (if p34$1 then FSUB32(v692$1, v693$1) else $$47$2$1);
    $$47$2$2 := (if p34$2 then FSUB32(v692$2, v693$2) else $$47$2$2);
    v694$1 := (if p34$1 then $$47$0$1 else v694$1);
    v694$2 := (if p34$2 then $$47$0$2 else v694$2);
    v695$1 := (if p34$1 then $$47$1$1 else v695$1);
    v695$2 := (if p34$2 then $$47$1$2 else v695$2);
    v696$1 := (if p34$1 then $$47$2$1 else v696$1);
    v696$2 := (if p34$2 then $$47$2$2 else v696$2);
    $$48$0$1 := (if p34$1 then v694$1 else $$48$0$1);
    $$48$0$2 := (if p34$2 then v694$2 else $$48$0$2);
    $$48$1$1 := (if p34$1 then v695$1 else $$48$1$1);
    $$48$1$2 := (if p34$2 then v695$2 else $$48$1$2);
    $$48$2$1 := (if p34$1 then v696$1 else $$48$2$1);
    $$48$2$2 := (if p34$2 then v696$2 else $$48$2$2);
    v697$1 := (if p34$1 then $$48$0$1 else v697$1);
    v697$2 := (if p34$2 then $$48$0$2 else v697$2);
    v698$1 := (if p34$1 then $$48$1$1 else v698$1);
    v698$2 := (if p34$2 then $$48$1$2 else v698$2);
    v699$1 := (if p34$1 then $$48$2$1 else v699$1);
    v699$2 := (if p34$2 then $$48$2$2 else v699$2);
    $$50$0$1 := (if p34$1 then v697$1 else $$50$0$1);
    $$50$0$2 := (if p34$2 then v697$2 else $$50$0$2);
    $$50$1$1 := (if p34$1 then v698$1 else $$50$1$1);
    $$50$1$2 := (if p34$2 then v698$2 else $$50$1$2);
    $$50$2$1 := (if p34$1 then v699$1 else $$50$2$1);
    $$50$2$2 := (if p34$2 then v699$2 else $$50$2$2);
    v700$1 := (if p34$1 then $$50$0$1 else v700$1);
    v700$2 := (if p34$2 then $$50$0$2 else v700$2);
    v701$1 := (if p34$1 then $$50$1$1 else v701$1);
    v701$2 := (if p34$2 then $$50$1$2 else v701$2);
    v702$1 := (if p34$1 then $$50$2$1 else v702$1);
    v702$2 := (if p34$2 then $$50$2$2 else v702$2);
    call {:sourceloc_num 1297} v703$1, v703$2 := $_Z9normalize6float3(p34$1, v700$1, v701$1, v702$1, p34$2, v700$2, v701$2, v702$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9normalize6float3"} true;
    $$49$0$1 := (if p34$1 then BV_EXTRACT(v703$1, 32, 0) else $$49$0$1);
    $$49$0$2 := (if p34$2 then BV_EXTRACT(v703$2, 32, 0) else $$49$0$2);
    $$49$1$1 := (if p34$1 then BV_EXTRACT(v703$1, 64, 32) else $$49$1$1);
    $$49$1$2 := (if p34$2 then BV_EXTRACT(v703$2, 64, 32) else $$49$1$2);
    $$49$2$1 := (if p34$1 then BV_EXTRACT(v703$1, 96, 64) else $$49$2$1);
    $$49$2$2 := (if p34$2 then BV_EXTRACT(v703$2, 96, 64) else $$49$2$2);
    v704$1 := (if p34$1 then $$49$0$1 else v704$1);
    v704$2 := (if p34$2 then $$49$0$2 else v704$2);
    v705$1 := (if p34$1 then $$49$1$1 else v705$1);
    v705$2 := (if p34$2 then $$49$1$2 else v705$2);
    v706$1 := (if p34$1 then $$49$2$1 else v706$1);
    v706$2 := (if p34$2 then $$49$2$2 else v706$2);
    $$N$0$1 := (if p34$1 then v704$1 else $$N$0$1);
    $$N$0$2 := (if p34$2 then v704$2 else $$N$0$2);
    $$N$1$1 := (if p34$1 then v705$1 else $$N$1$1);
    $$N$1$2 := (if p34$2 then v705$2 else $$N$1$2);
    $$N$2$1 := (if p34$1 then v706$1 else $$N$2$1);
    $$N$2$2 := (if p34$2 then v706$2 else $$N$2$2);
    v707$1 := (if p32$1 then $$N$0$1 else v707$1);
    v707$2 := (if p32$2 then $$N$0$2 else v707$2);
    $$108$0$1 := (if p32$1 then v707$1 else $$108$0$1);
    $$108$0$2 := (if p32$2 then v707$2 else $$108$0$2);
    v708$1 := (if p32$1 then $$N$1$1 else v708$1);
    v708$2 := (if p32$2 then $$N$1$2 else v708$2);
    $$108$1$1 := (if p32$1 then v708$1 else $$108$1$1);
    $$108$1$2 := (if p32$2 then v708$2 else $$108$1$2);
    v709$1 := (if p32$1 then $$N$2$1 else v709$1);
    v709$2 := (if p32$2 then $$N$2$2 else v709$2);
    $$108$2$1 := (if p32$1 then v709$1 else $$108$2$1);
    $$108$2$2 := (if p32$2 then v709$2 else $$108$2$2);
    v710$1 := (if p32$1 then $$L$0$1 else v710$1);
    v710$2 := (if p32$2 then $$L$0$2 else v710$2);
    $$109$0$1 := (if p32$1 then v710$1 else $$109$0$1);
    $$109$0$2 := (if p32$2 then v710$2 else $$109$0$2);
    v711$1 := (if p32$1 then $$L$1$1 else v711$1);
    v711$2 := (if p32$2 then $$L$1$2 else v711$2);
    $$109$1$1 := (if p32$1 then v711$1 else $$109$1$1);
    $$109$1$2 := (if p32$2 then v711$2 else $$109$1$2);
    v712$1 := (if p32$1 then $$L$2$1 else v712$1);
    v712$2 := (if p32$2 then $$L$2$2 else v712$2);
    $$109$2$1 := (if p32$1 then v712$1 else $$109$2$1);
    $$109$2$2 := (if p32$2 then v712$2 else $$109$2$2);
    v713$1 := (if p32$1 then $$108$0$1 else v713$1);
    v713$2 := (if p32$2 then $$108$0$2 else v713$2);
    v714$1 := (if p32$1 then $$108$1$1 else v714$1);
    v714$2 := (if p32$2 then $$108$1$2 else v714$2);
    v715$1 := (if p32$1 then $$108$2$1 else v715$1);
    v715$2 := (if p32$2 then $$108$2$2 else v715$2);
    v716$1 := (if p32$1 then $$109$0$1 else v716$1);
    v716$2 := (if p32$2 then $$109$0$2 else v716$2);
    v717$1 := (if p32$1 then $$109$1$1 else v717$1);
    v717$2 := (if p32$2 then $$109$1$2 else v717$2);
    v718$1 := (if p32$1 then $$109$2$1 else v718$1);
    v718$2 := (if p32$2 then $$109$2$2 else v718$2);
    call {:sourceloc_num 1326} v719$1, v719$2 := $_Z3dot6float3S_(p32$1, v713$1, v714$1, v715$1, v716$1, v717$1, v718$1, p32$2, v713$2, v714$2, v715$2, v716$2, v717$2, v718$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    v720$1 := (if p32$1 then FLT32(0, v719$1) else v720$1);
    v720$2 := (if p32$2 then FLT32(0, v719$2) else v720$2);
    p35$1 := (if p32$1 && v720$1 then v720$1 else p35$1);
    p35$2 := (if p32$2 && v720$2 then v720$2 else p35$2);
    v721$1 := (if p35$1 then $$s$16$1 else v721$1);
    v721$2 := (if p35$2 then $$s$16$2 else v721$2);
    v722$1 := (if p35$1 then $$s$17$1 else v722$1);
    v722$2 := (if p35$2 then $$s$17$2 else v722$2);
    v723$1 := (if p35$1 then $$s$18$1 else v723$1);
    v723$2 := (if p35$2 then $$s$18$2 else v723$2);
    v724$1 := (if p35$1 then $$s$19$1 else v724$1);
    v724$2 := (if p35$2 then $$s$19$2 else v724$2);
    v725$1 := (if p35$1 then $$s$20$1 else v725$1);
    v725$2 := (if p35$2 then $$s$20$2 else v725$2);
    v726$1 := (if p35$1 then $$s$21$1 else v726$1);
    v726$2 := (if p35$2 then $$s$21$2 else v726$2);
    v727$1 := (if p35$1 then $$s$22$1 else v727$1);
    v727$2 := (if p35$2 then $$s$22$2 else v727$2);
    v728$1 := (if p35$1 then $$s$23$1 else v728$1);
    v728$2 := (if p35$2 then $$s$23$2 else v728$2);
    v729$1 := (if p35$1 then $$s$24$1 else v729$1);
    v729$2 := (if p35$2 then $$s$24$2 else v729$2);
    v730$1 := (if p35$1 then $$s$25$1 else v730$1);
    v730$2 := (if p35$2 then $$s$25$2 else v730$2);
    v731$1 := (if p35$1 then $$s$26$1 else v731$1);
    v731$2 := (if p35$2 then $$s$26$2 else v731$2);
    v732$1 := (if p35$1 then $$s$27$1 else v732$1);
    v732$2 := (if p35$2 then $$s$27$2 else v732$2);
    v733$1 := (if p35$1 then $$s$28$1 else v733$1);
    v733$2 := (if p35$2 then $$s$28$2 else v733$2);
    v734$1 := (if p35$1 then $$s$29$1 else v734$1);
    v734$2 := (if p35$2 then $$s$29$2 else v734$2);
    v735$1 := (if p35$1 then $$s$30$1 else v735$1);
    v735$2 := (if p35$2 then $$s$30$2 else v735$2);
    v736$1 := (if p35$1 then $$s$31$1 else v736$1);
    v736$2 := (if p35$2 then $$s$31$2 else v736$2);
    $$53$0$1 := (if p35$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v724$1, v723$1), v722$1), v721$1) else $$53$0$1);
    $$53$0$2 := (if p35$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v724$2, v723$2), v722$2), v721$2) else $$53$0$2);
    $$53$1$1 := (if p35$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v728$1, v727$1), v726$1), v725$1) else $$53$1$1);
    $$53$1$2 := (if p35$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v728$2, v727$2), v726$2), v725$2) else $$53$1$2);
    $$53$2$1 := (if p35$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v732$1, v731$1), v730$1), v729$1) else $$53$2$1);
    $$53$2$2 := (if p35$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v732$2, v731$2), v730$2), v729$2) else $$53$2$2);
    $$53$3$1 := (if p35$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v736$1, v735$1), v734$1), v733$1) else $$53$3$1);
    $$53$3$2 := (if p35$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v736$2, v735$2), v734$2), v733$2) else $$53$3$2);
    v737$1 := (if p35$1 then $$53$0$1 else v737$1);
    v737$2 := (if p35$2 then $$53$0$2 else v737$2);
    v738$1 := (if p35$1 then $$53$1$1 else v738$1);
    v738$2 := (if p35$2 then $$53$1$2 else v738$2);
    v739$1 := (if p35$1 then $$53$2$1 else v739$1);
    v739$2 := (if p35$2 then $$53$2$2 else v739$2);
    v740$1 := (if p35$1 then $$53$3$1 else v740$1);
    v740$2 := (if p35$2 then $$53$3$2 else v740$2);
    $$112$0$1 := (if p35$1 then v737$1 else $$112$0$1);
    $$112$0$2 := (if p35$2 then v737$2 else $$112$0$2);
    $$112$1$1 := (if p35$1 then v738$1 else $$112$1$1);
    $$112$1$2 := (if p35$2 then v738$2 else $$112$1$2);
    $$112$2$1 := (if p35$1 then v739$1 else $$112$2$1);
    $$112$2$2 := (if p35$2 then v739$2 else $$112$2$2);
    $$112$3$1 := (if p35$1 then v740$1 else $$112$3$1);
    $$112$3$2 := (if p35$2 then v740$2 else $$112$3$2);
    v741$1 := (if p35$1 then $$112$0$1 else v741$1);
    v741$2 := (if p35$2 then $$112$0$2 else v741$2);
    v742$1 := (if p35$1 then $$112$1$1 else v742$1);
    v742$2 := (if p35$2 then $$112$1$2 else v742$2);
    v743$1 := (if p35$1 then $$112$2$1 else v743$1);
    v743$2 := (if p35$2 then $$112$2$2 else v743$2);
    v744$1 := (if p35$1 then $$112$3$1 else v744$1);
    v744$2 := (if p35$2 then $$112$3$2 else v744$2);
    $$b.i9$0$1 := (if p35$1 then v741$1 else $$b.i9$0$1);
    $$b.i9$0$2 := (if p35$2 then v741$2 else $$b.i9$0$2);
    $$b.i9$1$1 := (if p35$1 then v742$1 else $$b.i9$1$1);
    $$b.i9$1$2 := (if p35$2 then v742$2 else $$b.i9$1$2);
    $$b.i9$2$1 := (if p35$1 then v743$1 else $$b.i9$2$1);
    $$b.i9$2$2 := (if p35$2 then v743$2 else $$b.i9$2$2);
    $$b.i9$3$1 := (if p35$1 then v744$1 else $$b.i9$3$1);
    $$b.i9$3$2 := (if p35$2 then v744$2 else $$b.i9$3$2);
    v745$1 := (if p35$1 then $$b.i9$0$1 else v745$1);
    v745$2 := (if p35$2 then $$b.i9$0$2 else v745$2);
    v746$1 := (if p35$1 then $$b.i9$1$1 else v746$1);
    v746$2 := (if p35$2 then $$b.i9$1$2 else v746$2);
    v747$1 := (if p35$1 then $$b.i9$2$1 else v747$1);
    v747$2 := (if p35$2 then $$b.i9$2$2 else v747$2);
    v748$1 := (if p35$1 then $$b.i9$3$1 else v748$1);
    v748$2 := (if p35$2 then $$b.i9$3$2 else v748$2);
    $$54$0$1 := (if p35$1 then FMUL32(1056964608, v745$1) else $$54$0$1);
    $$54$0$2 := (if p35$2 then FMUL32(1056964608, v745$2) else $$54$0$2);
    $$54$1$1 := (if p35$1 then FMUL32(1056964608, v746$1) else $$54$1$1);
    $$54$1$2 := (if p35$2 then FMUL32(1056964608, v746$2) else $$54$1$2);
    $$54$2$1 := (if p35$1 then FMUL32(1056964608, v747$1) else $$54$2$1);
    $$54$2$2 := (if p35$2 then FMUL32(1056964608, v747$2) else $$54$2$2);
    $$54$3$1 := (if p35$1 then FMUL32(1056964608, v748$1) else $$54$3$1);
    $$54$3$2 := (if p35$2 then FMUL32(1056964608, v748$2) else $$54$3$2);
    v749$1 := (if p35$1 then $$54$0$1 else v749$1);
    v749$2 := (if p35$2 then $$54$0$2 else v749$2);
    v750$1 := (if p35$1 then $$54$1$1 else v750$1);
    v750$2 := (if p35$2 then $$54$1$2 else v750$2);
    v751$1 := (if p35$1 then $$54$2$1 else v751$1);
    v751$2 := (if p35$2 then $$54$2$2 else v751$2);
    v752$1 := (if p35$1 then $$54$3$1 else v752$1);
    v752$2 := (if p35$2 then $$54$3$2 else v752$2);
    $$55$0$1 := (if p35$1 then v749$1 else $$55$0$1);
    $$55$0$2 := (if p35$2 then v749$2 else $$55$0$2);
    $$55$1$1 := (if p35$1 then v750$1 else $$55$1$1);
    $$55$1$2 := (if p35$2 then v750$2 else $$55$1$2);
    $$55$2$1 := (if p35$1 then v751$1 else $$55$2$1);
    $$55$2$2 := (if p35$2 then v751$2 else $$55$2$2);
    $$55$3$1 := (if p35$1 then v752$1 else $$55$3$1);
    $$55$3$2 := (if p35$2 then v752$2 else $$55$3$2);
    v753$1 := (if p35$1 then $$55$0$1 else v753$1);
    v753$2 := (if p35$2 then $$55$0$2 else v753$2);
    v754$1 := (if p35$1 then $$55$1$1 else v754$1);
    v754$2 := (if p35$2 then $$55$1$2 else v754$2);
    v755$1 := (if p35$1 then $$55$2$1 else v755$1);
    v755$2 := (if p35$2 then $$55$2$2 else v755$2);
    v756$1 := (if p35$1 then $$55$3$1 else v756$1);
    v756$2 := (if p35$2 then $$55$3$2 else v756$2);
    $$111$0$1 := (if p35$1 then v753$1 else $$111$0$1);
    $$111$0$2 := (if p35$2 then v753$2 else $$111$0$2);
    $$111$1$1 := (if p35$1 then v754$1 else $$111$1$1);
    $$111$1$2 := (if p35$2 then v754$2 else $$111$1$2);
    $$111$2$1 := (if p35$1 then v755$1 else $$111$2$1);
    $$111$2$2 := (if p35$2 then v755$2 else $$111$2$2);
    $$111$3$1 := (if p35$1 then v756$1 else $$111$3$1);
    $$111$3$2 := (if p35$2 then v756$2 else $$111$3$2);
    v757$1 := (if p35$1 then $$N$0$1 else v757$1);
    v757$2 := (if p35$2 then $$N$0$2 else v757$2);
    $$113$0$1 := (if p35$1 then v757$1 else $$113$0$1);
    $$113$0$2 := (if p35$2 then v757$2 else $$113$0$2);
    v758$1 := (if p35$1 then $$N$1$1 else v758$1);
    v758$2 := (if p35$2 then $$N$1$2 else v758$2);
    $$113$1$1 := (if p35$1 then v758$1 else $$113$1$1);
    $$113$1$2 := (if p35$2 then v758$2 else $$113$1$2);
    v759$1 := (if p35$1 then $$N$2$1 else v759$1);
    v759$2 := (if p35$2 then $$N$2$2 else v759$2);
    $$113$2$1 := (if p35$1 then v759$1 else $$113$2$1);
    $$113$2$2 := (if p35$2 then v759$2 else $$113$2$2);
    v760$1 := (if p35$1 then $$L$0$1 else v760$1);
    v760$2 := (if p35$2 then $$L$0$2 else v760$2);
    $$114$0$1 := (if p35$1 then v760$1 else $$114$0$1);
    $$114$0$2 := (if p35$2 then v760$2 else $$114$0$2);
    v761$1 := (if p35$1 then $$L$1$1 else v761$1);
    v761$2 := (if p35$2 then $$L$1$2 else v761$2);
    $$114$1$1 := (if p35$1 then v761$1 else $$114$1$1);
    $$114$1$2 := (if p35$2 then v761$2 else $$114$1$2);
    v762$1 := (if p35$1 then $$L$2$1 else v762$1);
    v762$2 := (if p35$2 then $$L$2$2 else v762$2);
    $$114$2$1 := (if p35$1 then v762$1 else $$114$2$1);
    $$114$2$2 := (if p35$2 then v762$2 else $$114$2$2);
    v763$1 := (if p35$1 then $$113$0$1 else v763$1);
    v763$2 := (if p35$2 then $$113$0$2 else v763$2);
    v764$1 := (if p35$1 then $$113$1$1 else v764$1);
    v764$2 := (if p35$2 then $$113$1$2 else v764$2);
    v765$1 := (if p35$1 then $$113$2$1 else v765$1);
    v765$2 := (if p35$2 then $$113$2$2 else v765$2);
    v766$1 := (if p35$1 then $$114$0$1 else v766$1);
    v766$2 := (if p35$2 then $$114$0$2 else v766$2);
    v767$1 := (if p35$1 then $$114$1$1 else v767$1);
    v767$2 := (if p35$2 then $$114$1$2 else v767$2);
    v768$1 := (if p35$1 then $$114$2$1 else v768$1);
    v768$2 := (if p35$2 then $$114$2$2 else v768$2);
    call {:sourceloc_num 1406} v769$1, v769$2 := $_Z3dot6float3S_(p35$1, v763$1, v764$1, v765$1, v766$1, v767$1, v768$1, p35$2, v763$2, v764$2, v765$2, v766$2, v767$2, v768$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    call {:sourceloc_num 1407} v770$1, v770$2 := $max(0, p35$1, FP32_TO_SI32(v769$1), p35$2, FP32_TO_SI32(v769$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$max"} true;
    v771$1 := (if p35$1 then SI32_TO_FP32(v770$1) else v771$1);
    v771$2 := (if p35$2 then SI32_TO_FP32(v770$2) else v771$2);
    v772$1 := (if p35$1 then $$111$0$1 else v772$1);
    v772$2 := (if p35$2 then $$111$0$2 else v772$2);
    v773$1 := (if p35$1 then $$111$1$1 else v773$1);
    v773$2 := (if p35$2 then $$111$1$2 else v773$2);
    v774$1 := (if p35$1 then $$111$2$1 else v774$1);
    v774$2 := (if p35$2 then $$111$2$2 else v774$2);
    v775$1 := (if p35$1 then $$111$3$1 else v775$1);
    v775$2 := (if p35$2 then $$111$3$2 else v775$2);
    $$a.i8$0$1 := (if p35$1 then v772$1 else $$a.i8$0$1);
    $$a.i8$0$2 := (if p35$2 then v772$2 else $$a.i8$0$2);
    $$a.i8$1$1 := (if p35$1 then v773$1 else $$a.i8$1$1);
    $$a.i8$1$2 := (if p35$2 then v773$2 else $$a.i8$1$2);
    $$a.i8$2$1 := (if p35$1 then v774$1 else $$a.i8$2$1);
    $$a.i8$2$2 := (if p35$2 then v774$2 else $$a.i8$2$2);
    $$a.i8$3$1 := (if p35$1 then v775$1 else $$a.i8$3$1);
    $$a.i8$3$2 := (if p35$2 then v775$2 else $$a.i8$3$2);
    v776$1 := (if p35$1 then $$a.i8$0$1 else v776$1);
    v776$2 := (if p35$2 then $$a.i8$0$2 else v776$2);
    v777$1 := (if p35$1 then $$a.i8$1$1 else v777$1);
    v777$2 := (if p35$2 then $$a.i8$1$2 else v777$2);
    v778$1 := (if p35$1 then $$a.i8$2$1 else v778$1);
    v778$2 := (if p35$2 then $$a.i8$2$2 else v778$2);
    v779$1 := (if p35$1 then $$a.i8$3$1 else v779$1);
    v779$2 := (if p35$2 then $$a.i8$3$2 else v779$2);
    $$56$0$1 := (if p35$1 then FMUL32(v776$1, v771$1) else $$56$0$1);
    $$56$0$2 := (if p35$2 then FMUL32(v776$2, v771$2) else $$56$0$2);
    $$56$1$1 := (if p35$1 then FMUL32(v777$1, v771$1) else $$56$1$1);
    $$56$1$2 := (if p35$2 then FMUL32(v777$2, v771$2) else $$56$1$2);
    $$56$2$1 := (if p35$1 then FMUL32(v778$1, v771$1) else $$56$2$1);
    $$56$2$2 := (if p35$2 then FMUL32(v778$2, v771$2) else $$56$2$2);
    $$56$3$1 := (if p35$1 then FMUL32(v779$1, v771$1) else $$56$3$1);
    $$56$3$2 := (if p35$2 then FMUL32(v779$2, v771$2) else $$56$3$2);
    v780$1 := (if p35$1 then $$56$0$1 else v780$1);
    v780$2 := (if p35$2 then $$56$0$2 else v780$2);
    v781$1 := (if p35$1 then $$56$1$1 else v781$1);
    v781$2 := (if p35$2 then $$56$1$2 else v781$2);
    v782$1 := (if p35$1 then $$56$2$1 else v782$1);
    v782$2 := (if p35$2 then $$56$2$2 else v782$2);
    v783$1 := (if p35$1 then $$56$3$1 else v783$1);
    v783$2 := (if p35$2 then $$56$3$2 else v783$2);
    $$57$0$1 := (if p35$1 then v780$1 else $$57$0$1);
    $$57$0$2 := (if p35$2 then v780$2 else $$57$0$2);
    $$57$1$1 := (if p35$1 then v781$1 else $$57$1$1);
    $$57$1$2 := (if p35$2 then v781$2 else $$57$1$2);
    $$57$2$1 := (if p35$1 then v782$1 else $$57$2$1);
    $$57$2$2 := (if p35$2 then v782$2 else $$57$2$2);
    $$57$3$1 := (if p35$1 then v783$1 else $$57$3$1);
    $$57$3$2 := (if p35$2 then v783$2 else $$57$3$2);
    v784$1 := (if p35$1 then $$57$0$1 else v784$1);
    v784$2 := (if p35$2 then $$57$0$2 else v784$2);
    v785$1 := (if p35$1 then $$57$1$1 else v785$1);
    v785$2 := (if p35$2 then $$57$1$2 else v785$2);
    v786$1 := (if p35$1 then $$57$2$1 else v786$1);
    v786$2 := (if p35$2 then $$57$2$2 else v786$2);
    v787$1 := (if p35$1 then $$57$3$1 else v787$1);
    v787$2 := (if p35$2 then $$57$3$2 else v787$2);
    $$110$0$1 := (if p35$1 then v784$1 else $$110$0$1);
    $$110$0$2 := (if p35$2 then v784$2 else $$110$0$2);
    $$110$1$1 := (if p35$1 then v785$1 else $$110$1$1);
    $$110$1$2 := (if p35$2 then v785$2 else $$110$1$2);
    $$110$2$1 := (if p35$1 then v786$1 else $$110$2$1);
    $$110$2$2 := (if p35$2 then v786$2 else $$110$2$2);
    $$110$3$1 := (if p35$1 then v787$1 else $$110$3$1);
    $$110$3$2 := (if p35$2 then v787$2 else $$110$3$2);
    v788$1 := (if p35$1 then $$110$0$1 else v788$1);
    v788$2 := (if p35$2 then $$110$0$2 else v788$2);
    $$Color$0$1 := (if p35$1 then v788$1 else $$Color$0$1);
    $$Color$0$2 := (if p35$2 then v788$2 else $$Color$0$2);
    v789$1 := (if p35$1 then $$110$1$1 else v789$1);
    v789$2 := (if p35$2 then $$110$1$2 else v789$2);
    $$Color$1$1 := (if p35$1 then v789$1 else $$Color$1$1);
    $$Color$1$2 := (if p35$2 then v789$2 else $$Color$1$2);
    v790$1 := (if p35$1 then $$110$2$1 else v790$1);
    v790$2 := (if p35$2 then $$110$2$2 else v790$2);
    $$Color$2$1 := (if p35$1 then v790$1 else $$Color$2$1);
    $$Color$2$2 := (if p35$2 then v790$2 else $$Color$2$2);
    v791$1 := (if p35$1 then $$110$3$1 else v791$1);
    v791$2 := (if p35$2 then $$110$3$2 else v791$2);
    $$Color$3$1 := (if p35$1 then v791$1 else $$Color$3$1);
    $$Color$3$2 := (if p35$2 then v791$2 else $$Color$3$2);
    $$58$0$1 := (if p35$1 then 1065353216 else $$58$0$1);
    $$58$0$2 := (if p35$2 then 1065353216 else $$58$0$2);
    $$58$1$1 := (if p35$1 then 1065353216 else $$58$1$1);
    $$58$1$2 := (if p35$2 then 1065353216 else $$58$1$2);
    $$58$2$1 := (if p35$1 then 1065353216 else $$58$2$1);
    $$58$2$2 := (if p35$2 then 1065353216 else $$58$2$2);
    $$58$3$1 := (if p35$1 then 1065353216 else $$58$3$1);
    $$58$3$2 := (if p35$2 then 1065353216 else $$58$3$2);
    v792$1 := (if p35$1 then $$58$0$1 else v792$1);
    v792$2 := (if p35$2 then $$58$0$2 else v792$2);
    v793$1 := (if p35$1 then $$58$1$1 else v793$1);
    v793$2 := (if p35$2 then $$58$1$2 else v793$2);
    v794$1 := (if p35$1 then $$58$2$1 else v794$1);
    v794$2 := (if p35$2 then $$58$2$2 else v794$2);
    v795$1 := (if p35$1 then $$58$3$1 else v795$1);
    v795$2 := (if p35$2 then $$58$3$2 else v795$2);
    $$117$0$1 := (if p35$1 then v792$1 else $$117$0$1);
    $$117$0$2 := (if p35$2 then v792$2 else $$117$0$2);
    $$117$1$1 := (if p35$1 then v793$1 else $$117$1$1);
    $$117$1$2 := (if p35$2 then v793$2 else $$117$1$2);
    $$117$2$1 := (if p35$1 then v794$1 else $$117$2$1);
    $$117$2$2 := (if p35$2 then v794$2 else $$117$2$2);
    $$117$3$1 := (if p35$1 then v795$1 else $$117$3$1);
    $$117$3$2 := (if p35$2 then v795$2 else $$117$3$2);
    v796$1 := (if p35$1 then $$117$0$1 else v796$1);
    v796$2 := (if p35$2 then $$117$0$2 else v796$2);
    v797$1 := (if p35$1 then $$117$1$1 else v797$1);
    v797$2 := (if p35$2 then $$117$1$2 else v797$2);
    v798$1 := (if p35$1 then $$117$2$1 else v798$1);
    v798$2 := (if p35$2 then $$117$2$2 else v798$2);
    v799$1 := (if p35$1 then $$117$3$1 else v799$1);
    v799$2 := (if p35$2 then $$117$3$2 else v799$2);
    $$b.i7$0$1 := (if p35$1 then v796$1 else $$b.i7$0$1);
    $$b.i7$0$2 := (if p35$2 then v796$2 else $$b.i7$0$2);
    $$b.i7$1$1 := (if p35$1 then v797$1 else $$b.i7$1$1);
    $$b.i7$1$2 := (if p35$2 then v797$2 else $$b.i7$1$2);
    $$b.i7$2$1 := (if p35$1 then v798$1 else $$b.i7$2$1);
    $$b.i7$2$2 := (if p35$2 then v798$2 else $$b.i7$2$2);
    $$b.i7$3$1 := (if p35$1 then v799$1 else $$b.i7$3$1);
    $$b.i7$3$2 := (if p35$2 then v799$2 else $$b.i7$3$2);
    v800$1 := (if p35$1 then $$b.i7$0$1 else v800$1);
    v800$2 := (if p35$2 then $$b.i7$0$2 else v800$2);
    v801$1 := (if p35$1 then $$b.i7$1$1 else v801$1);
    v801$2 := (if p35$2 then $$b.i7$1$2 else v801$2);
    v802$1 := (if p35$1 then $$b.i7$2$1 else v802$1);
    v802$2 := (if p35$2 then $$b.i7$2$2 else v802$2);
    v803$1 := (if p35$1 then $$b.i7$3$1 else v803$1);
    v803$2 := (if p35$2 then $$b.i7$3$2 else v803$2);
    $$59$0$1 := (if p35$1 then FMUL32(1061997773, v800$1) else $$59$0$1);
    $$59$0$2 := (if p35$2 then FMUL32(1061997773, v800$2) else $$59$0$2);
    $$59$1$1 := (if p35$1 then FMUL32(1061997773, v801$1) else $$59$1$1);
    $$59$1$2 := (if p35$2 then FMUL32(1061997773, v801$2) else $$59$1$2);
    $$59$2$1 := (if p35$1 then FMUL32(1061997773, v802$1) else $$59$2$1);
    $$59$2$2 := (if p35$2 then FMUL32(1061997773, v802$2) else $$59$2$2);
    $$59$3$1 := (if p35$1 then FMUL32(1061997773, v803$1) else $$59$3$1);
    $$59$3$2 := (if p35$2 then FMUL32(1061997773, v803$2) else $$59$3$2);
    v804$1 := (if p35$1 then $$59$0$1 else v804$1);
    v804$2 := (if p35$2 then $$59$0$2 else v804$2);
    v805$1 := (if p35$1 then $$59$1$1 else v805$1);
    v805$2 := (if p35$2 then $$59$1$2 else v805$2);
    v806$1 := (if p35$1 then $$59$2$1 else v806$1);
    v806$2 := (if p35$2 then $$59$2$2 else v806$2);
    v807$1 := (if p35$1 then $$59$3$1 else v807$1);
    v807$2 := (if p35$2 then $$59$3$2 else v807$2);
    $$60$0$1 := (if p35$1 then v804$1 else $$60$0$1);
    $$60$0$2 := (if p35$2 then v804$2 else $$60$0$2);
    $$60$1$1 := (if p35$1 then v805$1 else $$60$1$1);
    $$60$1$2 := (if p35$2 then v805$2 else $$60$1$2);
    $$60$2$1 := (if p35$1 then v806$1 else $$60$2$1);
    $$60$2$2 := (if p35$2 then v806$2 else $$60$2$2);
    $$60$3$1 := (if p35$1 then v807$1 else $$60$3$1);
    $$60$3$2 := (if p35$2 then v807$2 else $$60$3$2);
    v808$1 := (if p35$1 then $$60$0$1 else v808$1);
    v808$2 := (if p35$2 then $$60$0$2 else v808$2);
    v809$1 := (if p35$1 then $$60$1$1 else v809$1);
    v809$2 := (if p35$2 then $$60$1$2 else v809$2);
    v810$1 := (if p35$1 then $$60$2$1 else v810$1);
    v810$2 := (if p35$2 then $$60$2$2 else v810$2);
    v811$1 := (if p35$1 then $$60$3$1 else v811$1);
    v811$2 := (if p35$2 then $$60$3$2 else v811$2);
    $$116$0$1 := (if p35$1 then v808$1 else $$116$0$1);
    $$116$0$2 := (if p35$2 then v808$2 else $$116$0$2);
    $$116$1$1 := (if p35$1 then v809$1 else $$116$1$1);
    $$116$1$2 := (if p35$2 then v809$2 else $$116$1$2);
    $$116$2$1 := (if p35$1 then v810$1 else $$116$2$1);
    $$116$2$2 := (if p35$2 then v810$2 else $$116$2$2);
    $$116$3$1 := (if p35$1 then v811$1 else $$116$3$1);
    $$116$3$2 := (if p35$2 then v811$2 else $$116$3$2);
    v812$1 := (if p35$1 then $$N$0$1 else v812$1);
    v812$2 := (if p35$2 then $$N$0$2 else v812$2);
    $$121$0$1 := (if p35$1 then v812$1 else $$121$0$1);
    $$121$0$2 := (if p35$2 then v812$2 else $$121$0$2);
    v813$1 := (if p35$1 then $$N$1$1 else v813$1);
    v813$2 := (if p35$2 then $$N$1$2 else v813$2);
    $$121$1$1 := (if p35$1 then v813$1 else $$121$1$1);
    $$121$1$2 := (if p35$2 then v813$2 else $$121$1$2);
    v814$1 := (if p35$1 then $$N$2$1 else v814$1);
    v814$2 := (if p35$2 then $$N$2$2 else v814$2);
    $$121$2$1 := (if p35$1 then v814$1 else $$121$2$1);
    $$121$2$2 := (if p35$2 then v814$2 else $$121$2$2);
    v815$1 := (if p35$1 then $$121$0$1 else v815$1);
    v815$2 := (if p35$2 then $$121$0$2 else v815$2);
    v816$1 := (if p35$1 then $$121$1$1 else v816$1);
    v816$2 := (if p35$2 then $$121$1$2 else v816$2);
    v817$1 := (if p35$1 then $$121$2$1 else v817$1);
    v817$2 := (if p35$2 then $$121$2$2 else v817$2);
    $$b.i6$0$1 := (if p35$1 then v815$1 else $$b.i6$0$1);
    $$b.i6$0$2 := (if p35$2 then v815$2 else $$b.i6$0$2);
    $$b.i6$1$1 := (if p35$1 then v816$1 else $$b.i6$1$1);
    $$b.i6$1$2 := (if p35$2 then v816$2 else $$b.i6$1$2);
    $$b.i6$2$1 := (if p35$1 then v817$1 else $$b.i6$2$1);
    $$b.i6$2$2 := (if p35$2 then v817$2 else $$b.i6$2$2);
    v818$1 := (if p35$1 then $$b.i6$0$1 else v818$1);
    v818$2 := (if p35$2 then $$b.i6$0$2 else v818$2);
    v819$1 := (if p35$1 then $$b.i6$1$1 else v819$1);
    v819$2 := (if p35$2 then $$b.i6$1$2 else v819$2);
    v820$1 := (if p35$1 then $$b.i6$2$1 else v820$1);
    v820$2 := (if p35$2 then $$b.i6$2$2 else v820$2);
    $$61$0$1 := (if p35$1 then FMUL32(1073741824, v818$1) else $$61$0$1);
    $$61$0$2 := (if p35$2 then FMUL32(1073741824, v818$2) else $$61$0$2);
    $$61$1$1 := (if p35$1 then FMUL32(1073741824, v819$1) else $$61$1$1);
    $$61$1$2 := (if p35$2 then FMUL32(1073741824, v819$2) else $$61$1$2);
    $$61$2$1 := (if p35$1 then FMUL32(1073741824, v820$1) else $$61$2$1);
    $$61$2$2 := (if p35$2 then FMUL32(1073741824, v820$2) else $$61$2$2);
    v821$1 := (if p35$1 then $$61$0$1 else v821$1);
    v821$2 := (if p35$2 then $$61$0$2 else v821$2);
    v822$1 := (if p35$1 then $$61$1$1 else v822$1);
    v822$2 := (if p35$2 then $$61$1$2 else v822$2);
    v823$1 := (if p35$1 then $$61$2$1 else v823$1);
    v823$2 := (if p35$2 then $$61$2$2 else v823$2);
    $$62$0$1 := (if p35$1 then v821$1 else $$62$0$1);
    $$62$0$2 := (if p35$2 then v821$2 else $$62$0$2);
    $$62$1$1 := (if p35$1 then v822$1 else $$62$1$1);
    $$62$1$2 := (if p35$2 then v822$2 else $$62$1$2);
    $$62$2$1 := (if p35$1 then v823$1 else $$62$2$1);
    $$62$2$2 := (if p35$2 then v823$2 else $$62$2$2);
    v824$1 := (if p35$1 then $$62$0$1 else v824$1);
    v824$2 := (if p35$2 then $$62$0$2 else v824$2);
    v825$1 := (if p35$1 then $$62$1$1 else v825$1);
    v825$2 := (if p35$2 then $$62$1$2 else v825$2);
    v826$1 := (if p35$1 then $$62$2$1 else v826$1);
    v826$2 := (if p35$2 then $$62$2$2 else v826$2);
    $$120$0$1 := (if p35$1 then v824$1 else $$120$0$1);
    $$120$0$2 := (if p35$2 then v824$2 else $$120$0$2);
    $$120$1$1 := (if p35$1 then v825$1 else $$120$1$1);
    $$120$1$2 := (if p35$2 then v825$2 else $$120$1$2);
    $$120$2$1 := (if p35$1 then v826$1 else $$120$2$1);
    $$120$2$2 := (if p35$2 then v826$2 else $$120$2$2);
    v827$1 := (if p35$1 then $$N$0$1 else v827$1);
    v827$2 := (if p35$2 then $$N$0$2 else v827$2);
    $$122$0$1 := (if p35$1 then v827$1 else $$122$0$1);
    $$122$0$2 := (if p35$2 then v827$2 else $$122$0$2);
    v828$1 := (if p35$1 then $$N$1$1 else v828$1);
    v828$2 := (if p35$2 then $$N$1$2 else v828$2);
    $$122$1$1 := (if p35$1 then v828$1 else $$122$1$1);
    $$122$1$2 := (if p35$2 then v828$2 else $$122$1$2);
    v829$1 := (if p35$1 then $$N$2$1 else v829$1);
    v829$2 := (if p35$2 then $$N$2$2 else v829$2);
    $$122$2$1 := (if p35$1 then v829$1 else $$122$2$1);
    $$122$2$2 := (if p35$2 then v829$2 else $$122$2$2);
    v830$1 := (if p35$1 then $$L$0$1 else v830$1);
    v830$2 := (if p35$2 then $$L$0$2 else v830$2);
    $$123$0$1 := (if p35$1 then v830$1 else $$123$0$1);
    $$123$0$2 := (if p35$2 then v830$2 else $$123$0$2);
    v831$1 := (if p35$1 then $$L$1$1 else v831$1);
    v831$2 := (if p35$2 then $$L$1$2 else v831$2);
    $$123$1$1 := (if p35$1 then v831$1 else $$123$1$1);
    $$123$1$2 := (if p35$2 then v831$2 else $$123$1$2);
    v832$1 := (if p35$1 then $$L$2$1 else v832$1);
    v832$2 := (if p35$2 then $$L$2$2 else v832$2);
    $$123$2$1 := (if p35$1 then v832$1 else $$123$2$1);
    $$123$2$2 := (if p35$2 then v832$2 else $$123$2$2);
    v833$1 := (if p35$1 then $$122$0$1 else v833$1);
    v833$2 := (if p35$2 then $$122$0$2 else v833$2);
    v834$1 := (if p35$1 then $$122$1$1 else v834$1);
    v834$2 := (if p35$2 then $$122$1$2 else v834$2);
    v835$1 := (if p35$1 then $$122$2$1 else v835$1);
    v835$2 := (if p35$2 then $$122$2$2 else v835$2);
    v836$1 := (if p35$1 then $$123$0$1 else v836$1);
    v836$2 := (if p35$2 then $$123$0$2 else v836$2);
    v837$1 := (if p35$1 then $$123$1$1 else v837$1);
    v837$2 := (if p35$2 then $$123$1$2 else v837$2);
    v838$1 := (if p35$1 then $$123$2$1 else v838$1);
    v838$2 := (if p35$2 then $$123$2$2 else v838$2);
    call {:sourceloc_num 1540} v839$1, v839$2 := $_Z3dot6float3S_(p35$1, v833$1, v834$1, v835$1, v836$1, v837$1, v838$1, p35$2, v833$2, v834$2, v835$2, v836$2, v837$2, v838$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    v840$1 := (if p35$1 then $$120$0$1 else v840$1);
    v840$2 := (if p35$2 then $$120$0$2 else v840$2);
    v841$1 := (if p35$1 then $$120$1$1 else v841$1);
    v841$2 := (if p35$2 then $$120$1$2 else v841$2);
    v842$1 := (if p35$1 then $$120$2$1 else v842$1);
    v842$2 := (if p35$2 then $$120$2$2 else v842$2);
    $$a.i5$0$1 := (if p35$1 then v840$1 else $$a.i5$0$1);
    $$a.i5$0$2 := (if p35$2 then v840$2 else $$a.i5$0$2);
    $$a.i5$1$1 := (if p35$1 then v841$1 else $$a.i5$1$1);
    $$a.i5$1$2 := (if p35$2 then v841$2 else $$a.i5$1$2);
    $$a.i5$2$1 := (if p35$1 then v842$1 else $$a.i5$2$1);
    $$a.i5$2$2 := (if p35$2 then v842$2 else $$a.i5$2$2);
    v843$1 := (if p35$1 then $$a.i5$0$1 else v843$1);
    v843$2 := (if p35$2 then $$a.i5$0$2 else v843$2);
    v844$1 := (if p35$1 then $$a.i5$1$1 else v844$1);
    v844$2 := (if p35$2 then $$a.i5$1$2 else v844$2);
    v845$1 := (if p35$1 then $$a.i5$2$1 else v845$1);
    v845$2 := (if p35$2 then $$a.i5$2$2 else v845$2);
    $$63$0$1 := (if p35$1 then FMUL32(v843$1, v839$1) else $$63$0$1);
    $$63$0$2 := (if p35$2 then FMUL32(v843$2, v839$2) else $$63$0$2);
    $$63$1$1 := (if p35$1 then FMUL32(v844$1, v839$1) else $$63$1$1);
    $$63$1$2 := (if p35$2 then FMUL32(v844$2, v839$2) else $$63$1$2);
    $$63$2$1 := (if p35$1 then FMUL32(v845$1, v839$1) else $$63$2$1);
    $$63$2$2 := (if p35$2 then FMUL32(v845$2, v839$2) else $$63$2$2);
    v846$1 := (if p35$1 then $$63$0$1 else v846$1);
    v846$2 := (if p35$2 then $$63$0$2 else v846$2);
    v847$1 := (if p35$1 then $$63$1$1 else v847$1);
    v847$2 := (if p35$2 then $$63$1$2 else v847$2);
    v848$1 := (if p35$1 then $$63$2$1 else v848$1);
    v848$2 := (if p35$2 then $$63$2$2 else v848$2);
    $$64$0$1 := (if p35$1 then v846$1 else $$64$0$1);
    $$64$0$2 := (if p35$2 then v846$2 else $$64$0$2);
    $$64$1$1 := (if p35$1 then v847$1 else $$64$1$1);
    $$64$1$2 := (if p35$2 then v847$2 else $$64$1$2);
    $$64$2$1 := (if p35$1 then v848$1 else $$64$2$1);
    $$64$2$2 := (if p35$2 then v848$2 else $$64$2$2);
    v849$1 := (if p35$1 then $$64$0$1 else v849$1);
    v849$2 := (if p35$2 then $$64$0$2 else v849$2);
    v850$1 := (if p35$1 then $$64$1$1 else v850$1);
    v850$2 := (if p35$2 then $$64$1$2 else v850$2);
    v851$1 := (if p35$1 then $$64$2$1 else v851$1);
    v851$2 := (if p35$2 then $$64$2$2 else v851$2);
    $$119$0$1 := (if p35$1 then v849$1 else $$119$0$1);
    $$119$0$2 := (if p35$2 then v849$2 else $$119$0$2);
    $$119$1$1 := (if p35$1 then v850$1 else $$119$1$1);
    $$119$1$2 := (if p35$2 then v850$2 else $$119$1$2);
    $$119$2$1 := (if p35$1 then v851$1 else $$119$2$1);
    $$119$2$2 := (if p35$2 then v851$2 else $$119$2$2);
    v852$1 := (if p35$1 then $$L$0$1 else v852$1);
    v852$2 := (if p35$2 then $$L$0$2 else v852$2);
    $$124$0$1 := (if p35$1 then v852$1 else $$124$0$1);
    $$124$0$2 := (if p35$2 then v852$2 else $$124$0$2);
    v853$1 := (if p35$1 then $$L$1$1 else v853$1);
    v853$2 := (if p35$2 then $$L$1$2 else v853$2);
    $$124$1$1 := (if p35$1 then v853$1 else $$124$1$1);
    $$124$1$2 := (if p35$2 then v853$2 else $$124$1$2);
    v854$1 := (if p35$1 then $$L$2$1 else v854$1);
    v854$2 := (if p35$2 then $$L$2$2 else v854$2);
    $$124$2$1 := (if p35$1 then v854$1 else $$124$2$1);
    $$124$2$2 := (if p35$2 then v854$2 else $$124$2$2);
    v855$1 := (if p35$1 then $$119$0$1 else v855$1);
    v855$2 := (if p35$2 then $$119$0$2 else v855$2);
    v856$1 := (if p35$1 then $$119$1$1 else v856$1);
    v856$2 := (if p35$2 then $$119$1$2 else v856$2);
    v857$1 := (if p35$1 then $$119$2$1 else v857$1);
    v857$2 := (if p35$2 then $$119$2$2 else v857$2);
    v858$1 := (if p35$1 then $$124$0$1 else v858$1);
    v858$2 := (if p35$2 then $$124$0$2 else v858$2);
    v859$1 := (if p35$1 then $$124$1$1 else v859$1);
    v859$2 := (if p35$2 then $$124$1$2 else v859$2);
    v860$1 := (if p35$1 then $$124$2$1 else v860$1);
    v860$2 := (if p35$2 then $$124$2$2 else v860$2);
    $$a.i3$0$1 := (if p35$1 then v855$1 else $$a.i3$0$1);
    $$a.i3$0$2 := (if p35$2 then v855$2 else $$a.i3$0$2);
    $$a.i3$1$1 := (if p35$1 then v856$1 else $$a.i3$1$1);
    $$a.i3$1$2 := (if p35$2 then v856$2 else $$a.i3$1$2);
    $$a.i3$2$1 := (if p35$1 then v857$1 else $$a.i3$2$1);
    $$a.i3$2$2 := (if p35$2 then v857$2 else $$a.i3$2$2);
    $$b.i4$0$1 := (if p35$1 then v858$1 else $$b.i4$0$1);
    $$b.i4$0$2 := (if p35$2 then v858$2 else $$b.i4$0$2);
    $$b.i4$1$1 := (if p35$1 then v859$1 else $$b.i4$1$1);
    $$b.i4$1$2 := (if p35$2 then v859$2 else $$b.i4$1$2);
    $$b.i4$2$1 := (if p35$1 then v860$1 else $$b.i4$2$1);
    $$b.i4$2$2 := (if p35$2 then v860$2 else $$b.i4$2$2);
    v861$1 := (if p35$1 then $$a.i3$0$1 else v861$1);
    v861$2 := (if p35$2 then $$a.i3$0$2 else v861$2);
    v862$1 := (if p35$1 then $$b.i4$0$1 else v862$1);
    v862$2 := (if p35$2 then $$b.i4$0$2 else v862$2);
    v863$1 := (if p35$1 then $$a.i3$1$1 else v863$1);
    v863$2 := (if p35$2 then $$a.i3$1$2 else v863$2);
    v864$1 := (if p35$1 then $$b.i4$1$1 else v864$1);
    v864$2 := (if p35$2 then $$b.i4$1$2 else v864$2);
    v865$1 := (if p35$1 then $$a.i3$2$1 else v865$1);
    v865$2 := (if p35$2 then $$a.i3$2$2 else v865$2);
    v866$1 := (if p35$1 then $$b.i4$2$1 else v866$1);
    v866$2 := (if p35$2 then $$b.i4$2$2 else v866$2);
    $$65$0$1 := (if p35$1 then FSUB32(v861$1, v862$1) else $$65$0$1);
    $$65$0$2 := (if p35$2 then FSUB32(v861$2, v862$2) else $$65$0$2);
    $$65$1$1 := (if p35$1 then FSUB32(v863$1, v864$1) else $$65$1$1);
    $$65$1$2 := (if p35$2 then FSUB32(v863$2, v864$2) else $$65$1$2);
    $$65$2$1 := (if p35$1 then FSUB32(v865$1, v866$1) else $$65$2$1);
    $$65$2$2 := (if p35$2 then FSUB32(v865$2, v866$2) else $$65$2$2);
    v867$1 := (if p35$1 then $$65$0$1 else v867$1);
    v867$2 := (if p35$2 then $$65$0$2 else v867$2);
    v868$1 := (if p35$1 then $$65$1$1 else v868$1);
    v868$2 := (if p35$2 then $$65$1$2 else v868$2);
    v869$1 := (if p35$1 then $$65$2$1 else v869$1);
    v869$2 := (if p35$2 then $$65$2$2 else v869$2);
    $$66$0$1 := (if p35$1 then v867$1 else $$66$0$1);
    $$66$0$2 := (if p35$2 then v867$2 else $$66$0$2);
    $$66$1$1 := (if p35$1 then v868$1 else $$66$1$1);
    $$66$1$2 := (if p35$2 then v868$2 else $$66$1$2);
    $$66$2$1 := (if p35$1 then v869$1 else $$66$2$1);
    $$66$2$2 := (if p35$2 then v869$2 else $$66$2$2);
    v870$1 := (if p35$1 then $$66$0$1 else v870$1);
    v870$2 := (if p35$2 then $$66$0$2 else v870$2);
    v871$1 := (if p35$1 then $$66$1$1 else v871$1);
    v871$2 := (if p35$2 then $$66$1$2 else v871$2);
    v872$1 := (if p35$1 then $$66$2$1 else v872$1);
    v872$2 := (if p35$2 then $$66$2$2 else v872$2);
    $$118$0$1 := (if p35$1 then v870$1 else $$118$0$1);
    $$118$0$2 := (if p35$2 then v870$2 else $$118$0$2);
    $$118$1$1 := (if p35$1 then v871$1 else $$118$1$1);
    $$118$1$2 := (if p35$2 then v871$2 else $$118$1$2);
    $$118$2$1 := (if p35$1 then v872$1 else $$118$2$1);
    $$118$2$2 := (if p35$2 then v872$2 else $$118$2$2);
    v873$1 := (if p35$1 then $$V$0$1 else v873$1);
    v873$2 := (if p35$2 then $$V$0$2 else v873$2);
    $$125$0$1 := (if p35$1 then v873$1 else $$125$0$1);
    $$125$0$2 := (if p35$2 then v873$2 else $$125$0$2);
    v874$1 := (if p35$1 then $$V$1$1 else v874$1);
    v874$2 := (if p35$2 then $$V$1$2 else v874$2);
    $$125$1$1 := (if p35$1 then v874$1 else $$125$1$1);
    $$125$1$2 := (if p35$2 then v874$2 else $$125$1$2);
    v875$1 := (if p35$1 then $$V$2$1 else v875$1);
    v875$2 := (if p35$2 then $$V$2$2 else v875$2);
    $$125$2$1 := (if p35$1 then v875$1 else $$125$2$1);
    $$125$2$2 := (if p35$2 then v875$2 else $$125$2$2);
    v876$1 := (if p35$1 then $$118$0$1 else v876$1);
    v876$2 := (if p35$2 then $$118$0$2 else v876$2);
    v877$1 := (if p35$1 then $$118$1$1 else v877$1);
    v877$2 := (if p35$2 then $$118$1$2 else v877$2);
    v878$1 := (if p35$1 then $$118$2$1 else v878$1);
    v878$2 := (if p35$2 then $$118$2$2 else v878$2);
    v879$1 := (if p35$1 then $$125$0$1 else v879$1);
    v879$2 := (if p35$2 then $$125$0$2 else v879$2);
    v880$1 := (if p35$1 then $$125$1$1 else v880$1);
    v880$2 := (if p35$2 then $$125$1$2 else v880$2);
    v881$1 := (if p35$1 then $$125$2$1 else v881$1);
    v881$2 := (if p35$2 then $$125$2$2 else v881$2);
    call {:sourceloc_num 1616} v882$1, v882$2 := $_Z3dot6float3S_(p35$1, v876$1, v877$1, v878$1, v879$1, v880$1, v881$1, p35$2, v876$2, v877$2, v878$2, v879$2, v880$2, v881$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3dot6float3S_"} true;
    call {:sourceloc_num 1617} v883$1, v883$2 := $_Z3minff(1065353216, p35$1, v882$1, p35$2, v882$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3minff"} true;
    call {:sourceloc_num 1618} v884$1, v884$2 := $max(0, p35$1, FP32_TO_SI32(v883$1), p35$2, FP32_TO_SI32(v883$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$max"} true;
    v885$1 := (if p35$1 then SI32_TO_FP32(v884$1) else v885$1);
    v885$2 := (if p35$2 then SI32_TO_FP32(v884$2) else v885$2);
    v886$1 := (if p35$1 then FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v885$1, v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1), v885$1) else v886$1);
    v886$2 := (if p35$2 then FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v885$2, v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2), v885$2) else v886$2);
    v887$1 := (if p35$1 then $$116$0$1 else v887$1);
    v887$2 := (if p35$2 then $$116$0$2 else v887$2);
    v888$1 := (if p35$1 then $$116$1$1 else v888$1);
    v888$2 := (if p35$2 then $$116$1$2 else v888$2);
    v889$1 := (if p35$1 then $$116$2$1 else v889$1);
    v889$2 := (if p35$2 then $$116$2$2 else v889$2);
    v890$1 := (if p35$1 then $$116$3$1 else v890$1);
    v890$2 := (if p35$2 then $$116$3$2 else v890$2);
    $$a.i2$0$1 := (if p35$1 then v887$1 else $$a.i2$0$1);
    $$a.i2$0$2 := (if p35$2 then v887$2 else $$a.i2$0$2);
    $$a.i2$1$1 := (if p35$1 then v888$1 else $$a.i2$1$1);
    $$a.i2$1$2 := (if p35$2 then v888$2 else $$a.i2$1$2);
    $$a.i2$2$1 := (if p35$1 then v889$1 else $$a.i2$2$1);
    $$a.i2$2$2 := (if p35$2 then v889$2 else $$a.i2$2$2);
    $$a.i2$3$1 := (if p35$1 then v890$1 else $$a.i2$3$1);
    $$a.i2$3$2 := (if p35$2 then v890$2 else $$a.i2$3$2);
    v891$1 := (if p35$1 then $$a.i2$0$1 else v891$1);
    v891$2 := (if p35$2 then $$a.i2$0$2 else v891$2);
    v892$1 := (if p35$1 then $$a.i2$1$1 else v892$1);
    v892$2 := (if p35$2 then $$a.i2$1$2 else v892$2);
    v893$1 := (if p35$1 then $$a.i2$2$1 else v893$1);
    v893$2 := (if p35$2 then $$a.i2$2$2 else v893$2);
    v894$1 := (if p35$1 then $$a.i2$3$1 else v894$1);
    v894$2 := (if p35$2 then $$a.i2$3$2 else v894$2);
    $$67$0$1 := (if p35$1 then FMUL32(v891$1, v886$1) else $$67$0$1);
    $$67$0$2 := (if p35$2 then FMUL32(v891$2, v886$2) else $$67$0$2);
    $$67$1$1 := (if p35$1 then FMUL32(v892$1, v886$1) else $$67$1$1);
    $$67$1$2 := (if p35$2 then FMUL32(v892$2, v886$2) else $$67$1$2);
    $$67$2$1 := (if p35$1 then FMUL32(v893$1, v886$1) else $$67$2$1);
    $$67$2$2 := (if p35$2 then FMUL32(v893$2, v886$2) else $$67$2$2);
    $$67$3$1 := (if p35$1 then FMUL32(v894$1, v886$1) else $$67$3$1);
    $$67$3$2 := (if p35$2 then FMUL32(v894$2, v886$2) else $$67$3$2);
    v895$1 := (if p35$1 then $$67$0$1 else v895$1);
    v895$2 := (if p35$2 then $$67$0$2 else v895$2);
    v896$1 := (if p35$1 then $$67$1$1 else v896$1);
    v896$2 := (if p35$2 then $$67$1$2 else v896$2);
    v897$1 := (if p35$1 then $$67$2$1 else v897$1);
    v897$2 := (if p35$2 then $$67$2$2 else v897$2);
    v898$1 := (if p35$1 then $$67$3$1 else v898$1);
    v898$2 := (if p35$2 then $$67$3$2 else v898$2);
    $$68$0$1 := (if p35$1 then v895$1 else $$68$0$1);
    $$68$0$2 := (if p35$2 then v895$2 else $$68$0$2);
    $$68$1$1 := (if p35$1 then v896$1 else $$68$1$1);
    $$68$1$2 := (if p35$2 then v896$2 else $$68$1$2);
    $$68$2$1 := (if p35$1 then v897$1 else $$68$2$1);
    $$68$2$2 := (if p35$2 then v897$2 else $$68$2$2);
    $$68$3$1 := (if p35$1 then v898$1 else $$68$3$1);
    $$68$3$2 := (if p35$2 then v898$2 else $$68$3$2);
    v899$1 := (if p35$1 then $$68$0$1 else v899$1);
    v899$2 := (if p35$2 then $$68$0$2 else v899$2);
    v900$1 := (if p35$1 then $$68$1$1 else v900$1);
    v900$2 := (if p35$2 then $$68$1$2 else v900$2);
    v901$1 := (if p35$1 then $$68$2$1 else v901$1);
    v901$2 := (if p35$2 then $$68$2$2 else v901$2);
    v902$1 := (if p35$1 then $$68$3$1 else v902$1);
    v902$2 := (if p35$2 then $$68$3$2 else v902$2);
    $$115$0$1 := (if p35$1 then v899$1 else $$115$0$1);
    $$115$0$2 := (if p35$2 then v899$2 else $$115$0$2);
    $$115$1$1 := (if p35$1 then v900$1 else $$115$1$1);
    $$115$1$2 := (if p35$2 then v900$2 else $$115$1$2);
    $$115$2$1 := (if p35$1 then v901$1 else $$115$2$1);
    $$115$2$2 := (if p35$2 then v901$2 else $$115$2$2);
    $$115$3$1 := (if p35$1 then v902$1 else $$115$3$1);
    $$115$3$2 := (if p35$2 then v902$2 else $$115$3$2);
    v903$1 := (if p35$1 then $$115$0$1 else v903$1);
    v903$2 := (if p35$2 then $$115$0$2 else v903$2);
    v904$1 := (if p35$1 then $$115$1$1 else v904$1);
    v904$2 := (if p35$2 then $$115$1$2 else v904$2);
    v905$1 := (if p35$1 then $$115$2$1 else v905$1);
    v905$2 := (if p35$2 then $$115$2$2 else v905$2);
    v906$1 := (if p35$1 then $$115$3$1 else v906$1);
    v906$2 := (if p35$2 then $$115$3$2 else v906$2);
    $$b.i$0$1 := (if p35$1 then v903$1 else $$b.i$0$1);
    $$b.i$0$2 := (if p35$2 then v903$2 else $$b.i$0$2);
    $$b.i$1$1 := (if p35$1 then v904$1 else $$b.i$1$1);
    $$b.i$1$2 := (if p35$2 then v904$2 else $$b.i$1$2);
    $$b.i$2$1 := (if p35$1 then v905$1 else $$b.i$2$1);
    $$b.i$2$2 := (if p35$2 then v905$2 else $$b.i$2$2);
    $$b.i$3$1 := (if p35$1 then v906$1 else $$b.i$3$1);
    $$b.i$3$2 := (if p35$2 then v906$2 else $$b.i$3$2);
    v907$1 := (if p35$1 then $$Color$0$1 else v907$1);
    v907$2 := (if p35$2 then $$Color$0$2 else v907$2);
    v908$1 := (if p35$1 then $$b.i$0$1 else v908$1);
    v908$2 := (if p35$2 then $$b.i$0$2 else v908$2);
    v909$1 := (if p35$1 then $$Color$1$1 else v909$1);
    v909$2 := (if p35$2 then $$Color$1$2 else v909$2);
    v910$1 := (if p35$1 then $$b.i$1$1 else v910$1);
    v910$2 := (if p35$2 then $$b.i$1$2 else v910$2);
    v911$1 := (if p35$1 then $$Color$2$1 else v911$1);
    v911$2 := (if p35$2 then $$Color$2$2 else v911$2);
    v912$1 := (if p35$1 then $$b.i$2$1 else v912$1);
    v912$2 := (if p35$2 then $$b.i$2$2 else v912$2);
    v913$1 := (if p35$1 then $$Color$3$1 else v913$1);
    v913$2 := (if p35$2 then $$Color$3$2 else v913$2);
    v914$1 := (if p35$1 then $$b.i$3$1 else v914$1);
    v914$2 := (if p35$2 then $$b.i$3$2 else v914$2);
    $$69$0$1 := (if p35$1 then FADD32(v907$1, v908$1) else $$69$0$1);
    $$69$0$2 := (if p35$2 then FADD32(v907$2, v908$2) else $$69$0$2);
    $$69$1$1 := (if p35$1 then FADD32(v909$1, v910$1) else $$69$1$1);
    $$69$1$2 := (if p35$2 then FADD32(v909$2, v910$2) else $$69$1$2);
    $$69$2$1 := (if p35$1 then FADD32(v911$1, v912$1) else $$69$2$1);
    $$69$2$2 := (if p35$2 then FADD32(v911$2, v912$2) else $$69$2$2);
    $$69$3$1 := (if p35$1 then FADD32(v913$1, v914$1) else $$69$3$1);
    $$69$3$2 := (if p35$2 then FADD32(v913$2, v914$2) else $$69$3$2);
    v915$1 := (if p35$1 then $$69$0$1 else v915$1);
    v915$2 := (if p35$2 then $$69$0$2 else v915$2);
    v916$1 := (if p35$1 then $$69$1$1 else v916$1);
    v916$2 := (if p35$2 then $$69$1$2 else v916$2);
    v917$1 := (if p35$1 then $$69$2$1 else v917$1);
    v917$2 := (if p35$2 then $$69$2$2 else v917$2);
    v918$1 := (if p35$1 then $$69$3$1 else v918$1);
    v918$2 := (if p35$2 then $$69$3$2 else v918$2);
    $$70$0$1 := (if p35$1 then v915$1 else $$70$0$1);
    $$70$0$2 := (if p35$2 then v915$2 else $$70$0$2);
    $$70$1$1 := (if p35$1 then v916$1 else $$70$1$1);
    $$70$1$2 := (if p35$2 then v916$2 else $$70$1$2);
    $$70$2$1 := (if p35$1 then v917$1 else $$70$2$1);
    $$70$2$2 := (if p35$2 then v917$2 else $$70$2$2);
    $$70$3$1 := (if p35$1 then v918$1 else $$70$3$1);
    $$70$3$2 := (if p35$2 then v918$2 else $$70$3$2);
    v919$1 := (if p35$1 then $$70$0$1 else v919$1);
    v919$2 := (if p35$2 then $$70$0$2 else v919$2);
    $$Color$0$1 := (if p35$1 then v919$1 else $$Color$0$1);
    $$Color$0$2 := (if p35$2 then v919$2 else $$Color$0$2);
    v920$1 := (if p35$1 then $$70$1$1 else v920$1);
    v920$2 := (if p35$2 then $$70$1$2 else v920$2);
    $$Color$1$1 := (if p35$1 then v920$1 else $$Color$1$1);
    $$Color$1$2 := (if p35$2 then v920$2 else $$Color$1$2);
    v921$1 := (if p35$1 then $$70$2$1 else v921$1);
    v921$2 := (if p35$2 then $$70$2$2 else v921$2);
    $$Color$2$1 := (if p35$1 then v921$1 else $$Color$2$1);
    $$Color$2$2 := (if p35$2 then v921$2 else $$Color$2$2);
    v922$1 := (if p35$1 then $$70$3$1 else v922$1);
    v922$2 := (if p35$2 then $$70$3$2 else v922$2);
    $$Color$3$1 := (if p35$1 then v922$1 else $$Color$3$1);
    $$Color$3$2 := (if p35$2 then v922$2 else $$Color$3$2);
    v923$1 := (if p32$1 then $$Color$0$1 else v923$1);
    v923$2 := (if p32$2 then $$Color$0$2 else v923$2);
    $$126$0$1 := (if p32$1 then v923$1 else $$126$0$1);
    $$126$0$2 := (if p32$2 then v923$2 else $$126$0$2);
    v924$1 := (if p32$1 then $$Color$1$1 else v924$1);
    v924$2 := (if p32$2 then $$Color$1$2 else v924$2);
    $$126$1$1 := (if p32$1 then v924$1 else $$126$1$1);
    $$126$1$2 := (if p32$2 then v924$2 else $$126$1$2);
    v925$1 := (if p32$1 then $$Color$2$1 else v925$1);
    v925$2 := (if p32$2 then $$Color$2$2 else v925$2);
    $$126$2$1 := (if p32$1 then v925$1 else $$126$2$1);
    $$126$2$2 := (if p32$2 then v925$2 else $$126$2$2);
    v926$1 := (if p32$1 then $$Color$3$1 else v926$1);
    v926$2 := (if p32$2 then $$Color$3$2 else v926$2);
    $$126$3$1 := (if p32$1 then v926$1 else $$126$3$1);
    $$126$3$2 := (if p32$2 then v926$2 else $$126$3$2);
    v927$1 := (if p32$1 then $$126$0$1 else v927$1);
    v927$2 := (if p32$2 then $$126$0$2 else v927$2);
    v928$1 := (if p32$1 then $$126$1$1 else v928$1);
    v928$2 := (if p32$2 then $$126$1$2 else v928$2);
    v929$1 := (if p32$1 then $$126$2$1 else v929$1);
    v929$2 := (if p32$2 then $$126$2$2 else v929$2);
    v930$1 := (if p32$1 then $$126$3$1 else v930$1);
    v930$2 := (if p32$2 then $$126$3$2 else v930$2);
    $$rgba.i$0$1 := (if p32$1 then v927$1 else $$rgba.i$0$1);
    $$rgba.i$0$2 := (if p32$2 then v927$2 else $$rgba.i$0$2);
    $$rgba.i$1$1 := (if p32$1 then v928$1 else $$rgba.i$1$1);
    $$rgba.i$1$2 := (if p32$2 then v928$2 else $$rgba.i$1$2);
    $$rgba.i$2$1 := (if p32$1 then v929$1 else $$rgba.i$2$1);
    $$rgba.i$2$2 := (if p32$2 then v929$2 else $$rgba.i$2$2);
    $$rgba.i$3$1 := (if p32$1 then v930$1 else $$rgba.i$3$1);
    $$rgba.i$3$2 := (if p32$2 then v930$2 else $$rgba.i$3$2);
    v931$1 := (if p32$1 then $$rgba.i$0$1 else v931$1);
    v931$2 := (if p32$2 then $$rgba.i$0$2 else v931$2);
    call {:sourceloc_num 1705} v932$1, v932$2 := $__saturatef(p32$1, v931$1, p32$2, v931$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$0$1 := (if p32$1 then v932$1 else $$rgba.i$0$1);
    $$rgba.i$0$2 := (if p32$2 then v932$2 else $$rgba.i$0$2);
    v933$1 := (if p32$1 then $$rgba.i$1$1 else v933$1);
    v933$2 := (if p32$2 then $$rgba.i$1$2 else v933$2);
    call {:sourceloc_num 1708} v934$1, v934$2 := $__saturatef(p32$1, v933$1, p32$2, v933$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$1$1 := (if p32$1 then v934$1 else $$rgba.i$1$1);
    $$rgba.i$1$2 := (if p32$2 then v934$2 else $$rgba.i$1$2);
    v935$1 := (if p32$1 then $$rgba.i$2$1 else v935$1);
    v935$2 := (if p32$2 then $$rgba.i$2$2 else v935$2);
    call {:sourceloc_num 1711} v936$1, v936$2 := $__saturatef(p32$1, v935$1, p32$2, v935$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$2$1 := (if p32$1 then v936$1 else $$rgba.i$2$1);
    $$rgba.i$2$2 := (if p32$2 then v936$2 else $$rgba.i$2$2);
    v937$1 := (if p32$1 then $$rgba.i$3$1 else v937$1);
    v937$2 := (if p32$2 then $$rgba.i$3$2 else v937$2);
    call {:sourceloc_num 1714} v938$1, v938$2 := $__saturatef(p32$1, v937$1, p32$2, v937$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$3$1 := (if p32$1 then v938$1 else $$rgba.i$3$1);
    $$rgba.i$3$2 := (if p32$2 then v938$2 else $$rgba.i$3$2);
    v939$1 := (if p32$1 then $$rgba.i$3$1 else v939$1);
    v939$2 := (if p32$2 then $$rgba.i$3$2 else v939$2);
    v940$1 := (if p32$1 then $$rgba.i$2$1 else v940$1);
    v940$2 := (if p32$2 then $$rgba.i$2$2 else v940$2);
    v941$1 := (if p32$1 then $$rgba.i$1$1 else v941$1);
    v941$2 := (if p32$2 then $$rgba.i$1$2 else v941$2);
    v942$1 := (if p32$1 then $$rgba.i$0$1 else v942$1);
    v942$2 := (if p32$2 then $$rgba.i$0$2 else v942$2);
    call {:sourceloc} {:sourceloc_num 1720} _LOG_WRITE_$$result(p32$1, v0$1, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v939$1, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v940$1, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v941$1, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v942$1, 1132396544))), $$result[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(p32$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 1720} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 1720} _CHECK_WRITE_$$result(p32$2, v0$2, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v939$2, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v940$2, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v941$2, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v942$2, 1132396544))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$result"} true;
    $$result[v0$1] := (if p32$1 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v939$1, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v940$1, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v941$1, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v942$1, 1132396544))) else $$result[v0$1]);
    $$result[v0$2] := (if p32$2 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v939$2, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v940$2, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v941$2, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v942$2, 1132396544))) else $$result[v0$2]);
    return;

  $24.backedge:
    assume {:backedge} p21$1 || p21$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $24;
}



procedure {:source_name "_Z3minjj"} $_Z3minjj($0: int, $1: int, _P$1: bool, _P$2: bool) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z9normalize6float3"} $_Z9normalize6float3(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z3dot6float3S_"} $_Z3dot6float3S_(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, $5$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int, $5$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "max"} $max($0: int, _P$1: bool, $1$1: int, _P$2: bool, $1$2: int) returns ($ret$1: int, $ret$2: int);
  requires _P$1 ==> $0 == 0;
  requires _P$2 ==> $0 == 0;



procedure {:source_name "_Z3minff"} $_Z3minff($0: int, _P$1: bool, $1$1: int, _P$2: bool, $1$2: int) returns ($ret$1: int, $ret$2: int);
  requires _P$1 ==> $0 == 1065353216;
  requires _P$2 ==> $0 == 1065353216;



procedure {:source_name "__saturatef"} $__saturatef(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "fabs"} $fabs(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 4 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

axiom (if num_groups_y == 64 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ11renderPixelPjP4NodejjffE1T, $$_ZZ11renderPixelPjP4NodejjffE3Obj, $$result, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ11renderPixelPjP4NodejjffE1T, $$_ZZ11renderPixelPjP4NodejjffE3Obj, $$result, _TRACKING;



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

var $$a.i35$0$1: int;

var $$a.i35$0$2: int;

var $$a.i35$1$1: int;

var $$a.i35$1$2: int;

var $$a.i35$2$1: int;

var $$a.i35$2$2: int;

var $$b.i36$0$1: int;

var $$b.i36$0$2: int;

var $$b.i36$1$1: int;

var $$b.i36$1$2: int;

var $$b.i36$2$1: int;

var $$b.i36$2$2: int;

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

var $$a.i34$0$1: int;

var $$a.i34$0$2: int;

var $$a.i34$1$1: int;

var $$a.i34$1$2: int;

var $$a.i34$2$1: int;

var $$a.i34$2$2: int;

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

var $$a.i33$0$1: int;

var $$a.i33$0$2: int;

var $$a.i33$1$1: int;

var $$a.i33$1$2: int;

var $$a.i33$2$1: int;

var $$a.i33$2$2: int;

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

var $$a.i.i26$0$1: int;

var $$a.i.i26$0$2: int;

var $$a.i.i26$1$1: int;

var $$a.i.i26$1$2: int;

var $$a.i.i26$2$1: int;

var $$a.i.i26$2$2: int;

var $$b.i.i27$0$1: int;

var $$b.i.i27$0$2: int;

var $$b.i.i27$1$1: int;

var $$b.i.i27$1$2: int;

var $$b.i.i27$2$1: int;

var $$b.i.i27$2$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$R.i28$0$1: int;

var $$R.i28$0$2: int;

var $$R.i28$1$1: int;

var $$R.i28$1$2: int;

var $$R.i28$2$1: int;

var $$R.i28$2$2: int;

var $$R.i28$3$1: int;

var $$R.i28$3$2: int;

var $$R.i28$4$1: int;

var $$R.i28$4$2: int;

var $$R.i28$5$1: int;

var $$R.i28$5$2: int;

var $$C.i29$0$1: int;

var $$C.i29$0$2: int;

var $$C.i29$1$1: int;

var $$C.i29$1$2: int;

var $$C.i29$2$1: int;

var $$C.i29$2$2: int;

var $$N2.i$0$1: int;

var $$N2.i$0$2: int;

var $$N2.i$1$1: int;

var $$N2.i$1$2: int;

var $$N2.i$2$1: int;

var $$N2.i$2$2: int;

var $$N.i$0$1: int;

var $$N.i$0$2: int;

var $$N.i$1$1: int;

var $$N.i$1$2: int;

var $$N.i$2$1: int;

var $$N.i$2$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$9$2$1: int;

var $$9$2$2: int;

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

var $$L.i32$0$1: int;

var $$L.i32$0$2: int;

var $$L.i32$1$1: int;

var $$L.i32$1$2: int;

var $$L.i32$2$1: int;

var $$L.i32$2$2: int;

var $$12$0$1: int;

var $$12$0$2: int;

var $$12$1$1: int;

var $$12$1$2: int;

var $$12$2$1: int;

var $$12$2$2: int;

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

var $$a.i25$0$1: int;

var $$a.i25$0$2: int;

var $$a.i25$1$1: int;

var $$a.i25$1$2: int;

var $$a.i25$2$1: int;

var $$a.i25$2$2: int;

var $$a.i25$3$1: int;

var $$a.i25$3$2: int;

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

var $$a.i23$0$1: int;

var $$a.i23$0$2: int;

var $$a.i23$1$1: int;

var $$a.i23$1$2: int;

var $$a.i23$2$1: int;

var $$a.i23$2$2: int;

var $$b.i24$0$1: int;

var $$b.i24$0$2: int;

var $$b.i24$1$1: int;

var $$b.i24$1$2: int;

var $$b.i24$2$1: int;

var $$b.i24$2$2: int;

var $$21$0$1: int;

var $$21$0$2: int;

var $$21$1$1: int;

var $$21$1$2: int;

var $$21$2$1: int;

var $$21$2$2: int;

var $$22$0$1: int;

var $$22$0$2: int;

var $$22$1$1: int;

var $$22$1$2: int;

var $$22$2$1: int;

var $$22$2$2: int;

var $$a.i22$0$1: int;

var $$a.i22$0$2: int;

var $$a.i22$1$1: int;

var $$a.i22$1$2: int;

var $$a.i22$2$1: int;

var $$a.i22$2$2: int;

var $$23$0$1: int;

var $$23$0$2: int;

var $$23$1$1: int;

var $$23$1$2: int;

var $$23$2$1: int;

var $$23$2$2: int;

var $$24$0$1: int;

var $$24$0$2: int;

var $$24$1$1: int;

var $$24$1$2: int;

var $$24$2$1: int;

var $$24$2$2: int;

var $$a.i.i19$0$1: int;

var $$a.i.i19$0$2: int;

var $$a.i.i19$1$1: int;

var $$a.i.i19$1$2: int;

var $$a.i.i19$2$1: int;

var $$a.i.i19$2$2: int;

var $$b.i.i20$0$1: int;

var $$b.i.i20$0$2: int;

var $$b.i.i20$1$1: int;

var $$b.i.i20$1$2: int;

var $$b.i.i20$2$1: int;

var $$b.i.i20$2$2: int;

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

var $$C.i21$0$1: int;

var $$C.i21$0$2: int;

var $$C.i21$1$1: int;

var $$C.i21$1$2: int;

var $$C.i21$2$1: int;

var $$C.i21$2$2: int;

var $$L.i$0$1: int;

var $$L.i$0$2: int;

var $$L.i$1$1: int;

var $$L.i$1$2: int;

var $$L.i$2$1: int;

var $$L.i$2$2: int;

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

var $$a.i18$0$1: int;

var $$a.i18$0$2: int;

var $$a.i18$1$1: int;

var $$a.i18$1$2: int;

var $$a.i18$2$1: int;

var $$a.i18$2$2: int;

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

var $$a.i16$0$1: int;

var $$a.i16$0$2: int;

var $$a.i16$1$1: int;

var $$a.i16$1$2: int;

var $$a.i16$2$1: int;

var $$a.i16$2$2: int;

var $$b.i17$0$1: int;

var $$b.i17$0$2: int;

var $$b.i17$1$1: int;

var $$b.i17$1$2: int;

var $$b.i17$2$1: int;

var $$b.i17$2$2: int;

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

var $$b.i13$0$1: int;

var $$b.i13$0$2: int;

var $$b.i13$1$1: int;

var $$b.i13$1$2: int;

var $$b.i13$2$1: int;

var $$b.i13$2$2: int;

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

var $$a.i12$0$1: int;

var $$a.i12$0$2: int;

var $$a.i12$1$1: int;

var $$a.i12$1$2: int;

var $$a.i12$2$1: int;

var $$a.i12$2$2: int;

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

var $$P.i11$0$1: int;

var $$P.i11$0$2: int;

var $$P.i11$1$1: int;

var $$P.i11$1$2: int;

var $$P.i11$2$1: int;

var $$P.i11$2$2: int;

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

var $$a.i10$0$1: int;

var $$a.i10$0$2: int;

var $$a.i10$1$1: int;

var $$a.i10$1$2: int;

var $$a.i10$2$1: int;

var $$a.i10$2$2: int;

var $$a.i10$3$1: int;

var $$a.i10$3$2: int;

var $$47$0$1: int;

var $$47$0$2: int;

var $$47$1$1: int;

var $$47$1$2: int;

var $$47$2$1: int;

var $$47$2$2: int;

var $$48$0$1: int;

var $$48$0$2: int;

var $$48$1$1: int;

var $$48$1$2: int;

var $$48$2$1: int;

var $$48$2$2: int;

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

var $$49$0$1: int;

var $$49$0$2: int;

var $$49$1$1: int;

var $$49$1$2: int;

var $$49$2$1: int;

var $$49$2$2: int;

var $$P.i$0$1: int;

var $$P.i$0$2: int;

var $$P.i$1$1: int;

var $$P.i$1$2: int;

var $$P.i$2$1: int;

var $$P.i$2$2: int;

var $$C.i$0$1: int;

var $$C.i$0$2: int;

var $$C.i$1$1: int;

var $$C.i$1$2: int;

var $$C.i$2$1: int;

var $$C.i$2$2: int;

var $$50$0$1: int;

var $$50$0$2: int;

var $$50$1$1: int;

var $$50$1$2: int;

var $$50$2$1: int;

var $$50$2$2: int;

var $$51$0$1: int;

var $$51$0$2: int;

var $$51$1$1: int;

var $$51$1$2: int;

var $$51$2$1: int;

var $$51$2$2: int;

var $$52$0$1: int;

var $$52$0$2: int;

var $$52$1$1: int;

var $$52$1$2: int;

var $$52$2$1: int;

var $$52$2$2: int;

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

var $$b.i9$0$1: int;

var $$b.i9$0$2: int;

var $$b.i9$1$1: int;

var $$b.i9$1$2: int;

var $$b.i9$2$1: int;

var $$b.i9$2$2: int;

var $$b.i9$3$1: int;

var $$b.i9$3$2: int;

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

var $$a.i8$0$1: int;

var $$a.i8$0$2: int;

var $$a.i8$1$1: int;

var $$a.i8$1$2: int;

var $$a.i8$2$1: int;

var $$a.i8$2$2: int;

var $$a.i8$3$1: int;

var $$a.i8$3$2: int;

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

var $$b.i7$0$1: int;

var $$b.i7$0$2: int;

var $$b.i7$1$1: int;

var $$b.i7$1$2: int;

var $$b.i7$2$1: int;

var $$b.i7$2$2: int;

var $$b.i7$3$1: int;

var $$b.i7$3$2: int;

var $$61$0$1: int;

var $$61$0$2: int;

var $$61$1$1: int;

var $$61$1$2: int;

var $$61$2$1: int;

var $$61$2$2: int;

var $$62$0$1: int;

var $$62$0$2: int;

var $$62$1$1: int;

var $$62$1$2: int;

var $$62$2$1: int;

var $$62$2$2: int;

var $$b.i6$0$1: int;

var $$b.i6$0$2: int;

var $$b.i6$1$1: int;

var $$b.i6$1$2: int;

var $$b.i6$2$1: int;

var $$b.i6$2$2: int;

var $$63$0$1: int;

var $$63$0$2: int;

var $$63$1$1: int;

var $$63$1$2: int;

var $$63$2$1: int;

var $$63$2$2: int;

var $$64$0$1: int;

var $$64$0$2: int;

var $$64$1$1: int;

var $$64$1$2: int;

var $$64$2$1: int;

var $$64$2$2: int;

var $$a.i5$0$1: int;

var $$a.i5$0$2: int;

var $$a.i5$1$1: int;

var $$a.i5$1$2: int;

var $$a.i5$2$1: int;

var $$a.i5$2$2: int;

var $$65$0$1: int;

var $$65$0$2: int;

var $$65$1$1: int;

var $$65$1$2: int;

var $$65$2$1: int;

var $$65$2$2: int;

var $$66$0$1: int;

var $$66$0$2: int;

var $$66$1$1: int;

var $$66$1$2: int;

var $$66$2$1: int;

var $$66$2$2: int;

var $$a.i3$0$1: int;

var $$a.i3$0$2: int;

var $$a.i3$1$1: int;

var $$a.i3$1$2: int;

var $$a.i3$2$1: int;

var $$a.i3$2$2: int;

var $$b.i4$0$1: int;

var $$b.i4$0$2: int;

var $$b.i4$1$1: int;

var $$b.i4$1$2: int;

var $$b.i4$2$1: int;

var $$b.i4$2$2: int;

var $$67$0$1: int;

var $$67$0$2: int;

var $$67$1$1: int;

var $$67$1$2: int;

var $$67$2$1: int;

var $$67$2$2: int;

var $$67$3$1: int;

var $$67$3$2: int;

var $$68$0$1: int;

var $$68$0$2: int;

var $$68$1$1: int;

var $$68$1$2: int;

var $$68$2$1: int;

var $$68$2$2: int;

var $$68$3$1: int;

var $$68$3$2: int;

var $$a.i2$0$1: int;

var $$a.i2$0$2: int;

var $$a.i2$1$1: int;

var $$a.i2$1$2: int;

var $$a.i2$2$1: int;

var $$a.i2$2$2: int;

var $$a.i2$3$1: int;

var $$a.i2$3$2: int;

var $$69$0$1: int;

var $$69$0$2: int;

var $$69$1$1: int;

var $$69$1$2: int;

var $$69$2$1: int;

var $$69$2$2: int;

var $$69$3$1: int;

var $$69$3$2: int;

var $$b.i$0$1: int;

var $$b.i$0$2: int;

var $$b.i$1$1: int;

var $$b.i$1$2: int;

var $$b.i$2$1: int;

var $$b.i$2$2: int;

var $$b.i$3$1: int;

var $$b.i$3$2: int;

var $$70$0$1: int;

var $$70$0$2: int;

var $$70$1$1: int;

var $$70$1$2: int;

var $$70$2$1: int;

var $$70$2$2: int;

var $$70$3$1: int;

var $$70$3$2: int;

var $$71$0$1: int;

var $$71$0$2: int;

var $$71$1$1: int;

var $$71$1$2: int;

var $$71$2$1: int;

var $$71$2$2: int;

var $$72$0$1: int;

var $$72$0$2: int;

var $$72$1$1: int;

var $$72$1$2: int;

var $$72$2$1: int;

var $$72$2$2: int;

var $$a.i1$0$1: int;

var $$a.i1$0$2: int;

var $$a.i1$1$1: int;

var $$a.i1$1$2: int;

var $$a.i1$2$1: int;

var $$a.i1$2$2: int;

var $$73$0$1: int;

var $$73$0$2: int;

var $$73$1$1: int;

var $$73$1$2: int;

var $$73$2$1: int;

var $$73$2$2: int;

var $$74$0$1: int;

var $$74$0$2: int;

var $$74$1$1: int;

var $$74$1$2: int;

var $$74$2$1: int;

var $$74$2$2: int;

var $$a.i$0$1: int;

var $$a.i$0$2: int;

var $$a.i$1$1: int;

var $$a.i$1$2: int;

var $$a.i$2$1: int;

var $$a.i$2$2: int;

var $$a.i$3$1: int;

var $$a.i$3$2: int;

var $$75$0$1: int;

var $$75$0$2: int;

var $$75$1$1: int;

var $$75$1$2: int;

var $$75$2$1: int;

var $$75$2$2: int;

var $$76$0$1: int;

var $$76$0$2: int;

var $$76$1$1: int;

var $$76$1$2: int;

var $$76$2$1: int;

var $$76$2$2: int;

var $$76$3$1: int;

var $$76$3$2: int;

var $$rgba.i$0$1: int;

var $$rgba.i$0$2: int;

var $$rgba.i$1$1: int;

var $$rgba.i$1$2: int;

var $$rgba.i$2$1: int;

var $$rgba.i$2$2: int;

var $$rgba.i$3$1: int;

var $$rgba.i$3$2: int;

var $$node$0$1: int;

var $$node$0$2: int;

var $$node$1$1: int;

var $$node$1$2: int;

var $$node$2$1: int;

var $$node$2$2: int;

var $$node$3$1: int;

var $$node$3$2: int;

var $$node$4$1: int;

var $$node$4$2: int;

var $$node$5$1: int;

var $$node$5$2: int;

var $$node$6$1: int;

var $$node$6$2: int;

var $$node$7$1: int;

var $$node$7$2: int;

var $$node$8$1: int;

var $$node$8$2: int;

var $$node$9$1: int;

var $$node$9$2: int;

var $$node$10$1: int;

var $$node$10$2: int;

var $$node$11$1: int;

var $$node$11$2: int;

var $$node$12$1: int;

var $$node$12$2: int;

var $$node$13$1: int;

var $$node$13$2: int;

var $$node$14$1: int;

var $$node$14$2: int;

var $$node$15$1: int;

var $$node$15$2: int;

var $$node$16$1: int;

var $$node$16$2: int;

var $$node$17$1: int;

var $$node$17$2: int;

var $$node$18$1: int;

var $$node$18$2: int;

var $$node$19$1: int;

var $$node$19$2: int;

var $$node$20$1: int;

var $$node$20$2: int;

var $$node$21$1: int;

var $$node$21$2: int;

var $$node$22$1: int;

var $$node$22$2: int;

var $$node$23$1: int;

var $$node$23$2: int;

var $$node$24$1: int;

var $$node$24$2: int;

var $$node$25$1: int;

var $$node$25$2: int;

var $$node$26$1: int;

var $$node$26$2: int;

var $$node$27$1: int;

var $$node$27$2: int;

var $$node$28$1: int;

var $$node$28$2: int;

var $$node$29$1: int;

var $$node$29$2: int;

var $$node$30$1: int;

var $$node$30$2: int;

var $$node$31$1: int;

var $$node$31$2: int;

var $$node$32$1: int;

var $$node$32$2: int;

var $$node$33$1: int;

var $$node$33$2: int;

var $$node$34$1: int;

var $$node$34$2: int;

var $$node$35$1: int;

var $$node$35$2: int;

var $$node$36$1: int;

var $$node$36$2: int;

var $$node$37$1: int;

var $$node$37$2: int;

var $$node$38$1: int;

var $$node$38$2: int;

var $$node$39$1: int;

var $$node$39$2: int;

var $$Color$0$1: int;

var $$Color$0$2: int;

var $$Color$1$1: int;

var $$Color$1$2: int;

var $$Color$2$1: int;

var $$Color$2$2: int;

var $$Color$3$1: int;

var $$Color$3$2: int;

var $$M$0$1: int;

var $$M$0$2: int;

var $$M$1$1: int;

var $$M$1$2: int;

var $$M$2$1: int;

var $$M$2$2: int;

var $$M$3$1: int;

var $$M$3$2: int;

var $$M$4$1: int;

var $$M$4$2: int;

var $$M$5$1: int;

var $$M$5$2: int;

var $$M$6$1: int;

var $$M$6$2: int;

var $$M$7$1: int;

var $$M$7$2: int;

var $$M$8$1: int;

var $$M$8$2: int;

var $$M$9$1: int;

var $$M$9$2: int;

var $$M$10$1: int;

var $$M$10$2: int;

var $$M$11$1: int;

var $$M$11$2: int;

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

var $$77$0$1: int;

var $$77$0$2: int;

var $$77$1$1: int;

var $$77$1$2: int;

var $$77$2$1: int;

var $$77$2$2: int;

var $$78$0$1: int;

var $$78$0$2: int;

var $$78$1$1: int;

var $$78$1$2: int;

var $$78$2$1: int;

var $$78$2$2: int;

var $$79$0$1: int;

var $$79$0$2: int;

var $$79$1$1: int;

var $$79$1$2: int;

var $$79$2$1: int;

var $$79$2$2: int;

var $$80$0$1: int;

var $$80$0$2: int;

var $$80$1$1: int;

var $$80$1$2: int;

var $$80$2$1: int;

var $$80$2$2: int;

var $$81$0$1: int;

var $$81$0$2: int;

var $$81$1$1: int;

var $$81$1$2: int;

var $$81$2$1: int;

var $$81$2$2: int;

var $$82$0$1: int;

var $$82$0$2: int;

var $$82$1$1: int;

var $$82$1$2: int;

var $$82$2$1: int;

var $$82$2$2: int;

var $$82$3$1: int;

var $$82$3$2: int;

var $$83$0$1: int;

var $$83$0$2: int;

var $$83$1$1: int;

var $$83$1$2: int;

var $$83$2$1: int;

var $$83$2$2: int;

var $$84$0$1: int;

var $$84$0$2: int;

var $$84$1$1: int;

var $$84$1$2: int;

var $$84$2$1: int;

var $$84$2$2: int;

var $$85$0$1: int;

var $$85$0$2: int;

var $$85$1$1: int;

var $$85$1$2: int;

var $$85$2$1: int;

var $$85$2$2: int;

var $$86$0$1: int;

var $$86$0$2: int;

var $$86$1$1: int;

var $$86$1$2: int;

var $$86$2$1: int;

var $$86$2$2: int;

var $$86$3$1: int;

var $$86$3$2: int;

var $$87$0$1: int;

var $$87$0$2: int;

var $$87$1$1: int;

var $$87$1$2: int;

var $$87$2$1: int;

var $$87$2$2: int;

var $$88$0$1: int;

var $$88$0$2: int;

var $$88$1$1: int;

var $$88$1$2: int;

var $$88$2$1: int;

var $$88$2$2: int;

var $$89$0$1: int;

var $$89$0$2: int;

var $$89$1$1: int;

var $$89$1$2: int;

var $$89$2$1: int;

var $$89$2$2: int;

var $$90$0$1: int;

var $$90$0$2: int;

var $$90$1$1: int;

var $$90$1$2: int;

var $$90$2$1: int;

var $$90$2$2: int;

var $$90$3$1: int;

var $$90$3$2: int;

var $$91$0$1: int;

var $$91$0$2: int;

var $$91$1$1: int;

var $$91$1$2: int;

var $$91$2$1: int;

var $$91$2$2: int;

var $$92$0$1: int;

var $$92$0$2: int;

var $$92$1$1: int;

var $$92$1$2: int;

var $$92$2$1: int;

var $$92$2$2: int;

var $$93$0$1: int;

var $$93$0$2: int;

var $$93$1$1: int;

var $$93$1$2: int;

var $$93$2$1: int;

var $$93$2$2: int;

var $$93$3$1: int;

var $$93$3$2: int;

var $$93$4$1: int;

var $$93$4$2: int;

var $$93$5$1: int;

var $$93$5$2: int;

var $$94$0$1: int;

var $$94$0$2: int;

var $$94$1$1: int;

var $$94$1$2: int;

var $$94$2$1: int;

var $$94$2$2: int;

var $$94$3$1: int;

var $$94$3$2: int;

var $$94$4$1: int;

var $$94$4$2: int;

var $$94$5$1: int;

var $$94$5$2: int;

var $$94$6$1: int;

var $$94$6$2: int;

var $$94$7$1: int;

var $$94$7$2: int;

var $$94$8$1: int;

var $$94$8$2: int;

var $$94$9$1: int;

var $$94$9$2: int;

var $$94$10$1: int;

var $$94$10$2: int;

var $$94$11$1: int;

var $$94$11$2: int;

var $$95$0$1: int;

var $$95$0$2: int;

var $$95$1$1: int;

var $$95$1$2: int;

var $$95$2$1: int;

var $$95$2$2: int;

var $$95$3$1: int;

var $$95$3$2: int;

var $$95$4$1: int;

var $$95$4$2: int;

var $$95$5$1: int;

var $$95$5$2: int;

var $$95$6$1: int;

var $$95$6$2: int;

var $$95$7$1: int;

var $$95$7$2: int;

var $$95$8$1: int;

var $$95$8$2: int;

var $$95$9$1: int;

var $$95$9$2: int;

var $$95$10$1: int;

var $$95$10$2: int;

var $$95$11$1: int;

var $$95$11$2: int;

var $$96$0$1: int;

var $$96$0$2: int;

var $$96$1$1: int;

var $$96$1$2: int;

var $$96$2$1: int;

var $$96$2$2: int;

var $$96$3$1: int;

var $$96$3$2: int;

var $$96$4$1: int;

var $$96$4$2: int;

var $$96$5$1: int;

var $$96$5$2: int;

var $$97$0$1: int;

var $$97$0$2: int;

var $$97$1$1: int;

var $$97$1$2: int;

var $$97$2$1: int;

var $$97$2$2: int;

var $$97$3$1: int;

var $$97$3$2: int;

var $$97$4$1: int;

var $$97$4$2: int;

var $$97$5$1: int;

var $$97$5$2: int;

var $$97$6$1: int;

var $$97$6$2: int;

var $$97$7$1: int;

var $$97$7$2: int;

var $$97$8$1: int;

var $$97$8$2: int;

var $$97$9$1: int;

var $$97$9$2: int;

var $$97$10$1: int;

var $$97$10$2: int;

var $$97$11$1: int;

var $$97$11$2: int;

var $$P$0$1: int;

var $$P$0$2: int;

var $$P$1$1: int;

var $$P$1$2: int;

var $$P$2$1: int;

var $$P$2$2: int;

var $$98$0$1: int;

var $$98$0$2: int;

var $$98$1$1: int;

var $$98$1$2: int;

var $$98$2$1: int;

var $$98$2$2: int;

var $$99$0$1: int;

var $$99$0$2: int;

var $$99$1$1: int;

var $$99$1$2: int;

var $$99$2$1: int;

var $$99$2$2: int;

var $$100$0$1: int;

var $$100$0$2: int;

var $$100$1$1: int;

var $$100$1$2: int;

var $$100$2$1: int;

var $$100$2$2: int;

var $$L$0$1: int;

var $$L$0$2: int;

var $$L$1$1: int;

var $$L$1$2: int;

var $$L$2$1: int;

var $$L$2$2: int;

var $$101$0$1: int;

var $$101$0$2: int;

var $$101$1$1: int;

var $$101$1$2: int;

var $$101$2$1: int;

var $$101$2$2: int;

var $$102$0$1: int;

var $$102$0$2: int;

var $$102$1$1: int;

var $$102$1$2: int;

var $$102$2$1: int;

var $$102$2$2: int;

var $$103$0$1: int;

var $$103$0$2: int;

var $$103$1$1: int;

var $$103$1$2: int;

var $$103$2$1: int;

var $$103$2$2: int;

var $$V$0$1: int;

var $$V$0$2: int;

var $$V$1$1: int;

var $$V$1$2: int;

var $$V$2$1: int;

var $$V$2$2: int;

var $$104$0$1: int;

var $$104$0$2: int;

var $$104$1$1: int;

var $$104$1$2: int;

var $$104$2$1: int;

var $$104$2$2: int;

var $$N$0$1: int;

var $$N$0$2: int;

var $$N$1$1: int;

var $$N$1$2: int;

var $$N$2$1: int;

var $$N$2$2: int;

var $$105$0$1: int;

var $$105$0$2: int;

var $$105$1$1: int;

var $$105$1$2: int;

var $$105$2$1: int;

var $$105$2$2: int;

var $$106$0$1: int;

var $$106$0$2: int;

var $$106$1$1: int;

var $$106$1$2: int;

var $$106$2$1: int;

var $$106$2$2: int;

var $$107$0$1: int;

var $$107$0$2: int;

var $$107$1$1: int;

var $$107$1$2: int;

var $$107$2$1: int;

var $$107$2$2: int;

var $$107$3$1: int;

var $$107$3$2: int;

var $$107$4$1: int;

var $$107$4$2: int;

var $$107$5$1: int;

var $$107$5$2: int;

var $$107$6$1: int;

var $$107$6$2: int;

var $$107$7$1: int;

var $$107$7$2: int;

var $$107$8$1: int;

var $$107$8$2: int;

var $$107$9$1: int;

var $$107$9$2: int;

var $$107$10$1: int;

var $$107$10$2: int;

var $$107$11$1: int;

var $$107$11$2: int;

var $$108$0$1: int;

var $$108$0$2: int;

var $$108$1$1: int;

var $$108$1$2: int;

var $$108$2$1: int;

var $$108$2$2: int;

var $$109$0$1: int;

var $$109$0$2: int;

var $$109$1$1: int;

var $$109$1$2: int;

var $$109$2$1: int;

var $$109$2$2: int;

var $$110$0$1: int;

var $$110$0$2: int;

var $$110$1$1: int;

var $$110$1$2: int;

var $$110$2$1: int;

var $$110$2$2: int;

var $$110$3$1: int;

var $$110$3$2: int;

var $$111$0$1: int;

var $$111$0$2: int;

var $$111$1$1: int;

var $$111$1$2: int;

var $$111$2$1: int;

var $$111$2$2: int;

var $$111$3$1: int;

var $$111$3$2: int;

var $$112$0$1: int;

var $$112$0$2: int;

var $$112$1$1: int;

var $$112$1$2: int;

var $$112$2$1: int;

var $$112$2$2: int;

var $$112$3$1: int;

var $$112$3$2: int;

var $$113$0$1: int;

var $$113$0$2: int;

var $$113$1$1: int;

var $$113$1$2: int;

var $$113$2$1: int;

var $$113$2$2: int;

var $$114$0$1: int;

var $$114$0$2: int;

var $$114$1$1: int;

var $$114$1$2: int;

var $$114$2$1: int;

var $$114$2$2: int;

var $$115$0$1: int;

var $$115$0$2: int;

var $$115$1$1: int;

var $$115$1$2: int;

var $$115$2$1: int;

var $$115$2$2: int;

var $$115$3$1: int;

var $$115$3$2: int;

var $$116$0$1: int;

var $$116$0$2: int;

var $$116$1$1: int;

var $$116$1$2: int;

var $$116$2$1: int;

var $$116$2$2: int;

var $$116$3$1: int;

var $$116$3$2: int;

var $$117$0$1: int;

var $$117$0$2: int;

var $$117$1$1: int;

var $$117$1$2: int;

var $$117$2$1: int;

var $$117$2$2: int;

var $$117$3$1: int;

var $$117$3$2: int;

var $$118$0$1: int;

var $$118$0$2: int;

var $$118$1$1: int;

var $$118$1$2: int;

var $$118$2$1: int;

var $$118$2$2: int;

var $$119$0$1: int;

var $$119$0$2: int;

var $$119$1$1: int;

var $$119$1$2: int;

var $$119$2$1: int;

var $$119$2$2: int;

var $$120$0$1: int;

var $$120$0$2: int;

var $$120$1$1: int;

var $$120$1$2: int;

var $$120$2$1: int;

var $$120$2$2: int;

var $$121$0$1: int;

var $$121$0$2: int;

var $$121$1$1: int;

var $$121$1$2: int;

var $$121$2$1: int;

var $$121$2$2: int;

var $$122$0$1: int;

var $$122$0$2: int;

var $$122$1$1: int;

var $$122$1$2: int;

var $$122$2$1: int;

var $$122$2$2: int;

var $$123$0$1: int;

var $$123$0$2: int;

var $$123$1$1: int;

var $$123$1$2: int;

var $$123$2$1: int;

var $$123$2$2: int;

var $$124$0$1: int;

var $$124$0$2: int;

var $$124$1$1: int;

var $$124$1$2: int;

var $$124$2$1: int;

var $$124$2$2: int;

var $$125$0$1: int;

var $$125$0$2: int;

var $$125$1$1: int;

var $$125$1$2: int;

var $$125$2$1: int;

var $$125$2$2: int;

var $$126$0$1: int;

var $$126$0$2: int;

var $$126$1$1: int;

var $$126$1$2: int;

var $$126$2$1: int;

var $$126$2$2: int;

var $$126$3$1: int;

var $$126$3$2: int;

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

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const _WATCHED_VALUE_$$result: int;

procedure {:inline 1} _LOG_READ_$$result(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_READ_$$result(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _READ_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_READ_$$result(_P: bool, _offset: int, _value: int);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$result);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$result: bool;

procedure {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _WRITE_HAS_OCCURRED_$$result);
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



procedure _CHECK_WRITE_$$result(_P: bool, _offset: int, _value: int);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_ATOMIC_$$result(_P: bool, _offset: int);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



const _WATCHED_VALUE_$$dnode: int;

procedure {:inline 1} _LOG_READ_$$dnode(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$dnode;



implementation {:inline 1} _LOG_READ_$$dnode(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dnode := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dnode == _value then true else _READ_HAS_OCCURRED_$$dnode);
    return;
}



procedure _CHECK_READ_$$dnode(_P: bool, _offset: int, _value: int);
  requires {:source_name "dnode"} {:array "$$dnode"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dnode);
  requires {:source_name "dnode"} {:array "$$dnode"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dnode: bool;

procedure {:inline 1} _LOG_WRITE_$$dnode(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$dnode, _WRITE_READ_BENIGN_FLAG_$$dnode;



implementation {:inline 1} _LOG_WRITE_$$dnode(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dnode := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dnode == _value then true else _WRITE_HAS_OCCURRED_$$dnode);
    _WRITE_READ_BENIGN_FLAG_$$dnode := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dnode == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dnode);
    return;
}



procedure _CHECK_WRITE_$$dnode(_P: bool, _offset: int, _value: int);
  requires {:source_name "dnode"} {:array "$$dnode"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dnode != _value);
  requires {:source_name "dnode"} {:array "$$dnode"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dnode != _value);
  requires {:source_name "dnode"} {:array "$$dnode"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dnode(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$dnode;



implementation {:inline 1} _LOG_ATOMIC_$$dnode(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dnode := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dnode);
    return;
}



procedure _CHECK_ATOMIC_$$dnode(_P: bool, _offset: int);
  requires {:source_name "dnode"} {:array "$$dnode"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset);
  requires {:source_name "dnode"} {:array "$$dnode"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dnode(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$dnode;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dnode(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dnode := (if _P && _WRITE_HAS_OCCURRED_$$dnode && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dnode);
    return;
}



const _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE1T: int;

procedure {:inline 1} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;



implementation {:inline 1} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE1T == _value then true else _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T);
    return;
}



procedure _CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int, _value: int);
  requires {:source_name "T"} {:array "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "T"} {:array "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T, _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE1T == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE1T == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int, _value: int);
  requires {:source_name "T"} {:array "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE1T != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "T"} {:array "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE1T != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "T"} {:array "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int);
  requires {:source_name "T"} {:array "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "T"} {:array "$$_ZZ11renderPixelPjP4NodejjffE1T"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE1T);
    return;
}



const _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE3Obj: int;

procedure {:inline 1} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;



implementation {:inline 1} _LOG_READ_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE3Obj == _value then true else _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj);
    return;
}



procedure _CHECK_READ_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int, _value: int);
  requires {:source_name "Obj"} {:array "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "Obj"} {:array "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj, _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE3Obj == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE3Obj == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int, _value: int);
  requires {:source_name "Obj"} {:array "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE3Obj != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "Obj"} {:array "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11renderPixelPjP4NodejjffE3Obj != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "Obj"} {:array "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int);
  requires {:source_name "Obj"} {:array "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "Obj"} {:array "$$_ZZ11renderPixelPjP4NodejjffE3Obj"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11renderPixelPjP4NodejjffE3Obj);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ11renderPixelPjP4NodejjffE1T;
    goto anon4;

  anon4:
    havoc $$_ZZ11renderPixelPjP4NodejjffE3Obj;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE1T;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11renderPixelPjP4NodejjffE3Obj;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ11renderPixelPjP4NodejjffE1T;
    goto anon4;

  anon4:
    havoc $$_ZZ11renderPixelPjP4NodejjffE3Obj;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;
