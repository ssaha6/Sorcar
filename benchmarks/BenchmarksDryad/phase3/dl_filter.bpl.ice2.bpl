
function {:existential true} my_inv (
b0000 : bool,
b0001 : bool,
b0002 : bool,
b0003 : bool,
b0004 : bool,
b0005 : bool,
b0006 : bool,
b0007 : bool,
b0008 : bool,
b0009 : bool,
b0010 : bool,
b0011 : bool,
b0012 : bool,
b0013 : bool,
b0014 : bool,
b0015 : bool,
b0016 : bool,
b0017 : bool,
b0018 : bool,
b0019 : bool,
b0020 : bool,
b0021 : bool,
b0022 : bool,
b0023 : bool,
b0024 : bool,
b0025 : bool,
b0026 : bool,
b0027 : bool,
b0028 : bool,
b0029 : bool,
b0030 : bool,
b0031 : bool,
b0032 : bool,
b0033 : bool,
b0034 : bool,
b0035 : bool,
b0036 : bool,
b0037 : bool,
b0038 : bool,
b0039 : bool,
b0040 : bool,
b0041 : bool,
b0042 : bool,
b0043 : bool,
b0044 : bool,
b0045 : bool,
b0046 : bool,
b0047 : bool,
b0048 : bool,
b0049 : bool,
b0050 : bool,
b0051 : bool,
b0052 : bool,
b0053 : bool,
b0054 : bool,
b0055 : bool,
b0056 : bool,
b0057 : bool,
b0058 : bool,
b0059 : bool,
b0060 : bool,
b0061 : bool,
b0062 : bool,
b0063 : bool,
b0064 : bool,
b0065 : bool,
b0066 : bool,
b0067 : bool,
b0068 : bool,
b0069 : bool,
b0070 : bool,
b0071 : bool,
b0072 : bool,
b0073 : bool,
b0074 : bool,
b0075 : bool,
b0076 : bool,
b0077 : bool,
b0078 : bool,
b0079 : bool,
b0080 : bool,
b0081 : bool,
b0082 : bool,
b0083 : bool,
b0084 : bool,
b0085 : bool,
b0086 : bool,
b0087 : bool,
b0088 : bool,
b0089 : bool,
b0090 : bool,
b0091 : bool,
b0092 : bool,
b0093 : bool,
b0094 : bool,
b0095 : bool,
b0096 : bool,
b0097 : bool,
b0098 : bool,
b0099 : bool,
b0100 : bool,
b0101 : bool,
b0102 : bool,
b0103 : bool,
b0104 : bool,
b0105 : bool,
b0106 : bool,
b0107 : bool,
b0108 : bool,
b0109 : bool,
b0110 : bool,
b0111 : bool,
b0112 : bool,
b0113 : bool,
b0114 : bool,
b0115 : bool,
b0116 : bool,
b0117 : bool,
b0118 : bool,
b0119 : bool,
b0120 : bool,
b0121 : bool,
b0122 : bool,
b0123 : bool,
b0124 : bool,
b0125 : bool,
b0126 : bool,
b0127 : bool,
b0128 : bool,
b0129 : bool,
b0130 : bool,
b0131 : bool,
b0132 : bool,
b0133 : bool,
b0134 : bool,
b0135 : bool,
b0136 : bool,
b0137 : bool,
b0138 : bool,
b0139 : bool,
b0140 : bool,
b0141 : bool,
b0142 : bool,
b0143 : bool,
b0144 : bool,
b0145 : bool,
b0146 : bool,
b0147 : bool,
b0148 : bool,
b0149 : bool,
b0150 : bool,
b0151 : bool,
b0152 : bool,
b0153 : bool,
b0154 : bool,
b0155 : bool,
b0156 : bool,
b0157 : bool,
b0158 : bool,
b0159 : bool,
b0160 : bool,
b0161 : bool,
b0162 : bool,
b0163 : bool,
b0164 : bool,
b0165 : bool,
b0166 : bool,
b0167 : bool,
b0168 : bool,
b0169 : bool,
b0170 : bool,
b0171 : bool,
b0172 : bool,
b0173 : bool,
b0174 : bool,
b0175 : bool,
b0176 : bool,
b0177 : bool,
b0178 : bool,
b0179 : bool,
b0180 : bool,
b0181 : bool,
b0182 : bool,
b0183 : bool,
b0184 : bool,
b0185 : bool,
b0186 : bool,
b0187 : bool,
b0188 : bool
) : bool;

axiom $arch_ptr_size == 8;

axiom $arch_spec_ptr_start == $max.u8;

const unique ^$##thread_id: $ctype;

