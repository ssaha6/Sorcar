
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

const unique ^s_node: $ctype;

axiom $is_span_sequential(^s_node);

axiom $def_struct_type(^s_node, 16, false, false);

axiom (forall #s1: $state, #s2: $state, #p: $ptr :: { $inv2(#s1, #s2, #p, ^s_node) } $inv2(#s1, #s2, #p, ^s_node) == $set_eq($owns(#s2, #p), $set_empty()));

axiom (forall #s1: $state, #s2: $state, #p: $ptr :: { $inv2_without_lemmas(#s1, #s2, #p, ^s_node) } $inv2_without_lemmas(#s1, #s2, #p, ^s_node) == $set_eq($owns(#s2, #p), $set_empty()));

axiom (forall p: $ptr, q: $ptr, s: $state :: { $in(q, $composite_extent(s, p, ^s_node)) } $in(q, $composite_extent(s, p, ^s_node)) == (q == p));

const unique s_node.key: $field;

axiom $def_phys_field(^s_node, s_node.key, ^^i4, false, 0);

const unique s_node.next: $field;

axiom $def_phys_field(^s_node, s_node.next, $ptr_to(^s_node), false, 8);

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

const unique ^$#sl_filter.c..36776#3: $ctype;

axiom $def_fnptr_type(^$#sl_filter.c..36776#3);

type $#sl_filter.c..36776#3;

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

function F#sll(#s: $state, SP#hd: $ptr) : bool;

const unique cf#sll: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll(#s, SP#hd) } 1 < $decreases_level ==> $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#sll(#s, SP#hd));

axiom $function_arg_type(cf#sll, 0, ^^bool);

axiom $function_arg_type(cf#sll, 1, $ptr_to(^s_node));

procedure sll(SP#hd: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result;
  free ensures $result == F#sll($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_reach(#s: $state, SP#hd: $ptr) : $oset;

const unique cf#sll_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_reach(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#sll_reach(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#sll_reach(#s, SP#hd) == $oset_empty()));

axiom $function_arg_type(cf#sll_reach, 0, ^$#oset);

axiom $function_arg_type(cf#sll_reach, 1, $ptr_to(^s_node));

procedure sll_reach(SP#hd: $ptr) returns ($result: $oset);
  ensures ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result)) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $oset_empty());
  free ensures $result == F#sll_reach($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_keys(#s: $state, SP#hd: $ptr) : $intset;

const unique cf#sll_keys: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_keys(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $intset_in($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), F#sll_keys(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#sll_keys(#s, SP#hd) == $intset_empty()));

axiom $function_arg_type(cf#sll_keys, 0, ^$#intset);

axiom $function_arg_type(cf#sll_keys, 1, $ptr_to(^s_node));

procedure sll_keys(SP#hd: $ptr) returns ($result: $intset);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $intset_in($rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), $result);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $intset_empty();
  free ensures $result == F#sll_keys($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : bool;

const unique cf#sll_lseg: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==>
true
&& ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg(#s, SP#hd, SP#tl))
&& ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg(#s, SP#hd, SP#tl) == F#sll(#s, $phys_ptr_cast(SP#hd, ^s_node)))
);

/*
   lseg(x,y) ==> disjoint( lseg_reach(x,y), singleton(y) )
*/
axiom (forall #s: $state, SP#x: $ptr, SP#y: $ptr ::
{ F#sll_lseg(#s, SP#x, SP#y) }
( true
&& F#sll_lseg(#s, SP#x, SP#y)
) ==> ( true
&& $oset_disjoint( F#sll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^s_node), $phys_ptr_cast(SP#y, ^s_node)), $oset_singleton($phys_ptr_cast(SP#y, ^s_node)) )
));

/*
   lseg(x,y) && list(y)
// && lseg_keys(x,y) <= list_keys(y)
   ==>
   list(x) &&
   list_reach(x) == union( lseg_reach(x,y), list_reach(y) )
   list_keys(x)  == union( lseg_keys(x,y),  list_keys(y) )
*/
axiom (forall #s: $state, SP#x: $ptr, SP#y: $ptr ::
{ F#sll_lseg(#s, SP#x, SP#y) }
( true
&& F#sll_lseg(#s, SP#x, SP#y)
&& F#sll(#s, $phys_ptr_cast(SP#y, ^s_node))
) ==> ( true
&& F#sll(#s, $phys_ptr_cast(SP#x, ^s_node))
&& F#sll_reach(#s, $phys_ptr_cast(SP#x, ^s_node))
   == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^s_node), $phys_ptr_cast(SP#y, ^s_node)), F#sll_reach(#s, $phys_ptr_cast(SP#y, ^s_node)))
&& F#sll_keys(#s, $phys_ptr_cast(SP#x, ^s_node))
   == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#x, ^s_node), $phys_ptr_cast(SP#y, ^s_node)), F#sll_keys(#s, $phys_ptr_cast(SP#y, ^s_node)))
));

/*
   lseg(x,y) && y != null
   && y->next != y && y->next != x && y->next \not\in lseg_reach(x,y)
// && y->next != null ==> y->next->prev == y
// && lseg_keys(x,y) <= singleton(y)
   ==>
   lseg(x,y->next) &&
   lseg_reach(x,y->next) == union( lseg_reach(x,y), singleton(y) )
   lseg_keys(x,y->next)  == union( lseg_keys(x,y),  singleton(y) )
*/
axiom (forall #s: $state, SP#x: $ptr, SP#y: $ptr ::
{ F#sll_lseg(#s, SP#x, SP#y) }
( true
&& F#sll_lseg(#s, SP#x, SP#y)
&& $non_null($phys_ptr_cast(SP#y, ^s_node))
&& $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#y, ^s_node), ^s_node) != $phys_ptr_cast(SP#x, ^s_node)
&& $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#y, ^s_node), ^s_node) != $phys_ptr_cast(SP#y, ^s_node)
&& !$oset_in($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#y, ^s_node), ^s_node), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^s_node), $phys_ptr_cast(SP#y, ^s_node)))
) ==> ( true
&& F#sll_lseg(#s, $phys_ptr_cast(SP#x, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#y, ^s_node), ^s_node))
&& F#sll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#y, ^s_node), ^s_node))
   == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#x, ^s_node), $phys_ptr_cast(SP#y, ^s_node)), $oset_singleton($phys_ptr_cast(SP#y, ^s_node)))
&& F#sll_lseg_keys(#s, $phys_ptr_cast(SP#x, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#y, ^s_node), ^s_node))
   == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#x, ^s_node), $phys_ptr_cast(SP#y, ^s_node)), $intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#y, ^s_node))))
));


axiom $function_arg_type(cf#sll_lseg, 0, ^^bool);

axiom $function_arg_type(cf#sll_lseg, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg, 2, $ptr_to(^s_node));

procedure sll_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll($s, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#sll_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==>
true
&& ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty())
&& ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node)
   ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#sll_lseg_reach(#s, SP#hd, SP#tl)))
&& ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node))
   ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node)))
);

axiom $function_arg_type(cf#sll_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#sll_lseg_reach, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_reach, 2, $ptr_to(^s_node));

procedure sll_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_reach($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_keys(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $intset;

const unique cf#sll_lseg_keys: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_keys(#s, SP#hd, SP#tl) } 1 < $decreases_level ==>
true
&& ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == $intset_empty())
&& ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node)
   ==> $intset_in($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), F#sll_lseg_keys(#s, SP#hd, SP#tl)))
&& ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node))
   ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node)))
);

axiom $function_arg_type(cf#sll_lseg_keys, 0, ^$#intset);

axiom $function_arg_type(cf#sll_lseg_keys, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_keys, 2, $ptr_to(^s_node));

procedure sll_lseg_keys(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $intset);
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $intset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $intset_in($rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), $result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_keys($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



procedure sl_filter(P#x: $ptr) returns ($result: $ptr);
  requires F#sll($s, $phys_ptr_cast(P#x, ^s_node));
  modifies $s, $cev_pc;
  ensures F#sll($s, $phys_ptr_cast($result, ^s_node));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation sl_filter(P#x: $ptr) returns ($result: $ptr)
{
  var stmtexpr1#9: $state;
  var _dryad_S1#2: $state;
  var stmtexpr0#8: $state;
  var _dryad_S0#1: $state;
  var stmtexpr0#7: $ptr;
  var old_curr1#0: $ptr;
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
  var loopState#49: $state;
  var L#prv: $ptr;
  var L#curr: $ptr;
  var L#res: $ptr;
  var stmtexpr1#11: $oset;
  var stmtexpr0#10: $oset;
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
// INV:LST: sll
// INV:OLD: loopState#49

  anon448:
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
    // _dryad_G0 := sll_reach(x); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(P#x, ^s_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#10; 
    // stmtexpr0#10 := _dryad_G0; 
    stmtexpr0#10 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#11; 
    // stmtexpr1#11 := _dryad_G1; 
    stmtexpr1#11 := SL#_dryad_G1;
    // assume ==(glob_reach(), _dryad_G1); 
    assume F#glob_reach() == SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
    // struct s_node* res; 
    // struct s_node* curr; 
    // struct s_node* prv; 
    // assume ==>(@_vcc_ptr_neq_null(x), &&(@_vcc_mutable(@state, x), @writes_check(x))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#x, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(P#x, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(x), @_vcc_is_malloc_root(@state, x)); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(P#x, ^s_node));
    // prv := (struct s_node*)@null; 
    L#prv := $phys_ptr_cast($null, ^s_node);
    // assert sll_lseg(prv, prv); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
    // assume sll_lseg(prv, prv); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(res, res); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume sll_lseg(res, res); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert sll_lseg(x, x); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume sll_lseg(x, x); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
    // curr := x; 
    L#curr := $phys_ptr_cast(P#x, ^s_node);
    // assert sll_lseg(prv, prv); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
    // assume sll_lseg(prv, prv); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(res, res); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume sll_lseg(res, res); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert sll_lseg(x, x); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume sll_lseg(x, x); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // res := x; 
    L#res := $phys_ptr_cast(P#x, ^s_node);
    // assert sll_lseg(prv, prv); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
    // assume sll_lseg(prv, prv); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(res, res); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume sll_lseg(res, res); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert sll_lseg(x, x); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume sll_lseg(x, x); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    loopState#49 := $s;
    assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#x,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#prv,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(L#curr,^s_node)));
p0003 := (F#sll($s,$phys_ptr_cast(L#res,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0009 := (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0010 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0011 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)));
p0012 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0013 := (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0014 := (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)));
p0015 := (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0016 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0017 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0018 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0019 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0020 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0021 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0022 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0023 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0024 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0025 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0026 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0027 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0028 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0029 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0030 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0031 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0032 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0033 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0034 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0035 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0036 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0037 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0038 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0039 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0040 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0041 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0042 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0043 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0044 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0045 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0046 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0047 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0048 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0049 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0050 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0051 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0052 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0053 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0054 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0055 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0056 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0057 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0058 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0059 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0060 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0061 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0062 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0063 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0100 := ($non_null($phys_ptr_cast(P#x,^s_node)));
p0101 := ($non_null($phys_ptr_cast(L#prv,^s_node)));
p0102 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0103 := ($non_null($phys_ptr_cast(L#res,^s_node)));
p0104 := ($is_null($phys_ptr_cast(P#x,^s_node)));
p0105 := ($is_null($phys_ptr_cast(L#prv,^s_node)));
p0106 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0107 := ($is_null($phys_ptr_cast(L#res,^s_node)));
p0108 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node)));
p0109 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0110 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0111 := (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0112 := (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0113 := (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0114 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0115 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node)));
p0116 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0117 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0118 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node)));
p0119 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0120 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0121 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node))));
p0122 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0123 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0124 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0125 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node))));
p0126 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0127 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0128 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0129 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0130 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0131 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0132 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0133 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0134 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0135 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0136 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0137 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0138 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0139 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0164 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0165 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0166 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0167 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0168 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0169 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0170 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0171 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0172 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0173 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0174 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0175 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0176 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0177 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0178 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0179 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0180 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0181 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0182 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0183 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0184 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0185 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0186 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0187 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node))));


    while (true)


invariant (p0000 == (F#sll($s,$phys_ptr_cast(P#x,^s_node))));
invariant (p0001 == (F#sll($s,$phys_ptr_cast(L#prv,^s_node))));
invariant (p0002 == (F#sll($s,$phys_ptr_cast(L#curr,^s_node))));
invariant (p0003 == (F#sll($s,$phys_ptr_cast(L#res,^s_node))));
invariant (p0004 == (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))));
invariant (p0005 == (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0006 == (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))));
invariant (p0007 == (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))));
invariant (p0008 == (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0009 == (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))));
invariant (p0010 == (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
invariant (p0011 == (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))));
invariant (p0012 == (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
invariant (p0013 == (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))));
invariant (p0014 == (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))));
invariant (p0015 == (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0016 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0027 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0028 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0029 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0030 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0031 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0032 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0033 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0034 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0035 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0036 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0037 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0038 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0039 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0040 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0041 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0042 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0043 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0044 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0045 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0046 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0047 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0048 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0049 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0050 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0051 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0052 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0053 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0054 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0055 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0056 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0057 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0058 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0059 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0060 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0061 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0062 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0063 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0064 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0065 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0066 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0067 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0068 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0069 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0070 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0071 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0072 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0073 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0074 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0075 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0076 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0077 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0078 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0079 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0080 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0081 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0082 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0083 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0084 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0085 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0086 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0087 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0088 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0089 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0090 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0091 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0092 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0093 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0094 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0095 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0096 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0097 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0098 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0099 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)))));
invariant (p0100 == ($non_null($phys_ptr_cast(P#x,^s_node))));
invariant (p0101 == ($non_null($phys_ptr_cast(L#prv,^s_node))));
invariant (p0102 == ($non_null($phys_ptr_cast(L#curr,^s_node))));
invariant (p0103 == ($non_null($phys_ptr_cast(L#res,^s_node))));
invariant (p0104 == ($is_null($phys_ptr_cast(P#x,^s_node))));
invariant (p0105 == ($is_null($phys_ptr_cast(L#prv,^s_node))));
invariant (p0106 == ($is_null($phys_ptr_cast(L#curr,^s_node))));
invariant (p0107 == ($is_null($phys_ptr_cast(L#res,^s_node))));
invariant (p0108 == (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
invariant (p0109 == (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0110 == (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node))));
invariant (p0111 == (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node))));
invariant (p0112 == (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0113 == (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node))));
invariant (p0114 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
invariant (p0115 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
invariant (p0116 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
invariant (p0117 == (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node))));
invariant (p0118 == (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
invariant (p0119 == (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0120 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node)))));
invariant (p0121 == (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node)))));
invariant (p0122 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))));
invariant (p0123 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node)))));
invariant (p0124 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node)))));
invariant (p0125 == (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node)))));
invariant (p0126 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))));
invariant (p0127 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node)))));
invariant (p0128 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0129 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0130 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0131 == (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0132 == (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0133 == (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0134 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0135 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0136 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0137 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0138 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0139 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0140 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0141 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0142 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)))))));
invariant (p0143 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0144 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)))))));
invariant (p0145 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0146 == ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0147 == ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0148 == ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0149 == ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0150 == ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0151 == ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0152 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)))))));
invariant (p0153 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0154 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0155 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0156 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0157 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)))))));
invariant (p0158 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)))))));
invariant (p0159 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0160 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0161 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0162 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0163 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)))))));
invariant (p0164 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0165 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0166 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0167 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0168 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0169 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0170 == (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0171 == (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0172 == (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0173 == (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0174 == (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0175 == (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0176 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0177 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0178 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0179 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0180 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0181 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0182 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node)))));
invariant (p0183 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0184 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0185 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0186 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0187 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node)))));

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


      invariant $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#prv, ^s_node));
      invariant $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#prv, ^s_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^s_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(L#curr, ^s_node));
    {
      anon447:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#49, $s);
        assume $full_stop_ext(#tok$3^13.3, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(curr)) ...
        if ($non_null($phys_ptr_cast(L#curr, ^s_node)))
        {
          anon445:
            // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
            assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
            assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
            assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg(res, prv), &&(sll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), prv)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_reach(res, prv), @_vcc_oset_union_one2(sll_lseg_reach(*((res->next)), prv), res))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_keys(res, prv), @_vcc_intset_union(sll_lseg_keys(*((res->next)), prv), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // int32_t nondet; 
            // struct s_node* old_curr; 
            // old_curr := curr; 
            L#old_curr := $phys_ptr_cast(L#curr, ^s_node);
            // assert sll_lseg(old_curr, old_curr); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#old_curr, ^s_node), $phys_ptr_cast(L#old_curr, ^s_node));
            // assume sll_lseg(old_curr, old_curr); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#old_curr, ^s_node), $phys_ptr_cast(L#old_curr, ^s_node));
            // assert sll_lseg(prv, prv); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
            // assume sll_lseg(prv, prv); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
            // assert sll_lseg(curr, curr); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume sll_lseg(curr, curr); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assert sll_lseg(res, res); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
            // assume sll_lseg(res, res); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
            // assert sll_lseg(x, x); 
            assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
            // assume sll_lseg(x, x); 
            assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
            // struct s_node* curr0; 
            // curr0 := curr; 
            SL#curr0 := $phys_ptr_cast(L#curr, ^s_node);
            // struct s_node* stmtexpr0#3; 
            // stmtexpr0#3 := curr0; 
            stmtexpr0#3 := $phys_ptr_cast(SL#curr0, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg(curr, *((curr->next))), &&(sll_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_lseg_reach(*((curr->next)), *((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_reach(curr, *((curr->next))), @_vcc_oset_union_one2(sll_lseg_reach(*((curr->next)), *((curr->next))), curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_keys(curr, *((curr->next))), @_vcc_intset_union(sll_lseg_keys(*((curr->next)), *((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assert @reads_check_normal((curr->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
            // curr := *((curr->next)); 
            L#curr := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), @_vcc_is_malloc_root(@state, curr)); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(L#curr, ^s_node));
            // var int32_t nondet
            // _Bool ite#1; 
            // ite#1 := (_Bool)nondet; 
            ite#1 := $int_to_bool(L#nondet);
            assume true;
            // if (ite#1) ...
            if (ite#1)
            {
              anon442:
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union_one2(sll_reach(*((curr0->next))), curr0))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $phys_ptr_cast(SL#curr0, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
                assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
                assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
                assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg(res, prv), &&(sll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), prv)))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_reach(res, prv), @_vcc_oset_union_one2(sll_lseg_reach(*((res->next)), prv), res))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_keys(res, prv), @_vcc_intset_union(sll_lseg_keys(*((res->next)), prv), @_vcc_intset_singleton(*((res->key)))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                assume true;
                // if (@_vcc_ptr_neq_null(prv)) ...
                if ($non_null($phys_ptr_cast(L#prv, ^s_node)))
                {
                  anon440:
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union_one2(sll_reach(*((curr0->next))), curr0))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $phys_ptr_cast(SL#curr0, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
                    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg(res, prv), &&(sll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), prv)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node))));
                    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_reach(res, prv), @_vcc_oset_union_one2(sll_lseg_reach(*((res->next)), prv), res))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_keys(res, prv), @_vcc_intset_union(sll_lseg_keys(*((res->next)), prv), @_vcc_intset_singleton(*((res->key)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                    // struct s_node* old_curr_next; 
                    // struct s_node* old_curr1; 
                    // old_curr1 := old_curr; 
                    SL#old_curr1 := $phys_ptr_cast(L#old_curr, ^s_node);
                    // struct s_node* stmtexpr0#4; 
                    // stmtexpr0#4 := old_curr1; 
                    stmtexpr0#4 := $phys_ptr_cast(SL#old_curr1, ^s_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                    // assert @reads_check_normal((old_curr->next)); 
                    assert $thread_local($s, $phys_ptr_cast(L#old_curr, ^s_node));
                    // old_curr_next := *((old_curr->next)); 
                    L#old_curr_next := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll_keys(old_curr_next), @_vcc_intset_union(sll_keys(*((old_curr_next->next))), @_vcc_intset_singleton(*((old_curr_next->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr_next, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll(old_curr_next), &&(sll(*((old_curr_next->next))), unchecked!(@_vcc_oset_in(old_curr_next, sll_reach(*((old_curr_next->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr_next, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll_reach(old_curr_next), @_vcc_oset_union_one2(sll_reach(*((old_curr_next->next))), old_curr_next))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr_next, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                    // _math \state _dryad_S0; 
                    // _dryad_S0 := @_vcc_current_state(@state); 
                    SL#_dryad_S0 := $current_state($s);
                    // _math \state stmtexpr1#5; 
                    // stmtexpr1#5 := _dryad_S0; 
                    stmtexpr1#5 := SL#_dryad_S0;
                    // assert @prim_writes_check((prv->next)); 
                    assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#prv, ^s_node), s_node.next));
                    // *(prv->next) := old_curr_next; 
                    call $write_int(s_node.next, $phys_ptr_cast(L#prv, ^s_node), $ptr_to_int($phys_ptr_cast(L#old_curr_next, ^s_node)));
                    assume $full_stop_ext(#tok$3^33.9, $s);
                    // _math \state _dryad_S1; 
                    // _dryad_S1 := @_vcc_current_state(@state); 
                    SL#_dryad_S1 := $current_state($s);
                    // _math \state stmtexpr2#6; 
                    // stmtexpr2#6 := _dryad_S1; 
                    stmtexpr2#6 := SL#_dryad_S1;
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr1)))), ==(old(_dryad_S0, sll_keys(old_curr1)), old(_dryad_S1, sll_keys(old_curr1)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(SL#old_curr1, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr1)))), ==(old(_dryad_S0, sll(old_curr1)), old(_dryad_S1, sll(old_curr1)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(SL#old_curr1, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr1)))), ==(old(_dryad_S0, sll_reach(old_curr1)), old(_dryad_S1, sll_reach(old_curr1)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#old_curr1, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(SL#old_curr1, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr_next)))), ==(old(_dryad_S0, sll_keys(old_curr_next)), old(_dryad_S1, sll_keys(old_curr_next)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#old_curr_next, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr_next)))), ==(old(_dryad_S0, sll(old_curr_next)), old(_dryad_S1, sll(old_curr_next)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#old_curr_next, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr_next)))), ==(old(_dryad_S0, sll_reach(old_curr_next)), old(_dryad_S1, sll_reach(old_curr_next)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr_next, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#old_curr_next, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(curr0)))), ==(old(_dryad_S0, sll_keys(curr0)), old(_dryad_S1, sll_keys(curr0)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(SL#curr0, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(curr0)))), ==(old(_dryad_S0, sll(curr0)), old(_dryad_S1, sll(curr0)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(SL#curr0, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(curr0)))), ==(old(_dryad_S0, sll_reach(curr0)), old(_dryad_S1, sll_reach(curr0)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(SL#curr0, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr)))), ==(old(_dryad_S0, sll_keys(old_curr)), old(_dryad_S1, sll_keys(old_curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#old_curr, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr)))), ==(old(_dryad_S0, sll(old_curr)), old(_dryad_S1, sll(old_curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#old_curr, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(old_curr)))), ==(old(_dryad_S0, sll_reach(old_curr)), old(_dryad_S1, sll_reach(old_curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#old_curr, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#old_curr, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_keys(curr)), old(_dryad_S1, sll_keys(curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll(curr)), old(_dryad_S1, sll(curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_reach(curr)), old(_dryad_S1, sll_reach(curr)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(res)))), ==(old(_dryad_S0, sll_keys(res)), old(_dryad_S1, sll_keys(res)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(res)))), ==(old(_dryad_S0, sll(res)), old(_dryad_S1, sll(res)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(res)))), ==(old(_dryad_S0, sll_reach(res)), old(_dryad_S1, sll_reach(res)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll_keys(x)), old(_dryad_S1, sll_keys(x)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll(x)), old(_dryad_S1, sll(x)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll_reach(x)), old(_dryad_S1, sll_reach(x)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_lseg_reach(res, prv)))), ==(old(_dryad_S0, sll_lseg(res, prv)), old(_dryad_S1, sll_lseg(res, prv)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_lseg_reach(res, prv)))), ==(old(_dryad_S0, sll_lseg_reach(res, prv)), old(_dryad_S1, sll_lseg_reach(res, prv)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
                    // assume ==>(unchecked!(@_vcc_oset_in(prv, old(_dryad_S0, sll_lseg_reach(res, prv)))), ==(old(_dryad_S0, sll_lseg_keys(res, prv)), old(_dryad_S1, sll_lseg_keys(res, prv)))); 
                    assume !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr1)), ==(*((old_curr1->key)), old(_dryad_S0, *((old_curr1->key))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(SL#old_curr1, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#old_curr1, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(SL#old_curr1, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr1)), @_vcc_ptr_eq_pure(*((old_curr1->next)), old(_dryad_S0, *((old_curr1->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(SL#old_curr1, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#old_curr1, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(SL#old_curr1, ^s_node), ^s_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr_next)), ==(*((old_curr_next->key)), old(_dryad_S0, *((old_curr_next->key))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#old_curr_next, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr_next, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(L#old_curr_next, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr_next)), @_vcc_ptr_eq_pure(*((old_curr_next->next)), old(_dryad_S0, *((old_curr_next->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#old_curr_next, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr0)), ==(*((curr0->key)), old(_dryad_S0, *((curr0->key))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S0, *((curr0->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr)), ==(*((old_curr->key)), old(_dryad_S0, *((old_curr->key))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#old_curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, old_curr)), @_vcc_ptr_eq_pure(*((old_curr->next)), old(_dryad_S0, *((old_curr->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#old_curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr)), ==(*((curr->key)), old(_dryad_S0, *((curr->key))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S0, *((curr->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, res)), ==(*((res->key)), old(_dryad_S0, *((res->key))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, res)), @_vcc_ptr_eq_pure(*((res->next)), old(_dryad_S0, *((res->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node);
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, x)), ==(*((x->key)), old(_dryad_S0, *((x->key))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(P#x, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(P#x, ^s_node));
                    // assume ==>(!(@_vcc_ptr_eq_pure(prv, x)), @_vcc_ptr_eq_pure(*((x->next)), old(_dryad_S0, *((x->next))))); 
                    assume !($phys_ptr_cast(L#prv, ^s_node) == $phys_ptr_cast(P#x, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr1), ==(sll_keys(old_curr1), @_vcc_intset_union(sll_keys(*((old_curr1->next))), @_vcc_intset_singleton(*((old_curr1->key)))))); 
                    assume $non_null($phys_ptr_cast(SL#old_curr1, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#old_curr1, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#old_curr1, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#old_curr1, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr1), ==(sll(old_curr1), &&(sll(*((old_curr1->next))), unchecked!(@_vcc_oset_in(old_curr1, sll_reach(*((old_curr1->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#old_curr1, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#old_curr1, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#old_curr1, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#old_curr1, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#old_curr1, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr1), ==(sll_reach(old_curr1), @_vcc_oset_union_one2(sll_reach(*((old_curr1->next))), old_curr1))); 
                    assume $non_null($phys_ptr_cast(SL#old_curr1, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#old_curr1, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#old_curr1, ^s_node), ^s_node)), $phys_ptr_cast(SL#old_curr1, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll_keys(old_curr_next), @_vcc_intset_union(sll_keys(*((old_curr_next->next))), @_vcc_intset_singleton(*((old_curr_next->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr_next, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll(old_curr_next), &&(sll(*((old_curr_next->next))), unchecked!(@_vcc_oset_in(old_curr_next, sll_reach(*((old_curr_next->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr_next, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll_reach(old_curr_next), @_vcc_oset_union_one2(sll_reach(*((old_curr_next->next))), old_curr_next))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr_next, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union_one2(sll_reach(*((curr0->next))), curr0))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $phys_ptr_cast(SL#curr0, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll_keys(old_curr_next), @_vcc_intset_union(sll_keys(*((old_curr_next->next))), @_vcc_intset_singleton(*((old_curr_next->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr_next, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll(old_curr_next), &&(sll(*((old_curr_next->next))), unchecked!(@_vcc_oset_in(old_curr_next, sll_reach(*((old_curr_next->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr_next, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr_next), ==(sll_reach(old_curr_next), @_vcc_oset_union_one2(sll_reach(*((old_curr_next->next))), old_curr_next))); 
                    assume $non_null($phys_ptr_cast(L#old_curr_next, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr_next, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr_next, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr_next, ^s_node));
                }
                else
                {
                  anon441:
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union_one2(sll_reach(*((curr0->next))), curr0))); 
                    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $phys_ptr_cast(SL#curr0, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
                    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
                    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
                    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
                    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg(res, prv), &&(sll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), prv)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node))));
                    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_reach(res, prv), @_vcc_oset_union_one2(sll_lseg_reach(*((res->next)), prv), res))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_keys(res, prv), @_vcc_intset_union(sll_lseg_keys(*((res->next)), prv), @_vcc_intset_singleton(*((res->key)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                    // struct s_node* old_curr1#0; 
                    // old_curr1#0 := old_curr; 
                    old_curr1#0 := $phys_ptr_cast(L#old_curr, ^s_node);
                    // struct s_node* stmtexpr0#7; 
                    // stmtexpr0#7 := old_curr1#0; 
                    stmtexpr0#7 := $phys_ptr_cast(old_curr1#0, ^s_node);
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                    // assert @reads_check_normal((old_curr->next)); 
                    assert $thread_local($s, $phys_ptr_cast(L#old_curr, ^s_node));
                    // res := *((old_curr->next)); 
                    L#res := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node);
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
                    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                    // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                    assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                }

              anon443:
                // _math \state _dryad_S0#1; 
                // _dryad_S0#1 := @_vcc_current_state(@state); 
                _dryad_S0#1 := $current_state($s);
                // _math \state stmtexpr0#8; 
                // stmtexpr0#8 := _dryad_S0#1; 
                stmtexpr0#8 := _dryad_S0#1;
                // void function
                // assert @writes_check(old_curr); 
                assert $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#old_curr, ^s_node));
                // assert @writes_check(@_vcc_extent(@state, old_curr)); 
                assert (forall #writes$3^37.7: $ptr :: { $dont_instantiate(#writes$3^37.7) } $set_in(#writes$3^37.7, $extent($s, $phys_ptr_cast(L#old_curr, ^s_node))) ==> $top_writable($s, #wrTime$3^3.3, #writes$3^37.7));
                // stmt _vcc_free(old_curr); 
                call $free($phys_ptr_cast(L#old_curr, ^s_node));
                assume $full_stop_ext(#tok$3^37.7, $s);
                // _math \state _dryad_S1#2; 
                // _dryad_S1#2 := @_vcc_current_state(@state); 
                _dryad_S1#2 := $current_state($s);
                // _math \state stmtexpr1#9; 
                // stmtexpr1#9 := _dryad_S1#2; 
                stmtexpr1#9 := _dryad_S1#2;
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(curr0)))), ==(old(_dryad_S0#1, sll_keys(curr0)), old(_dryad_S1#2, sll_keys(curr0)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(SL#curr0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(curr0)))), ==(old(_dryad_S0#1, sll(curr0)), old(_dryad_S1#2, sll(curr0)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(SL#curr0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(curr0)))), ==(old(_dryad_S0#1, sll_reach(curr0)), old(_dryad_S1#2, sll_reach(curr0)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(SL#curr0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(prv)))), ==(old(_dryad_S0#1, sll_keys(prv)), old(_dryad_S1#2, sll_keys(prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(L#prv, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(L#prv, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(prv)))), ==(old(_dryad_S0#1, sll(prv)), old(_dryad_S1#2, sll(prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(L#prv, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(L#prv, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(prv)))), ==(old(_dryad_S0#1, sll_reach(prv)), old(_dryad_S1#2, sll_reach(prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#prv, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(L#prv, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(curr)))), ==(old(_dryad_S0#1, sll_keys(curr)), old(_dryad_S1#2, sll_keys(curr)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(L#curr, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(curr)))), ==(old(_dryad_S0#1, sll(curr)), old(_dryad_S1#2, sll(curr)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(L#curr, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(curr)))), ==(old(_dryad_S0#1, sll_reach(curr)), old(_dryad_S1#2, sll_reach(curr)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(L#curr, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(res)))), ==(old(_dryad_S0#1, sll_keys(res)), old(_dryad_S1#2, sll_keys(res)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(L#res, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(res)))), ==(old(_dryad_S0#1, sll(res)), old(_dryad_S1#2, sll(res)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(L#res, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(res)))), ==(old(_dryad_S0#1, sll_reach(res)), old(_dryad_S1#2, sll_reach(res)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(L#res, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(x)))), ==(old(_dryad_S0#1, sll_keys(x)), old(_dryad_S1#2, sll_keys(x)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(P#x, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(P#x, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(x)))), ==(old(_dryad_S0#1, sll(x)), old(_dryad_S1#2, sll(x)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(P#x, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(P#x, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_reach(x)))), ==(old(_dryad_S0#1, sll_reach(x)), old(_dryad_S1#2, sll_reach(x)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#x, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(P#x, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_lseg_reach(res, prv)))), ==(old(_dryad_S0#1, sll_lseg(res, prv)), old(_dryad_S1#2, sll_lseg(res, prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_lseg(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == F#sll_lseg(_dryad_S1#2, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_lseg_reach(res, prv)))), ==(old(_dryad_S0#1, sll_lseg_reach(res, prv)), old(_dryad_S1#2, sll_lseg_reach(res, prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == F#sll_lseg_reach(_dryad_S1#2, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(old_curr, old(_dryad_S0#1, sll_lseg_reach(res, prv)))), ==(old(_dryad_S0#1, sll_lseg_keys(res, prv)), old(_dryad_S1#2, sll_lseg_keys(res, prv)))); 
                assume !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node))) ==> F#sll_lseg_keys(_dryad_S0#1, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == F#sll_lseg_keys(_dryad_S1#2, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
            }
            else
            {
              anon444:
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union_one2(sll_reach(*((curr0->next))), curr0))); 
                assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $phys_ptr_cast(SL#curr0, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_keys(old_curr), @_vcc_intset_union(sll_keys(*((old_curr->next))), @_vcc_intset_singleton(*((old_curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#old_curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll(old_curr), &&(sll(*((old_curr->next))), unchecked!(@_vcc_oset_in(old_curr, sll_reach(*((old_curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#old_curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#old_curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(old_curr), ==(sll_reach(old_curr), @_vcc_oset_union_one2(sll_reach(*((old_curr->next))), old_curr))); 
                assume $non_null($phys_ptr_cast(L#old_curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#old_curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#old_curr, ^s_node), ^s_node)), $phys_ptr_cast(L#old_curr, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
                assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
                assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
                assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg(res, prv), &&(sll_lseg(*((res->next)), prv), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), prv)))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_reach(res, prv), @_vcc_oset_union_one2(sll_lseg_reach(*((res->next)), prv), res))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $phys_ptr_cast(L#res, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, prv)), ==(sll_lseg_keys(res, prv), @_vcc_intset_union(sll_lseg_keys(*((res->next)), prv), @_vcc_intset_singleton(*((res->key)))))); 
                assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#prv, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#prv, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
                // prv := old_curr; 
                L#prv := $phys_ptr_cast(L#old_curr, ^s_node);
                // assert sll_lseg(curr0, curr0); 
                assert F#sll_lseg($s, $phys_ptr_cast(SL#curr0, ^s_node), $phys_ptr_cast(SL#curr0, ^s_node));
                // assume sll_lseg(curr0, curr0); 
                assume F#sll_lseg($s, $phys_ptr_cast(SL#curr0, ^s_node), $phys_ptr_cast(SL#curr0, ^s_node));
                // assert sll_lseg(old_curr, old_curr); 
                assert F#sll_lseg($s, $phys_ptr_cast(L#old_curr, ^s_node), $phys_ptr_cast(L#old_curr, ^s_node));
                // assume sll_lseg(old_curr, old_curr); 
                assume F#sll_lseg($s, $phys_ptr_cast(L#old_curr, ^s_node), $phys_ptr_cast(L#old_curr, ^s_node));
                // assert sll_lseg(prv, prv); 
                assert F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
                // assume sll_lseg(prv, prv); 
                assume F#sll_lseg($s, $phys_ptr_cast(L#prv, ^s_node), $phys_ptr_cast(L#prv, ^s_node));
                // assert sll_lseg(curr, curr); 
                assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
                // assume sll_lseg(curr, curr); 
                assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
                // assert sll_lseg(res, res); 
                assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
                // assume sll_lseg(res, res); 
                assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
                // assert sll_lseg(x, x); 
                assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
                // assume sll_lseg(x, x); 
                assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
            }
        }
        else
        {
          anon446:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_2; 
            goto #break_2;
        }

      #continue_2:
        assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#x,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#prv,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(L#curr,^s_node)));
p0003 := (F#sll($s,$phys_ptr_cast(L#res,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0009 := (F#sll_lseg($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0010 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0011 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)));
p0012 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0013 := (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0014 := (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)));
p0015 := (F#sll_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0016 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0017 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0018 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0019 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0020 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0021 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0022 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0023 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0024 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0025 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0026 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0027 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0028 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0029 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0030 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0031 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0032 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0033 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0034 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0035 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0036 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0037 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0038 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0039 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0040 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0041 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0042 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0043 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0044 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0045 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0046 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0047 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0048 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0049 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0050 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0051 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0052 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0053 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0054 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0055 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0056 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0057 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0058 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0059 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0060 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0061 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0062 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0063 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#prv,^s_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#prv,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))));
p0100 := ($non_null($phys_ptr_cast(P#x,^s_node)));
p0101 := ($non_null($phys_ptr_cast(L#prv,^s_node)));
p0102 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0103 := ($non_null($phys_ptr_cast(L#res,^s_node)));
p0104 := ($is_null($phys_ptr_cast(P#x,^s_node)));
p0105 := ($is_null($phys_ptr_cast(L#prv,^s_node)));
p0106 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0107 := ($is_null($phys_ptr_cast(L#res,^s_node)));
p0108 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node)));
p0109 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0110 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0111 := (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0112 := (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0113 := (($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0114 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0115 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node)));
p0116 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0117 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0118 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node)));
p0119 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0120 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0121 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node))));
p0122 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0123 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0124 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0125 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node))));
p0126 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0127 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0128 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0129 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0130 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0131 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0132 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0133 := (($non_null($phys_ptr_cast(L#prv,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#prv,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0134 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0135 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0136 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0137 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0138 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0139 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#prv,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#prv,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#prv,^s_node))))));
p0164 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0165 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0166 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0167 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0168 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0169 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0170 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0171 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0172 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0173 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0174 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0175 := (($is_null($phys_ptr_cast(L#prv,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0176 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0177 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0178 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0179 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0180 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0181 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0182 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#prv,^s_node))));
p0183 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0184 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0185 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#prv,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0186 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0187 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#prv,^s_node))));


    }

  anon449:
    assume $full_stop_ext(#tok$3^13.3, $s);

  #break_2:
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_keys(prv), @_vcc_intset_union(sll_keys(*((prv->next))), @_vcc_intset_singleton(*((prv->key)))))); 
    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#prv, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#prv, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll(prv), &&(sll(*((prv->next))), unchecked!(@_vcc_oset_in(prv, sll_reach(*((prv->next)))))))); 
    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#prv, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#prv, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(prv), ==(sll_reach(prv), @_vcc_oset_union_one2(sll_reach(*((prv->next))), prv))); 
    assume $non_null($phys_ptr_cast(L#prv, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#prv, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#prv, ^s_node), ^s_node)), $phys_ptr_cast(L#prv, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union_one2(sll_reach(*((res->next))), res))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $phys_ptr_cast(L#res, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union_one2(sll_reach(*((x->next))), x))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $phys_ptr_cast(P#x, ^s_node));
    // return res; 
    $result := $phys_ptr_cast(L#res, ^s_node);
    assume true;
    assert $position_marker();
    goto #exit;

  anon450:
    // skip

  #exit:
}



const unique l#public: $label;

const unique #tok$3^37.7: $token;

const unique #tok$3^33.9: $token;

const unique #tok$3^13.3: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^3.3: $token;

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cgrass?5Csl_filter.c: $token;

axiom $file_name_is(3, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cgrass?5Csl_filter.c);

const unique #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cgrass?5Cdryad_sl.h: $token;

axiom $file_name_is(2, #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cgrass?5Cdryad_sl.h);

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