axiom $def_math_type(^$##thread_id);

type $##thread_id;

const unique ^$##club: $ctype;

axiom $def_math_type(^$##club);

type $##club;

const unique ^d_node: $ctype;

axiom $is_span_sequential(^d_node);

axiom $def_struct_type(^d_node, 16, false, false);

axiom (forall #s1: $state, #s2: $state, #p: $ptr :: { $inv2(#s1, #s2, #p, ^d_node) } $inv2(#s1, #s2, #p, ^d_node) == $set_eq($owns(#s2, #p), $set_empty()));

axiom (forall #s1: $state, #s2: $state, #p: $ptr :: { $inv2_without_lemmas(#s1, #s2, #p, ^d_node) } $inv2_without_lemmas(#s1, #s2, #p, ^d_node) == $set_eq($owns(#s2, #p), $set_empty()));

axiom (forall p: $ptr, q: $ptr, s: $state :: { $in(q, $composite_extent(s, p, ^d_node)) } $in(q, $composite_extent(s, p, ^d_node)) == (q == p));

const unique d_node.prev: $field;

axiom $def_phys_field(^d_node, d_node.prev, $ptr_to(^d_node), false, 0);

const unique d_node.next: $field;

axiom $def_phys_field(^d_node, d_node.next, $ptr_to(^d_node), false, 8);

function F#glob_reach() : $oset;

const unique cf#glob_reach: $pure_function;

axiom $function_arg_type(cf#glob_reach, 0, ^$#oset);

procedure glob_reach() returns ($result: $oset);
  free ensures $result == F#glob_reach();
  free ensures $call_transition(old($s), $s);



const unique ^$#_purecall_handler#1: $ctype;

axiom $def_fnptr_type(^$#_purecall_handler#1);

type $#_purecall_handler#1;

const unique ^$#_invalid_parameter_handler#2: $ctype;

axiom $def_fnptr_type(^$#_invalid_parameter_handler#2);

type $#_invalid_parameter_handler#2;

const unique ^$#dl_filter.c..36776#3: $ctype;

axiom $def_fnptr_type(^$#dl_filter.c..36776#3);

type $#dl_filter.c..36776#3;

const unique ^$#_PtFuncCompare#4: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#4);

type $#_PtFuncCompare#4;

const unique ^$#_PtFuncCompare#5: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#5);

type $#_PtFuncCompare#5;

const unique ^$#_PtFuncCompare#6: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#6);

type $#_PtFuncCompare#6;

const unique ^$#_PtFuncCompare#7: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#7);

type $#_PtFuncCompare#7;

const unique ^$#_onexit_t#8: $ctype;

axiom $def_fnptr_type(^$#_onexit_t#8);

type $#_onexit_t#8;

function F#dll(#s: $state, SP#hd: $ptr) : bool;

const unique cf#dll: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#dll(#s, SP#hd) } 1 < $decreases_level ==> $is_null($phys_ptr_cast(SP#hd, ^d_node)) ==> F#dll(#s, SP#hd));

axiom $function_arg_type(cf#dll, 0, ^^bool);

axiom $function_arg_type(cf#dll, 1, $ptr_to(^d_node));

procedure dll(SP#hd: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^d_node)) ==> $result;
  free ensures $result == F#dll($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#dll_reach(#s: $state, SP#hd: $ptr) : $oset;

const unique cf#dll_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#dll_reach(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^d_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^d_node), F#dll_reach(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^d_node)) ==> F#dll_reach(#s, SP#hd) == $oset_empty()));

axiom $function_arg_type(cf#dll_reach, 0, ^$#oset);

axiom $function_arg_type(cf#dll_reach, 1, $ptr_to(^d_node));

procedure dll_reach(SP#hd: $ptr) returns ($result: $oset);
  ensures ($non_null($phys_ptr_cast(SP#hd, ^d_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^d_node), $result)) && ($is_null($phys_ptr_cast(SP#hd, ^d_node)) ==> $result == $oset_empty());
  free ensures $result == F#dll_reach($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#dll_lseg(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : bool;

const unique cf#dll_lseg: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#dll_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==>
true
&& ($phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> F#dll_lseg(#s, SP#hd, SP#tl))
&& ($is_null($phys_ptr_cast(SP#tl, ^d_node)) ==> F#dll_lseg(#s, SP#hd, SP#tl) == F#dll(#s, $phys_ptr_cast(SP#hd, ^d_node)))
);

/*
   lseg(x,y) ==> disjoint( lseg_reach(x,y), singleton(y) )
*/
axiom (forall #s: $state, SP#x: $ptr, SP#y: $ptr ::
{ F#dll_lseg(#s, SP#x, SP#y) }
( true
&& F#dll_lseg(#s, SP#x, SP#y)
) ==> ( true
&& $oset_disjoint( F#dll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^d_node), $phys_ptr_cast(SP#y, ^d_node)), $oset_singleton($phys_ptr_cast(SP#y, ^d_node)) )
));

/*
   lseg(x,y) && list(y)
// && lseg_keys(x,y) <= list_keys(y)
   ==>
   list(x) &&
   list_reach(x) == union( lseg_reach(x,y), list_reach(y) )
// list_keys(x)  == union( lseg_keys(x,y),  list_keys(y) )
// list_len(x)   == lseg_len(x,y) + list_len(y)
*/
axiom (forall #s: $state, SP#x: $ptr, SP#y: $ptr ::
{ F#dll_lseg(#s, SP#x, SP#y) }
( true
&& F#dll_lseg(#s, SP#x, SP#y)
&& F#dll(#s, $phys_ptr_cast(SP#y, ^d_node))
) ==> ( true
&& F#dll(#s, $phys_ptr_cast(SP#x, ^d_node))
&& F#dll_reach(#s, $phys_ptr_cast(SP#x, ^d_node))
   == $oset_union(F#dll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^d_node), $phys_ptr_cast(SP#y, ^d_node)), F#dll_reach(#s, $phys_ptr_cast(SP#y, ^d_node)))
));

/*
   lseg(x,y) && y != null
   && y->next != y && y->next != x && y->next \not\in lseg_reach(x,y)
   && y->next != null ==> y->next->prev == y
// && lseg_keys(x,y) <= singleton(y)
   ==>
   lseg(x,y->next) &&
   lseg_reach(x,y->next) == union( lseg_reach(x,y), singleton(y) )
// lseg_keys(x,y->next)  == union( lseg_keys(x,y),  singleton(y->key) )
// lseg_len(x,y->next)   == lseg_len(x,y) + 1
*/
axiom (forall #s: $state, SP#x: $ptr, SP#y: $ptr ::
{ F#dll_lseg(#s, SP#x, SP#y) }
( true
&& F#dll_lseg(#s, SP#x, SP#y)
&& $non_null($phys_ptr_cast(SP#y, ^d_node))
&& $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#y, ^d_node), ^d_node) != $phys_ptr_cast(SP#x, ^d_node)
&& $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#y, ^d_node), ^d_node) != $phys_ptr_cast(SP#y, ^d_node)
&& !$oset_in($rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#y, ^d_node), ^d_node), F#dll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^d_node), $phys_ptr_cast(SP#y, ^d_node)))
&& ( $non_null($rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#y, ^d_node), ^d_node))
     ==> ($rd_phys_ptr(#s, d_node.prev, $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#y, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SP#y, ^d_node)))
) ==> ( true
&& F#dll_lseg(#s, $phys_ptr_cast(SP#x, ^d_node), $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#y, ^d_node), ^d_node))
&& F#dll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^d_node), $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#y, ^d_node), ^d_node))
   == $oset_union(F#dll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^d_node), $phys_ptr_cast(SP#y, ^d_node)), $oset_singleton($phys_ptr_cast(SP#y, ^d_node)))
));


axiom $function_arg_type(cf#dll_lseg, 0, ^^bool);

axiom $function_arg_type(cf#dll_lseg, 1, $ptr_to(^d_node));

axiom $function_arg_type(cf#dll_lseg, 2, $ptr_to(^d_node));

procedure dll_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> $result;
  ensures $is_null($phys_ptr_cast(SP#tl, ^d_node)) ==> $result == F#dll($s, $phys_ptr_cast(SP#hd, ^d_node));
  free ensures $result == F#dll_lseg($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#dll_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#dll_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#dll_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==>
true
&& ($phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> F#dll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty())
&& ($non_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node)
   ==> $oset_in($phys_ptr_cast(SP#hd, ^d_node), F#dll_lseg_reach(#s, SP#hd, SP#tl)))
&& ($non_null($phys_ptr_cast(SP#hd, ^d_node)) && $is_null($phys_ptr_cast(SP#tl, ^d_node))
   ==> F#dll_lseg_reach(#s, SP#hd, SP#tl) == F#dll_reach(#s, $phys_ptr_cast(SP#hd, ^d_node)))
);

axiom $function_arg_type(cf#dll_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#dll_lseg_reach, 1, $ptr_to(^d_node));

axiom $function_arg_type(cf#dll_lseg_reach, 2, $ptr_to(^d_node));

procedure dll_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^d_node), $result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^d_node)) && $is_null($phys_ptr_cast(SP#tl, ^d_node)) ==> $result == F#dll_reach($s, $phys_ptr_cast(SP#hd, ^d_node));
  free ensures $result == F#dll_lseg_reach($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



procedure dl_filter(P#x: $ptr) returns ($result: $ptr);
  requires F#dll($s, $phys_ptr_cast(P#x, ^d_node));
  modifies $s, $cev_pc;
  ensures F#dll($s, $phys_ptr_cast($result, ^d_node));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation dl_filter(P#x: $ptr) returns ($result: $ptr)
{
  var stmtexpr1#11: $state;
  var _dryad_S1#2: $state;
  var stmtexpr0#10: $state;
  var _dryad_S0#1: $state;
  var stmtexpr0#9: $ptr;
  var old_curr1#0: $ptr;
  var stmtexpr1#8: $state;
  var SL#_dryad_S3: $state;
  var stmtexpr0#7: $state;
  var SL#_dryad_S2: $state;
  var stmtexpr2#6: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr1#5: $state;
  var SL#_dryad_S0: $state;
  var stmtexpr0#4: $ptr;
  var SL#old_curr1: $ptr;
  var L#old_curr_next: $ptr;
  var ite#1: bool;
  var stmtexpr0#3: $ptr;
  var SL#curr0: $ptr;
  var L#old_curr: $ptr;
  var L#nondet: int where $in_range_i4(L#nondet);
  var loopState#26: $state;
  var L#prv: $ptr;
  var L#curr: $ptr;
  var L#res: $ptr;
  var stmtexpr1#13: $oset;
  var stmtexpr0#12: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var #wrTime$3^3.3: int;
  var #stackframe: int;
  

var p0000 : bool;
var p0001 : bool;
var p0002 : bool;
var p0003 : bool;
var p0004 : bool;
var p0005 : bool;
var p0006 : bool;
var p0007 : bool;
var p0008 : bool;
var p0009 : bool;
var p0010 : bool;
var p0011 : bool;
var p0012 : bool;
var p0013 : bool;
var p0014 : bool;
var p0015 : bool;
var p0016 : bool;
var p0017 : bool;
var p0018 : bool;
var p0019 : bool;
var p0020 : bool;
var p0021 : bool;
var p0022 : bool;
var p0023 : bool;
var p0024 : bool;
var p0025 : bool;
var p0026 : bool;
var p0027 : bool;
var p0028 : bool;
var p0029 : bool;
var p0030 : bool;
var p0031 : bool;
var p0032 : bool;
var p0033 : bool;
var p0034 : bool;
var p0035 : bool;
var p0036 : bool;
var p0037 : bool;
var p0038 : bool;
var p0039 : bool;
var p0040 : bool;
var p0041 : bool;
var p0042 : bool;
var p0043 : bool;
var p0044 : bool;
var p0045 : bool;
var p0046 : bool;
var p0047 : bool;
var p0048 : bool;
var p0049 : bool;
var p0050 : bool;
var p0051 : bool;
var p0052 : bool;
var p0053 : bool;
var p0054 : bool;
var p0055 : bool;
var p0056 : bool;
var p0057 : bool;
var p0058 : bool;
var p0059 : bool;
var p0060 : bool;
var p0061 : bool;
var p0062 : bool;
var p0063 : bool;
var p0064 : bool;
var p0065 : bool;
var p0066 : bool;
var p0067 : bool;
var p0068 : bool;
var p0069 : bool;
var p0070 : bool;
var p0071 : bool;
var p0072 : bool;
var p0073 : bool;
var p0074 : bool;
var p0075 : bool;
var p0076 : bool;
var p0077 : bool;
var p0078 : bool;
var p0079 : bool;
var p0080 : bool;
var p0081 : bool;
var p0082 : bool;
var p0083 : bool;
var p0084 : bool;
var p0085 : bool;
var p0086 : bool;
var p0087 : bool;
var p0088 : bool;
var p0089 : bool;
var p0090 : bool;
var p0091 : bool;
var p0092 : bool;
var p0093 : bool;
var p0094 : bool;
var p0095 : bool;
var p0096 : bool;
var p0097 : bool;
var p0098 : bool;
var p0099 : bool;
var p0100 : bool;
var p0101 : bool;
var p0102 : bool;
var p0103 : bool;
var p0104 : bool;
var p0105 : bool;
var p0106 : bool;
var p0107 : bool;
var p0108 : bool;
var p0109 : bool;
var p0110 : bool;
var p0111 : bool;
var p0112 : bool;
var p0113 : bool;
var p0114 : bool;
var p0115 : bool;
var p0116 : bool;
var p0117 : bool;
var p0118 : bool;
var p0119 : bool;
var p0120 : bool;
var p0121 : bool;
var p0122 : bool;
var p0123 : bool;
var p0124 : bool;
var p0125 : bool;
var p0126 : bool;
var p0127 : bool;
var p0128 : bool;
var p0129 : bool;
var p0130 : bool;
var p0131 : bool;
var p0132 : bool;
var p0133 : bool;
var p0134 : bool;
var p0135 : bool;
var p0136 : bool;
var p0137 : bool;
var p0138 : bool;
var p0139 : bool;
var p0140 : bool;
var p0141 : bool;
var p0142 : bool;
var p0143 : bool;
var p0144 : bool;
var p0145 : bool;
var p0146 : bool;
var p0147 : bool;
var p0148 : bool;
var p0149 : bool;
var p0150 : bool;
var p0151 : bool;
var p0152 : bool;
var p0153 : bool;
var p0154 : bool;
var p0155 : bool;
var p0156 : bool;
var p0157 : bool;
var p0158 : bool;
var p0159 : bool;
var p0160 : bool;
var p0161 : bool;
var p0162 : bool;
var p0163 : bool;
var p0164 : bool;
var p0165 : bool;
var p0166 : bool;
var p0167 : bool;
var p0168 : bool;
var p0169 : bool;
var p0170 : bool;
var p0171 : bool;
var p0172 : bool;
var p0173 : bool;
var p0174 : bool;
var p0175 : bool;
var p0176 : bool;
var p0177 : bool;
var p0178 : bool;
var p0179 : bool;
var p0180 : bool;
var p0181 : bool;
var p0182 : bool;
var p0183 : bool;
var p0184 : bool;
var p0185 : bool;
var p0186 : bool;
var p0187 : bool;

// INV:PTR: P#x, L#prv, L#curr, L#res
// INV:INT: 
// INV:LST: dll
// INV:OLD: loopState#26

  anon223:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$3^3.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$3^3.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$3^3.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := dll_reach(x); 
    call SL#_dryad_G0 := dll_reach($phys_ptr_cast(P#x, ^d_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#12; 
    // stmtexpr0#12 := _dryad_G0; 
    stmtexpr0#12 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#13; 
    // stmtexpr1#13 := _dryad_G1; 
    stmtexpr1#13 := SL#_dryad_G1;
    // assume ==(glob_reach(), _dryad_G1); 
    assume F#glob_reach() == SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
    // struct d_node* res; 
    // struct d_node* curr; 
    // struct d_node* prv; 
    // assume ==>(@_vcc_ptr_neq_null(x), &&(@_vcc_mutable(@state, x), @writes_check(x))); 
    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> $mutable($s, $phys_ptr_cast(P#x, ^d_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(P#x, ^d_node));
    // assume ==>(@_vcc_ptr_neq_null(x), @_vcc_is_malloc_root(@state, x)); 
    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> $is_malloc_root($s, $phys_ptr_cast(P#x, ^d_node));
    // prv := (struct d_node*)@null; 
    L#prv := $phys_ptr_cast($null, ^d_node);
    // assert dll_lseg(prv, prv); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
    // assume dll_lseg(prv, prv); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
    // assert dll_lseg(curr, curr); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
    // assume dll_lseg(curr, curr); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
    // assert dll_lseg(res, res); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
    // assume dll_lseg(res, res); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
    // assert dll_lseg(x, x); 
    assert F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
    // assume dll_lseg(x, x); 
    assume F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
    // curr := x; 
    L#curr := $phys_ptr_cast(P#x, ^d_node);
    // assert dll_lseg(prv, prv); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
    // assume dll_lseg(prv, prv); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
    // assert dll_lseg(curr, curr); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
    // assume dll_lseg(curr, curr); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
    // assert dll_lseg(res, res); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
    // assume dll_lseg(res, res); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
    // assert dll_lseg(x, x); 
    assert F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
    // assume dll_lseg(x, x); 
    assume F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
    // res := x; 
    L#res := $phys_ptr_cast(P#x, ^d_node);
    // assert dll_lseg(prv, prv); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
    // assume dll_lseg(prv, prv); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
    // assert dll_lseg(curr, curr); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
    // assume dll_lseg(curr, curr); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
    // assert dll_lseg(res, res); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
    // assume dll_lseg(res, res); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
    // assert dll_lseg(x, x); 
    assert F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
    // assume dll_lseg(x, x); 
    assume F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
    loopState#26 := $s;
    assume true;
	
p0000 := (F#dll($s,$phys_ptr_cast(P#x,^d_node)));
p0001 := (F#dll($s,$phys_ptr_cast(L#prv,^d_node)));
p0002 := (F#dll($s,$phys_ptr_cast(L#curr,^d_node)));
p0003 := (F#dll($s,$phys_ptr_cast(L#res,^d_node)));
p0004 := (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)));
p0005 := (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)));
p0006 := (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)));
p0007 := (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)));
p0008 := (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)));
p0009 := (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)));
p0010 := (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)));
p0011 := (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)));
p0012 := (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)));
p0013 := (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)));
p0014 := (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)));
p0015 := (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)));
p0016 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0017 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0018 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0019 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0020 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0021 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0022 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0023 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0024 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0025 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0026 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0027 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0028 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0029 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0030 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0031 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0032 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0033 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0034 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0035 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0036 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0037 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0038 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0039 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0040 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0041 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0042 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0043 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0044 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0045 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0046 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0047 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0048 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0049 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0050 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0051 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0052 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0053 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0054 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0055 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0056 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0057 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0058 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0059 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0060 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0061 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0062 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0063 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0100 := ($non_null($phys_ptr_cast(P#x,^d_node)));
p0101 := ($non_null($phys_ptr_cast(L#prv,^d_node)));
p0102 := ($non_null($phys_ptr_cast(L#curr,^d_node)));
p0103 := ($non_null($phys_ptr_cast(L#res,^d_node)));
p0104 := ($is_null($phys_ptr_cast(P#x,^d_node)));
p0105 := ($is_null($phys_ptr_cast(L#prv,^d_node)));
p0106 := ($is_null($phys_ptr_cast(L#curr,^d_node)));
p0107 := ($is_null($phys_ptr_cast(L#res,^d_node)));
p0108 := (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node)));
p0109 := (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node)));
p0110 := (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node)));
p0111 := (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node)));
p0112 := (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node)));
p0113 := (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node)));
p0114 := (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node)));
p0115 := (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node)));
p0116 := (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node)));
p0117 := (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node)));
p0118 := (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node)));
p0119 := (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node)));
p0120 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node))));
p0121 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node))));
p0122 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node))));
p0123 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node))));
p0124 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node))));
p0125 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node))));
p0126 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node))));
p0127 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node))));
p0128 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0129 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0130 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0131 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0132 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0133 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0134 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0135 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0136 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0137 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0138 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0139 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0164 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0165 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0166 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0167 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0168 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0169 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0170 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0171 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0172 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0173 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0174 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0175 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0176 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0177 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0178 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0179 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0180 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0181 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0182 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0183 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0184 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0185 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0186 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0187 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node))));


    while (true)
	

invariant (p0000 == (F#dll($s,$phys_ptr_cast(P#x,^d_node))));
invariant (p0001 == (F#dll($s,$phys_ptr_cast(L#prv,^d_node))));
invariant (p0002 == (F#dll($s,$phys_ptr_cast(L#curr,^d_node))));
invariant (p0003 == (F#dll($s,$phys_ptr_cast(L#res,^d_node))));
invariant (p0004 == (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))));
invariant (p0005 == (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))));
invariant (p0006 == (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))));
invariant (p0007 == (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))));
invariant (p0008 == (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))));
invariant (p0009 == (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))));
invariant (p0010 == (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))));
invariant (p0011 == (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))));
invariant (p0012 == (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))));
invariant (p0013 == (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))));
invariant (p0014 == (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))));
invariant (p0015 == (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))));
invariant (p0016 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0017 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0018 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0019 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0020 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0021 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0022 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0023 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0024 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0025 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0026 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0027 == ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0028 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0029 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0030 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0031 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0032 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0033 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0034 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0035 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0036 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0037 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0038 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0039 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0040 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0041 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0042 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0043 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0044 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0045 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0046 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0047 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0048 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0049 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0050 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0051 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0052 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0053 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0054 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0055 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0056 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0057 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0058 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0059 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0060 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0061 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0062 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0063 == ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0064 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0065 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0066 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0067 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0068 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0069 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0070 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0071 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0072 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)))));
invariant (p0073 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)))));
invariant (p0074 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0075 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0076 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0077 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)))));
invariant (p0078 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0079 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)))));
invariant (p0080 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0081 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0082 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0083 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)))));
invariant (p0084 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)))));
invariant (p0085 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)))));
invariant (p0086 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)))));
invariant (p0087 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0088 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0089 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)))));
invariant (p0090 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)))));
invariant (p0091 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)))));
invariant (p0092 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)))));
invariant (p0093 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0094 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0095 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0096 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)))));
invariant (p0097 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)))));
invariant (p0098 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)))));
invariant (p0099 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)))));
invariant (p0100 == ($non_null($phys_ptr_cast(P#x,^d_node))));
invariant (p0101 == ($non_null($phys_ptr_cast(L#prv,^d_node))));
invariant (p0102 == ($non_null($phys_ptr_cast(L#curr,^d_node))));
invariant (p0103 == ($non_null($phys_ptr_cast(L#res,^d_node))));
invariant (p0104 == ($is_null($phys_ptr_cast(P#x,^d_node))));
invariant (p0105 == ($is_null($phys_ptr_cast(L#prv,^d_node))));
invariant (p0106 == ($is_null($phys_ptr_cast(L#curr,^d_node))));
invariant (p0107 == ($is_null($phys_ptr_cast(L#res,^d_node))));
invariant (p0108 == (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
invariant (p0109 == (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
invariant (p0110 == (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node))));
invariant (p0111 == (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node))));
invariant (p0112 == (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
invariant (p0113 == (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node))));
invariant (p0114 == (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node))));
invariant (p0115 == (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
invariant (p0116 == (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node))));
invariant (p0117 == (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node))));
invariant (p0118 == (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
invariant (p0119 == (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
invariant (p0120 == (($non_null($phys_ptr_cast(P#x,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node)))));
invariant (p0121 == (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node)))));
invariant (p0122 == (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node)))));
invariant (p0123 == (($non_null($phys_ptr_cast(L#res,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node)))));
invariant (p0124 == (($non_null($phys_ptr_cast(P#x,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node)))));
invariant (p0125 == (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node)))));
invariant (p0126 == (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node)))));
invariant (p0127 == (($non_null($phys_ptr_cast(L#res,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node)))));
invariant (p0128 == (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0129 == (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0130 == (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0131 == (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0132 == (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0133 == (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0134 == (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0135 == (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0136 == (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0137 == (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0138 == (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0139 == (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0140 == ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)))))));
invariant (p0141 == ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)))))));
invariant (p0142 == ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)))))));
invariant (p0143 == ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)))))));
invariant (p0144 == ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)))))));
invariant (p0145 == ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)))))));
invariant (p0146 == ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)))))));
invariant (p0147 == ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)))))));
invariant (p0148 == ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)))))));
invariant (p0149 == ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)))))));
invariant (p0150 == ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)))))));
invariant (p0151 == ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)))))));
invariant (p0152 == ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)))))));
invariant (p0153 == ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)))))));
invariant (p0154 == ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)))))));
invariant (p0155 == ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)))))));
invariant (p0156 == ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)))))));
invariant (p0157 == ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)))))));
invariant (p0158 == ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)))))));
invariant (p0159 == ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)))))));
invariant (p0160 == ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)))))));
invariant (p0161 == ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)))))));
invariant (p0162 == ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)))))));
invariant (p0163 == ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)))))));
invariant (p0164 == (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0165 == (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0166 == (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0167 == (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0168 == (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0169 == (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0170 == (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0171 == (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0172 == (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0173 == (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0174 == (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0175 == (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0176 == (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0177 == (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0178 == (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0179 == (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node)))));
invariant (p0180 == (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0181 == (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0182 == (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node)))));
invariant (p0183 == (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0184 == (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0185 == (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node)))));
invariant (p0186 == (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node)))));
invariant (p0187 == (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node)))));

invariant my_inv (
p0000,
p0001,
p0002,
p0003,
p0004,
p0005,
p0006,
p0007,
p0008,
p0009,
p0010,
p0011,
p0012,
p0013,
p0014,
p0015,
p0016,
p0017,
p0018,
p0019,
p0020,
p0021,
p0022,
p0023,
p0024,
p0025,
p0026,
p0027,
p0028,
p0029,
p0030,
p0031,
p0032,
p0033,
p0034,
p0035,
p0036,
p0037,
p0038,
p0039,
p0040,
p0041,
p0042,
p0043,
p0044,
p0045,
p0046,
p0047,
p0048,
p0049,
p0050,
p0051,
p0052,
p0053,
p0054,
p0055,
p0056,
p0057,
p0058,
p0059,
p0060,
p0061,
p0062,
p0063,
p0064,
p0065,
p0066,
p0067,
p0068,
p0069,
p0070,
p0071,
p0072,
p0073,
p0074,
p0075,
p0076,
p0077,
p0078,
p0079,
p0080,
p0081,
p0082,
p0083,
p0084,
p0085,
p0086,
p0087,
p0088,
p0089,
p0090,
p0091,
p0092,
p0093,
p0094,
p0095,
p0096,
p0097,
p0098,
p0099,
p0100,
p0101,
p0102,
p0103,
p0104,
p0105,
p0106,
p0107,
p0108,
p0109,
p0110,
p0111,
p0112,
p0113,
p0114,
p0115,
p0116,
p0117,
p0118,
p0119,
p0120,
p0121,
p0122,
p0123,
p0124,
p0125,
p0126,
p0127,
p0128,
p0129,
p0130,
p0131,
p0132,
p0133,
p0134,
p0135,
p0136,
p0137,
p0138,
p0139,
p0140,
p0141,
p0142,
p0143,
p0144,
p0145,
p0146,
p0147,
p0148,
p0149,
p0150,
p0151,
p0152,
p0153,
p0154,
p0155,
p0156,
p0157,
p0158,
p0159,
p0160,
p0161,
p0162,
p0163,
p0164,
p0165,
p0166,
p0167,
p0168,
p0169,
p0170,
p0171,
p0172,
p0173,
p0174,
p0175,
p0176,
p0177,
p0178,
p0179,
p0180,
p0181,
p0182,
p0183,
p0184,
p0185,
p0186,
p0187,
true
);

  
	  invariant $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> $mutable($s, $phys_ptr_cast(L#prv, ^d_node));
      invariant $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#prv, ^d_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^d_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^d_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> $is_malloc_root($s, $phys_ptr_cast(L#curr, ^d_node));
    {
      anon222:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#26, $s);
        assume $full_stop_ext(#tok$3^13.3, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(curr)) ...
        if ($non_null($phys_ptr_cast(L#curr, ^d_node)))
        {
          anon220:
            // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
            assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
            assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
            assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg(res, prv), &&(dll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, dll_lseg_reach(*((res->next)), prv)))))); 
            assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == (F#dll_lseg($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node))));
            // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg_reach(res, prv), @_vcc_oset_union(dll_lseg_reach(*((res->next)), prv), @_vcc_oset_singleton(res)))); 
            assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg_reach($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
            // int32_t nondet; 
            // struct d_node* old_curr; 
            // old_curr := curr; 
            L#old_curr := $phys_ptr_cast(L#curr, ^d_node);
            // assert dll_lseg(old_curr, old_curr); 
            assert F#dll_lseg($s, $phys_ptr_cast(L#old_curr, ^d_node), $phys_ptr_cast(L#old_curr, ^d_node));
            // assume dll_lseg(old_curr, old_curr); 
            assume F#dll_lseg($s, $phys_ptr_cast(L#old_curr, ^d_node), $phys_ptr_cast(L#old_curr, ^d_node));
            // assert dll_lseg(prv, prv); 
            assert F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
            // assume dll_lseg(prv, prv); 
            assume F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
            // assert dll_lseg(curr, curr); 
            assert F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
            // assume dll_lseg(curr, curr); 
            assume F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
            // assert dll_lseg(res, res); 
            assert F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
            // assume dll_lseg(res, res); 
            assume F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
            // assert dll_lseg(x, x); 
            assert F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
            // assume dll_lseg(x, x); 
            assume F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
            // struct d_node* curr0; 
            // curr0 := curr; 
            SL#curr0 := $phys_ptr_cast(L#curr, ^d_node);
            // struct d_node* stmtexpr0#3; 
            // stmtexpr0#3 := curr0; 
            stmtexpr0#3 := $phys_ptr_cast(SL#curr0, ^d_node);
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_pure(curr, *((curr->next))), ==(dll_lseg(curr, *((curr->next))), &&(dll_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, dll_lseg_reach(*((curr->next)), *((curr->next)))))))); 
            assume $phys_ptr_cast(L#curr, ^d_node) != $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node) ==> F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) == (F#dll_lseg($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_pure(curr, *((curr->next))), ==(dll_lseg_reach(curr, *((curr->next))), @_vcc_oset_union(dll_lseg_reach(*((curr->next)), *((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $phys_ptr_cast(L#curr, ^d_node) != $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node) ==> F#dll_lseg_reach($s, $phys_ptr_cast(L#curr, ^d_node), $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) == $oset_union(F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
            // assert @reads_check_normal((curr->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#curr, ^d_node));
            // curr := *((curr->next)); 
            L#curr := $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node);
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^d_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^d_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), @_vcc_is_malloc_root(@state, curr)); 
            assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> $is_malloc_root($s, $phys_ptr_cast(L#curr, ^d_node));
            // var int32_t nondet
            // _Bool ite#1; 
            // ite#1 := (_Bool)nondet; 
            ite#1 := $int_to_bool(L#nondet);
            assume true;
            // if (ite#1) ...
            if (ite#1)
            {
              anon217:
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll(curr0), &&(&&(dll(*((curr0->next))), ==>(@_vcc_ptr_neq_null(*((curr0->next))), @_vcc_ptr_eq_pure(*((*((curr0->next))->prev)), curr0))), unchecked!(@_vcc_oset_in(curr0, dll_reach(*((curr0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#curr0, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll_reach(curr0), @_vcc_oset_union(dll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#curr0, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
                assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
                assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
                assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
                assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
                assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
                assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg(res, prv), &&(dll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, dll_lseg_reach(*((res->next)), prv)))))); 
                assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == (F#dll_lseg($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node))));
                // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg_reach(res, prv), @_vcc_oset_union(dll_lseg_reach(*((res->next)), prv), @_vcc_oset_singleton(res)))); 
                assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg_reach($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                assume true;
                // if (@_vcc_ptr_neq_null(prv)) ...
                if ($non_null($phys_ptr_cast(L#prv, ^d_node)))
                {
                  anon215:
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll(curr0), &&(&&(dll(*((curr0->next))), ==>(@_vcc_ptr_neq_null(*((curr0->next))), @_vcc_ptr_eq_pure(*((*((curr0->next))->prev)), curr0))), unchecked!(@_vcc_oset_in(curr0, dll_reach(*((curr0->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#curr0, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll_reach(curr0), @_vcc_oset_union(dll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#curr0, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
                    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg(res, prv), &&(dll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, dll_lseg_reach(*((res->next)), prv)))))); 
                    assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == (F#dll_lseg($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg_reach(res, prv), @_vcc_oset_union(dll_lseg_reach(*((res->next)), prv), @_vcc_oset_singleton(res)))); 
                    assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg_reach($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                    // struct d_node* old_curr_next; 
                    // struct d_node* old_curr1; 
                    // old_curr1 := old_curr; 
                    SL#old_curr1 := $phys_ptr_cast(L#old_curr, ^d_node);
                    // struct d_node* stmtexpr0#4; 
                    // stmtexpr0#4 := old_curr1; 
                    stmtexpr0#4 := $phys_ptr_cast(SL#old_curr1, ^d_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                    // assert @reads_check_normal((old_curr->next)); 
                    assert $thread_local($s, $phys_ptr_cast(L#old_curr, ^d_node));
                    // old_curr_next := *((old_curr->next)); 
                    L#old_curr_next := $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(dll(old_curr_next), &&(&&(dll(*((old_curr_next->next))), ==>(@_vcc_ptr_neq_null(*((old_curr_next->next))), @_vcc_ptr_eq_pure(*((*((old_curr_next->next))->prev)), old_curr_next))), unchecked!(@_vcc_oset_in(old_curr_next, dll_reach(*((old_curr_next->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr_next, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr_next, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(dll_reach(old_curr_next), @_vcc_oset_union(dll_reach(*((old_curr_next->next))), @_vcc_oset_singleton(old_curr_next)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr_next, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr_next, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                    // _math \state _dryad_S0; 
                    // _dryad_S0 := @_vcc_current_state(@state); 
                    SL#_dryad_S0 := $current_state($s);
                    // _math \state stmtexpr1#5; 
                    // stmtexpr1#5 := _dryad_S0; 
                    stmtexpr1#5 := SL#_dryad_S0;
                    // assert @prim_writes_check((prv->next)); 
                    assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#prv, ^d_node), d_node.next));
                    // *(prv->next) := old_curr_next; 
                    call $write_int(d_node.next, $phys_ptr_cast(L#prv, ^d_node), $ptr_to_int($phys_ptr_cast(L#old_curr_next, ^d_node)));
                    assume $full_stop_ext(#tok$3^33.9, $s);
                    // _math \state _dryad_S1; 
                    // _dryad_S1 := @_vcc_current_state(@state); 
                    SL#_dryad_S1 := $current_state($s);
                    // _math \state stmtexpr2#6; 
                    // stmtexpr2#6 := _dryad_S1; 
                    stmtexpr2#6 := SL#_dryad_S1;
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(*((prv->prev)))))), ==(old(_dryad_S0, dll(*((prv->prev)))), old(_dryad_S1, dll(*((prv->prev)))))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node))) ==> F#dll(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) == F#dll(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S1, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(*((prv->prev)))))), ==(old(_dryad_S0, dll_reach(*((prv->prev)))), old(_dryad_S1, dll_reach(*((prv->prev)))))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) == F#dll_reach(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S1, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(old_curr1)))), ==(old(_dryad_S0, dll(old_curr1)), old(_dryad_S1, dll(old_curr1)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(SL#old_curr1, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(old_curr1)))), ==(old(_dryad_S0, dll_reach(old_curr1)), old(_dryad_S1, dll_reach(old_curr1)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(SL#old_curr1, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(old_curr_next)))), ==(old(_dryad_S0, dll(old_curr_next)), old(_dryad_S1, dll(old_curr_next)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(L#old_curr_next, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(old_curr_next)))), ==(old(_dryad_S0, dll_reach(old_curr_next)), old(_dryad_S1, dll_reach(old_curr_next)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(L#old_curr_next, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(curr0)))), ==(old(_dryad_S0, dll(curr0)), old(_dryad_S1, dll(curr0)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(SL#curr0, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(curr0)))), ==(old(_dryad_S0, dll_reach(curr0)), old(_dryad_S1, dll_reach(curr0)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(SL#curr0, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(old_curr)))), ==(old(_dryad_S0, dll(old_curr)), old(_dryad_S1, dll(old_curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(L#old_curr, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(old_curr)))), ==(old(_dryad_S0, dll_reach(old_curr)), old(_dryad_S1, dll_reach(old_curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(L#old_curr, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(curr)))), ==(old(_dryad_S0, dll(curr)), old(_dryad_S1, dll(curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(curr)))), ==(old(_dryad_S0, dll_reach(curr)), old(_dryad_S1, dll_reach(curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(res)))), ==(old(_dryad_S0, dll(res)), old(_dryad_S1, dll(res)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(L#res, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(res)))), ==(old(_dryad_S0, dll_reach(res)), old(_dryad_S1, dll_reach(res)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(L#res, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(x)))), ==(old(_dryad_S0, dll(x)), old(_dryad_S1, dll(x)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(P#x, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(P#x, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_reach(x)))), ==(old(_dryad_S0, dll_reach(x)), old(_dryad_S1, dll_reach(x)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_lseg_reach(res, prv)))), ==(old(_dryad_S0, dll_lseg(res, prv)), old(_dryad_S1, dll_lseg(res, prv)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_lseg(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == F#dll_lseg(SL#_dryad_S1, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, dll_lseg_reach(res, prv)))), ==(old(_dryad_S0, dll_lseg_reach(res, prv)), old(_dryad_S1, dll_lseg_reach(res, prv)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == F#dll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr1)), @_vcc_ptr_eq_pure(*((old_curr1->prev)), old(_dryad_S0, *((old_curr1->prev))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(SL#old_curr1, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr1)), @_vcc_ptr_eq_pure(*((old_curr1->next)), old(_dryad_S0, *((old_curr1->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(SL#old_curr1, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr_next)), @_vcc_ptr_eq_pure(*((old_curr_next->prev)), old(_dryad_S0, *((old_curr_next->prev))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#old_curr_next, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr_next)), @_vcc_ptr_eq_pure(*((old_curr_next->next)), old(_dryad_S0, *((old_curr_next->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#old_curr_next, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr0)), @_vcc_ptr_eq_pure(*((curr0->prev)), old(_dryad_S0, *((curr0->prev))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S0, *((curr0->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr)), @_vcc_ptr_eq_pure(*((old_curr->prev)), old(_dryad_S0, *((old_curr->prev))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr)), @_vcc_ptr_eq_pure(*((old_curr->next)), old(_dryad_S0, *((old_curr->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr)), @_vcc_ptr_eq_pure(*((curr->prev)), old(_dryad_S0, *((curr->prev))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#curr, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S0, *((curr->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, res)), @_vcc_ptr_eq_pure(*((res->prev)), old(_dryad_S0, *((res->prev))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#res, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#res, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(L#res, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, res)), @_vcc_ptr_eq_pure(*((res->next)), old(_dryad_S0, *((res->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(L#res, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, x)), @_vcc_ptr_eq_pure(*((x->prev)), old(_dryad_S0, *((x->prev))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(P#x, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(P#x, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.prev, $phys_ptr_cast(P#x, ^d_node), ^d_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, x)), @_vcc_ptr_eq_pure(*((x->next)), old(_dryad_S0, *((x->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^d_node) == $phys_ptr_cast(P#x, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S0, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr1), ==(dll(old_curr1), &&(&&(dll(*((old_curr1->next))), ==>(@_vcc_ptr_neq_null(*((old_curr1->next))), @_vcc_ptr_eq_pure(*((*((old_curr1->next))->prev)), old_curr1))), unchecked!(@_vcc_oset_in(old_curr1, dll_reach(*((old_curr1->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#old_curr1, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#old_curr1, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#old_curr1, ^d_node)) && !$oset_in($phys_ptr_cast(SL#old_curr1, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr1), ==(dll_reach(old_curr1), @_vcc_oset_union(dll_reach(*((old_curr1->next))), @_vcc_oset_singleton(old_curr1)))); 
                    assume $non_null($phys_ptr_cast(SL#old_curr1, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#old_curr1, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#old_curr1, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(dll(old_curr_next), &&(&&(dll(*((old_curr_next->next))), ==>(@_vcc_ptr_neq_null(*((old_curr_next->next))), @_vcc_ptr_eq_pure(*((*((old_curr_next->next))->prev)), old_curr_next))), unchecked!(@_vcc_oset_in(old_curr_next, dll_reach(*((old_curr_next->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr_next, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr_next, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(dll_reach(old_curr_next), @_vcc_oset_union(dll_reach(*((old_curr_next->next))), @_vcc_oset_singleton(old_curr_next)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr_next, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr_next, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll(curr0), &&(&&(dll(*((curr0->next))), ==>(@_vcc_ptr_neq_null(*((curr0->next))), @_vcc_ptr_eq_pure(*((*((curr0->next))->prev)), curr0))), unchecked!(@_vcc_oset_in(curr0, dll_reach(*((curr0->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#curr0, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll_reach(curr0), @_vcc_oset_union(dll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#curr0, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
                    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(dll(old_curr_next), &&(&&(dll(*((old_curr_next->next))), ==>(@_vcc_ptr_neq_null(*((old_curr_next->next))), @_vcc_ptr_eq_pure(*((*((old_curr_next->next))->prev)), old_curr_next))), unchecked!(@_vcc_oset_in(old_curr_next, dll_reach(*((old_curr_next->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr_next, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr_next, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(dll_reach(old_curr_next), @_vcc_oset_union(dll_reach(*((old_curr_next->next))), @_vcc_oset_singleton(old_curr_next)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr_next, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr_next, ^d_node)));
                    assume true;
                    // if (@_vcc_ptr_neq_null(old_curr_next)) ...
                    if ($non_null($phys_ptr_cast(L#old_curr_next, ^d_node)))
                    {
                      anon213:
                        // _math \state _dryad_S2; 
                        // _dryad_S2 := @_vcc_current_state(@state); 
                        SL#_dryad_S2 := $current_state($s);
                        // _math \state stmtexpr0#7; 
                        // stmtexpr0#7 := _dryad_S2; 
                        stmtexpr0#7 := SL#_dryad_S2;
                        // assert @prim_writes_check((old_curr_next->prev)); 
                        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#old_curr_next, ^d_node), d_node.prev));
                        // *(old_curr_next->prev) := prv; 
                        call $write_int(d_node.prev, $phys_ptr_cast(L#old_curr_next, ^d_node), $ptr_to_int($phys_ptr_cast(L#prv, ^d_node)));
                        assume $full_stop_ext(#tok$3^35.11, $s);
                        // _math \state _dryad_S3; 
                        // _dryad_S3 := @_vcc_current_state(@state); 
                        SL#_dryad_S3 := $current_state($s);
                        // _math \state stmtexpr1#8; 
                        // stmtexpr1#8 := _dryad_S3; 
                        stmtexpr1#8 := SL#_dryad_S3;
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(*((old_curr_next->next)))))), ==(old(_dryad_S2, dll(*((old_curr_next->next)))), old(_dryad_S3, dll(*((old_curr_next->next)))))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node))) ==> F#dll(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) == F#dll(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(*((old_curr_next->next)))))), ==(old(_dryad_S2, dll_reach(*((old_curr_next->next)))), old(_dryad_S3, dll_reach(*((old_curr_next->next)))))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node)) == F#dll_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, d_node.next, $phys_ptr_cast(L#old_curr_next, ^d_node), ^d_node));
                        // assume ==(old(_dryad_S2, dll(old_curr_next)), old(_dryad_S3, dll(old_curr_next))); 
                        assume F#dll(SL#_dryad_S2, $phys_ptr_cast(L#old_curr_next, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(L#old_curr_next, ^d_node));
                        // assume ==(old(_dryad_S2, dll_reach(old_curr_next)), old(_dryad_S3, dll_reach(old_curr_next))); 
                        assume F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#old_curr_next, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(L#old_curr_next, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(old_curr1)))), ==(old(_dryad_S2, dll(old_curr1)), old(_dryad_S3, dll(old_curr1)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#old_curr1, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(SL#old_curr1, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(SL#old_curr1, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(old_curr1)))), ==(old(_dryad_S2, dll_reach(old_curr1)), old(_dryad_S3, dll_reach(old_curr1)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#old_curr1, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#old_curr1, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#old_curr1, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(curr0)))), ==(old(_dryad_S2, dll(curr0)), old(_dryad_S3, dll(curr0)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(curr0)))), ==(old(_dryad_S2, dll_reach(curr0)), old(_dryad_S3, dll_reach(curr0)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(old_curr)))), ==(old(_dryad_S2, dll(old_curr)), old(_dryad_S3, dll(old_curr)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#old_curr, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(L#old_curr, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(L#old_curr, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(old_curr)))), ==(old(_dryad_S2, dll_reach(old_curr)), old(_dryad_S3, dll_reach(old_curr)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#old_curr, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#old_curr, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(L#old_curr, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(prv)))), ==(old(_dryad_S2, dll(prv)), old(_dryad_S3, dll(prv)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(L#prv, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(L#prv, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(prv)))), ==(old(_dryad_S2, dll_reach(prv)), old(_dryad_S3, dll_reach(prv)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#prv, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(L#prv, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(curr)))), ==(old(_dryad_S2, dll(curr)), old(_dryad_S3, dll(curr)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(curr)))), ==(old(_dryad_S2, dll_reach(curr)), old(_dryad_S3, dll_reach(curr)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(res)))), ==(old(_dryad_S2, dll(res)), old(_dryad_S3, dll(res)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(L#res, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(res)))), ==(old(_dryad_S2, dll_reach(res)), old(_dryad_S3, dll_reach(res)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(L#res, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(x)))), ==(old(_dryad_S2, dll(x)), old(_dryad_S3, dll(x)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(P#x, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(P#x, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(P#x, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_reach(x)))), ==(old(_dryad_S2, dll_reach(x)), old(_dryad_S3, dll_reach(x)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(P#x, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(P#x, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(P#x, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_lseg_reach(res, prv)))), ==(old(_dryad_S2, dll_lseg(res, prv)), old(_dryad_S3, dll_lseg(res, prv)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_lseg(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == F#dll_lseg(SL#_dryad_S3, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
                        // assume ==>(unchecked!(@_vcc_oset_in(old_curr_next, old(_dryad_S2, dll_lseg_reach(res, prv)))), ==(old(_dryad_S2, dll_lseg_reach(res, prv)), old(_dryad_S3, dll_lseg_reach(res, prv)))); 
                        assume !$oset_in($phys_ptr_cast(L#old_curr_next, ^d_node), F#dll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == F#dll_lseg_reach(SL#_dryad_S3, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, old_curr1)), @_vcc_ptr_eq_pure(*((old_curr1->prev)), old(_dryad_S2, *((old_curr1->prev))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(SL#old_curr1, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, old_curr1)), @_vcc_ptr_eq_pure(*((old_curr1->next)), old(_dryad_S2, *((old_curr1->next))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(SL#old_curr1, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, curr0)), @_vcc_ptr_eq_pure(*((curr0->prev)), old(_dryad_S2, *((curr0->prev))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S2, *((curr0->next))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, old_curr)), @_vcc_ptr_eq_pure(*((old_curr->prev)), old(_dryad_S2, *((old_curr->prev))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, old_curr)), @_vcc_ptr_eq_pure(*((old_curr->next)), old(_dryad_S2, *((old_curr->next))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, prv)), @_vcc_ptr_eq_pure(*((prv->prev)), old(_dryad_S2, *((prv->prev))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#prv, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, prv)), @_vcc_ptr_eq_pure(*((prv->next)), old(_dryad_S2, *((prv->next))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, curr)), @_vcc_ptr_eq_pure(*((curr->prev)), old(_dryad_S2, *((curr->prev))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#curr, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S2, *((curr->next))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, res)), @_vcc_ptr_eq_pure(*((res->prev)), old(_dryad_S2, *((res->prev))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#res, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#res, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#res, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, res)), @_vcc_ptr_eq_pure(*((res->next)), old(_dryad_S2, *((res->next))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(L#res, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, x)), @_vcc_ptr_eq_pure(*((x->prev)), old(_dryad_S2, *((x->prev))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(P#x, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(P#x, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(P#x, ^d_node), ^d_node);
                        // assume ==>(!(@_vcc_ptr_eq_pure(old_curr_next, x)), @_vcc_ptr_eq_pure(*((x->next)), old(_dryad_S2, *((x->next))))); 
                        assume !($phys_ptr_cast(L#old_curr_next, ^d_node) == $phys_ptr_cast(P#x, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node);
                        // assume ==>(@_vcc_ptr_neq_null(old_curr1), ==(dll(old_curr1), &&(&&(dll(*((old_curr1->next))), ==>(@_vcc_ptr_neq_null(*((old_curr1->next))), @_vcc_ptr_eq_pure(*((*((old_curr1->next))->prev)), old_curr1))), unchecked!(@_vcc_oset_in(old_curr1, dll_reach(*((old_curr1->next)))))))); 
                        assume $non_null($phys_ptr_cast(SL#old_curr1, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#old_curr1, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#old_curr1, ^d_node)) && !$oset_in($phys_ptr_cast(SL#old_curr1, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(old_curr1), ==(dll_reach(old_curr1), @_vcc_oset_union(dll_reach(*((old_curr1->next))), @_vcc_oset_singleton(old_curr1)))); 
                        assume $non_null($phys_ptr_cast(SL#old_curr1, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#old_curr1, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#old_curr1, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#old_curr1, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll(curr0), &&(&&(dll(*((curr0->next))), ==>(@_vcc_ptr_neq_null(*((curr0->next))), @_vcc_ptr_eq_pure(*((*((curr0->next))->prev)), curr0))), unchecked!(@_vcc_oset_in(curr0, dll_reach(*((curr0->next)))))))); 
                        assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#curr0, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll_reach(curr0), @_vcc_oset_union(dll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
                        assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#curr0, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                        assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                        assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
                        assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
                        assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
                        assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                        assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
                        assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
                        assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
                        assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
                        assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
                        assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
                        assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
                        // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg(res, prv), &&(dll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, dll_lseg_reach(*((res->next)), prv)))))); 
                        assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == (F#dll_lseg($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node))));
                        // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg_reach(res, prv), @_vcc_oset_union(dll_lseg_reach(*((res->next)), prv), @_vcc_oset_singleton(res)))); 
                        assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg_reach($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                    }
                    else
                    {
                      anon214:
                        // assert @_vcc_possibly_unreachable; 
                        assert {:PossiblyUnreachable true} true;
                    }
                }
                else
                {
                  anon216:
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll(curr0), &&(&&(dll(*((curr0->next))), ==>(@_vcc_ptr_neq_null(*((curr0->next))), @_vcc_ptr_eq_pure(*((*((curr0->next))->prev)), curr0))), unchecked!(@_vcc_oset_in(curr0, dll_reach(*((curr0->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#curr0, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll_reach(curr0), @_vcc_oset_union(dll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#curr0, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
                    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg(res, prv), &&(dll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, dll_lseg_reach(*((res->next)), prv)))))); 
                    assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == (F#dll_lseg($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg_reach(res, prv), @_vcc_oset_union(dll_lseg_reach(*((res->next)), prv), @_vcc_oset_singleton(res)))); 
                    assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg_reach($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                    // struct d_node* old_curr1#0; 
                    // old_curr1#0 := old_curr; 
                    old_curr1#0 := $phys_ptr_cast(L#old_curr, ^d_node);
                    // struct d_node* stmtexpr0#9; 
                    // stmtexpr0#9 := old_curr1#0; 
                    stmtexpr0#9 := $phys_ptr_cast(old_curr1#0, ^d_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                    // assert @reads_check_normal((old_curr->next)); 
                    assert $thread_local($s, $phys_ptr_cast(L#old_curr, ^d_node));
                    // res := *((old_curr->next)); 
                    L#res := $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node);
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
                    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                }

              anon218:
                // _math \state _dryad_S0#1; 
                // _dryad_S0#1 := @_vcc_current_state(@state); 
                _dryad_S0#1 := $current_state($s);
                // _math \state stmtexpr0#10; 
                // stmtexpr0#10 := _dryad_S0#1; 
                stmtexpr0#10 := _dryad_S0#1;
                // void function
                // assert @writes_check(old_curr); 
                assert $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#old_curr, ^d_node));
                // assert @writes_check(@_vcc_extent(@state, old_curr)); 
                assert (forall #writes$3^40.7: $ptr :: { $dont_instantiate(#writes$3^40.7) } $set_in(#writes$3^40.7, $extent($s, $phys_ptr_cast(L#old_curr, ^d_node))) ==> $top_writable($s, #wrTime$3^3.3, #writes$3^40.7));
                // stmt _vcc_free(old_curr); 
                call $free($phys_ptr_cast(L#old_curr, ^d_node));
                assume $full_stop_ext(#tok$3^40.7, $s);
                // _math \state _dryad_S1#2; 
                // _dryad_S1#2 := @_vcc_current_state(@state); 
                _dryad_S1#2 := $current_state($s);
                // _math \state stmtexpr1#11; 
                // stmtexpr1#11 := _dryad_S1#2; 
                stmtexpr1#11 := _dryad_S1#2;
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(curr0)))), ==(old(_dryad_S0#1, dll(curr0)), old(_dryad_S1#2, dll(curr0)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^d_node))) ==> F#dll(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^d_node)) == F#dll(_dryad_S1#2, $phys_ptr_cast(SL#curr0, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(curr0)))), ==(old(_dryad_S0#1, dll_reach(curr0)), old(_dryad_S1#2, dll_reach(curr0)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^d_node))) ==> F#dll_reach(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^d_node)) == F#dll_reach(_dryad_S1#2, $phys_ptr_cast(SL#curr0, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(prv)))), ==(old(_dryad_S0#1, dll(prv)), old(_dryad_S1#2, dll(prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll(_dryad_S0#1, $phys_ptr_cast(L#prv, ^d_node)) == F#dll(_dryad_S1#2, $phys_ptr_cast(L#prv, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(prv)))), ==(old(_dryad_S0#1, dll_reach(prv)), old(_dryad_S1#2, dll_reach(prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#prv, ^d_node)) == F#dll_reach(_dryad_S1#2, $phys_ptr_cast(L#prv, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(curr)))), ==(old(_dryad_S0#1, dll(curr)), old(_dryad_S1#2, dll(curr)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#curr, ^d_node))) ==> F#dll(_dryad_S0#1, $phys_ptr_cast(L#curr, ^d_node)) == F#dll(_dryad_S1#2, $phys_ptr_cast(L#curr, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(curr)))), ==(old(_dryad_S0#1, dll_reach(curr)), old(_dryad_S1#2, dll_reach(curr)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#curr, ^d_node))) ==> F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#curr, ^d_node)) == F#dll_reach(_dryad_S1#2, $phys_ptr_cast(L#curr, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(res)))), ==(old(_dryad_S0#1, dll(res)), old(_dryad_S1#2, dll(res)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node))) ==> F#dll(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node)) == F#dll(_dryad_S1#2, $phys_ptr_cast(L#res, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(res)))), ==(old(_dryad_S0#1, dll_reach(res)), old(_dryad_S1#2, dll_reach(res)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node))) ==> F#dll_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node)) == F#dll_reach(_dryad_S1#2, $phys_ptr_cast(L#res, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(x)))), ==(old(_dryad_S0#1, dll(x)), old(_dryad_S1#2, dll(x)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(P#x, ^d_node))) ==> F#dll(_dryad_S0#1, $phys_ptr_cast(P#x, ^d_node)) == F#dll(_dryad_S1#2, $phys_ptr_cast(P#x, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_reach(x)))), ==(old(_dryad_S0#1, dll_reach(x)), old(_dryad_S1#2, dll_reach(x)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach(_dryad_S0#1, $phys_ptr_cast(P#x, ^d_node))) ==> F#dll_reach(_dryad_S0#1, $phys_ptr_cast(P#x, ^d_node)) == F#dll_reach(_dryad_S1#2, $phys_ptr_cast(P#x, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_lseg_reach(res, prv)))), ==(old(_dryad_S0#1, dll_lseg(res, prv)), old(_dryad_S1#2, dll_lseg(res, prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_lseg(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == F#dll_lseg(_dryad_S1#2, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, dll_lseg_reach(res, prv)))), ==(old(_dryad_S0#1, dll_lseg_reach(res, prv)), old(_dryad_S1#2, dll_lseg_reach(res, prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node))) ==> F#dll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == F#dll_lseg_reach(_dryad_S1#2, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
            }
            else
            {
              anon219:
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll(curr0), &&(&&(dll(*((curr0->next))), ==>(@_vcc_ptr_neq_null(*((curr0->next))), @_vcc_ptr_eq_pure(*((*((curr0->next))->prev)), curr0))), unchecked!(@_vcc_oset_in(curr0, dll_reach(*((curr0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll($s, $phys_ptr_cast(SL#curr0, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(SL#curr0, ^d_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(dll_reach(curr0), @_vcc_oset_union(dll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(SL#curr0, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SL#curr0, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll(old_curr), &&(&&(dll(*((old_curr->next))), ==>(@_vcc_ptr_neq_null(*((old_curr->next))), @_vcc_ptr_eq_pure(*((*((old_curr->next))->prev)), old_curr))), unchecked!(@_vcc_oset_in(old_curr, dll_reach(*((old_curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#old_curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#old_curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(dll_reach(old_curr), @_vcc_oset_union(dll_reach(*((old_curr->next))), @_vcc_oset_singleton(old_curr)))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#old_curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#old_curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#old_curr, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
                assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
                assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
                assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
                assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
                assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
                assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
                // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg(res, prv), &&(dll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, dll_lseg_reach(*((res->next)), prv)))))); 
                assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == (F#dll_lseg($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node))));
                // assume ==>(@_vcc_ptr_neq_pure(res, prv), ==(dll_lseg_reach(res, prv), @_vcc_oset_union(dll_lseg_reach(*((res->next)), prv), @_vcc_oset_singleton(res)))); 
                assume $phys_ptr_cast(L#res, ^d_node) != $phys_ptr_cast(L#prv, ^d_node) ==> F#dll_lseg_reach($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_lseg_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), $phys_ptr_cast(L#prv, ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
                // prv := old_curr; 
                L#prv := $phys_ptr_cast(L#old_curr, ^d_node);
                // assert dll_lseg(curr0, curr0); 
                assert F#dll_lseg($s, $phys_ptr_cast(SL#curr0, ^d_node), $phys_ptr_cast(SL#curr0, ^d_node));
                // assume dll_lseg(curr0, curr0); 
                assume F#dll_lseg($s, $phys_ptr_cast(SL#curr0, ^d_node), $phys_ptr_cast(SL#curr0, ^d_node));
                // assert dll_lseg(old_curr, old_curr); 
                assert F#dll_lseg($s, $phys_ptr_cast(L#old_curr, ^d_node), $phys_ptr_cast(L#old_curr, ^d_node));
                // assume dll_lseg(old_curr, old_curr); 
                assume F#dll_lseg($s, $phys_ptr_cast(L#old_curr, ^d_node), $phys_ptr_cast(L#old_curr, ^d_node));
                // assert dll_lseg(prv, prv); 
                assert F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
                // assume dll_lseg(prv, prv); 
                assume F#dll_lseg($s, $phys_ptr_cast(L#prv, ^d_node), $phys_ptr_cast(L#prv, ^d_node));
                // assert dll_lseg(curr, curr); 
                assert F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
                // assume dll_lseg(curr, curr); 
                assume F#dll_lseg($s, $phys_ptr_cast(L#curr, ^d_node), $phys_ptr_cast(L#curr, ^d_node));
                // assert dll_lseg(res, res); 
                assert F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
                // assume dll_lseg(res, res); 
                assume F#dll_lseg($s, $phys_ptr_cast(L#res, ^d_node), $phys_ptr_cast(L#res, ^d_node));
                // assert dll_lseg(x, x); 
                assert F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
                // assume dll_lseg(x, x); 
                assume F#dll_lseg($s, $phys_ptr_cast(P#x, ^d_node), $phys_ptr_cast(P#x, ^d_node));
            }
        }
        else
        {
          anon221:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_2; 
            goto #break_2;
        }

      #continue_2:
        assume true;
		
p0000 := (F#dll($s,$phys_ptr_cast(P#x,^d_node)));
p0001 := (F#dll($s,$phys_ptr_cast(L#prv,^d_node)));
p0002 := (F#dll($s,$phys_ptr_cast(L#curr,^d_node)));
p0003 := (F#dll($s,$phys_ptr_cast(L#res,^d_node)));
p0004 := (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)));
p0005 := (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)));
p0006 := (F#dll_lseg($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)));
p0007 := (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)));
p0008 := (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)));
p0009 := (F#dll_lseg($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)));
p0010 := (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)));
p0011 := (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)));
p0012 := (F#dll_lseg($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)));
p0013 := (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)));
p0014 := (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)));
p0015 := (F#dll_lseg($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)));
p0016 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0017 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0018 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0019 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0020 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0021 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0022 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0023 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0024 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0025 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0026 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0027 := ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0028 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0029 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0030 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0031 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0032 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0033 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0034 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0035 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0036 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0037 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0038 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0039 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0040 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0041 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0042 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0043 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0044 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0045 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0046 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0047 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0048 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0049 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0050 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0051 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0052 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0053 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0054 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0055 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0056 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0057 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0058 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0059 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0060 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0061 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0062 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0063 := ($oset_disjoint(F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#res,^d_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(P#x,^d_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#prv,^d_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_reach($s,$phys_ptr_cast(L#curr,^d_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^d_node)),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))));
p0100 := ($non_null($phys_ptr_cast(P#x,^d_node)));
p0101 := ($non_null($phys_ptr_cast(L#prv,^d_node)));
p0102 := ($non_null($phys_ptr_cast(L#curr,^d_node)));
p0103 := ($non_null($phys_ptr_cast(L#res,^d_node)));
p0104 := ($is_null($phys_ptr_cast(P#x,^d_node)));
p0105 := ($is_null($phys_ptr_cast(L#prv,^d_node)));
p0106 := ($is_null($phys_ptr_cast(L#curr,^d_node)));
p0107 := ($is_null($phys_ptr_cast(L#res,^d_node)));
p0108 := (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node)));
p0109 := (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node)));
p0110 := (($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node)));
p0111 := (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node)));
p0112 := (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node)));
p0113 := (($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node)));
p0114 := (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node)));
p0115 := (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node)));
p0116 := (($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node)));
p0117 := (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node)));
p0118 := (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node)));
p0119 := (($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node)));
p0120 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node))));
p0121 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node))));
p0122 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node))));
p0123 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> $non_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node))));
p0124 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node))));
p0125 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node))));
p0126 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node))));
p0127 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> $is_null($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node))));
p0128 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0129 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0130 := (($non_null($phys_ptr_cast(P#x,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(P#x,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0131 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0132 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0133 := (($non_null($phys_ptr_cast(L#prv,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#prv,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0134 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0135 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0136 := (($non_null($phys_ptr_cast(L#curr,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#curr,^d_node),^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0137 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0138 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0139 := (($non_null($phys_ptr_cast(L#res,^d_node)) ==> ($rd_phys_ptr($s,d_node.next,$phys_ptr_cast(L#res,^d_node),^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#x,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#prv,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#res,^d_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#curr,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#res,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(P#x,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#prv,^d_node),$phys_ptr_cast(L#curr,^d_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(P#x,^d_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(L#res,^d_node),F#dll_lseg_reach($s,$phys_ptr_cast(L#curr,^d_node),$phys_ptr_cast(L#prv,^d_node))))));
p0164 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0165 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0166 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0167 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0168 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0169 := (($is_null($phys_ptr_cast(P#x,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0170 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0171 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0172 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0173 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0174 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0175 := (($is_null($phys_ptr_cast(L#prv,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0176 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0177 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0178 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0179 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#res,^d_node))));
p0180 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0181 := (($is_null($phys_ptr_cast(L#curr,^d_node)) ==> ($phys_ptr_cast(L#res,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0182 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#prv,^d_node))));
p0183 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(P#x,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0184 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0185 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#prv,^d_node) == $phys_ptr_cast(L#curr,^d_node))));
p0186 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(P#x,^d_node))));
p0187 := (($is_null($phys_ptr_cast(L#res,^d_node)) ==> ($phys_ptr_cast(L#curr,^d_node) == $phys_ptr_cast(L#prv,^d_node))));

    }

  anon224:
    assume $full_stop_ext(#tok$3^13.3, $s);

  #break_2:
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll(prv), &&(&&(dll(*((prv->next))), ==>(@_vcc_ptr_neq_null(*((prv->next))), @_vcc_ptr_eq_pure(*((*((prv->next))->prev)), prv))), unchecked!(@_vcc_oset_in(prv, dll_reach(*((prv->next)))))))); 
    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#prv, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#prv, ^d_node)) && !$oset_in($phys_ptr_cast(L#prv, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(dll_reach(prv), @_vcc_oset_union(dll_reach(*((prv->next))), @_vcc_oset_singleton(prv)))); 
    assume $non_null($phys_ptr_cast(L#prv, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#prv, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#prv, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#prv, ^d_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll(curr), &&(&&(dll(*((curr->next))), ==>(@_vcc_ptr_neq_null(*((curr->next))), @_vcc_ptr_eq_pure(*((*((curr->next))->prev)), curr))), unchecked!(@_vcc_oset_in(curr, dll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#curr, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#curr, ^d_node)) && !$oset_in($phys_ptr_cast(L#curr, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(dll_reach(curr), @_vcc_oset_union(dll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#curr, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#curr, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#curr, ^d_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll(res), &&(&&(dll(*((res->next))), ==>(@_vcc_ptr_neq_null(*((res->next))), @_vcc_ptr_eq_pure(*((*((res->next))->prev)), res))), unchecked!(@_vcc_oset_in(res, dll_reach(*((res->next)))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#res, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#res, ^d_node)) && !$oset_in($phys_ptr_cast(L#res, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(dll_reach(res), @_vcc_oset_union(dll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#res, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#res, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#res, ^d_node)));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll(x), &&(&&(dll(*((x->next))), ==>(@_vcc_ptr_neq_null(*((x->next))), @_vcc_ptr_eq_pure(*((*((x->next))->prev)), x))), unchecked!(@_vcc_oset_in(x, dll_reach(*((x->next)))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll($s, $phys_ptr_cast(P#x, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(P#x, ^d_node)) && !$oset_in($phys_ptr_cast(P#x, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(dll_reach(x), @_vcc_oset_union(dll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(P#x, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(P#x, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(P#x, ^d_node)));
    // return res; 
    $result := $phys_ptr_cast(L#res, ^d_node);
    assume true;
    assert $position_marker();
    goto #exit;

  anon225:
    // skip

  #exit:
}



const unique l#public: $label;

const unique #tok$3^40.7: $token;

const unique #tok$3^35.11: $token;

const unique #tok$3^33.9: $token;

const unique #tok$3^13.3: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^3.3: $token;

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cgrass?5Cdl_filter.c: $token;

axiom $file_name_is(3, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cgrass?5Cdl_filter.c);

const unique #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cgrass?5Cdryad_dl.h: $token;

axiom $file_name_is(2, #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cgrass?5Cdryad_dl.h);

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^d_node);

