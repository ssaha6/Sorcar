
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
b0129 : bool
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

const unique ^$#SLL_last.c..36776#3: $ctype;

axiom $def_fnptr_type(^$#SLL_last.c..36776#3);

type $#SLL_last.c..36776#3;

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



procedure SLL_last(P#h: $ptr) returns ($result: $ptr);
  requires F#sll($s, $phys_ptr_cast(P#h, ^s_node));
  modifies $s, $cev_pc;
  ensures F#sll($s, $phys_ptr_cast(P#h, ^s_node));
  ensures F#sll($s, $phys_ptr_cast($result, ^s_node));
  ensures F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast($result, ^s_node));
  ensures $oset_disjoint(F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast($result, ^s_node)), F#sll_reach($s, $phys_ptr_cast($result, ^s_node)));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation SLL_last(P#h: $ptr) returns ($result: $ptr)
{
  var stmtexpr0#2: $ptr;
  var SL#i0: $ptr;
  var loopState#10: $state;
  var L#i: $ptr;
  var L#j: $ptr;
  var stmtexpr1#4: $oset;
  var stmtexpr0#3: $oset;
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

// INV:PTR: P#h, L#i, L#j
// INV:INT:
// INV:LST: sll
// INV:OLD: loopState#10

  anon90:
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
    // _dryad_G0 := sll_reach(h); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(P#h, ^s_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#3; 
    // stmtexpr0#3 := _dryad_G0; 
    stmtexpr0#3 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#4; 
    // stmtexpr1#4 := _dryad_G1; 
    stmtexpr1#4 := SL#_dryad_G1;
    // assume ==(glob_reach(), _dryad_G1); 
    assume F#glob_reach() == SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
    // struct s_node* j; 
    // struct s_node* i; 
    // assume ==>(@_vcc_ptr_neq_null(h), &&(@_vcc_mutable(@state, h), @writes_check(h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#h, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(P#h, ^s_node));
    // i := h; 
    L#i := $phys_ptr_cast(P#h, ^s_node);
    // assert sll_lseg(i, i); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume sll_lseg(i, i); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert sll_lseg(j, j); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assume sll_lseg(j, j); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assert sll_lseg(h, h); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume sll_lseg(h, h); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // j := (struct s_node*)@null; 
    L#j := $phys_ptr_cast($null, ^s_node);
    // assert sll_lseg(i, i); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume sll_lseg(i, i); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert sll_lseg(j, j); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assume sll_lseg(j, j); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assert sll_lseg(h, h); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume sll_lseg(h, h); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union_one2(sll_reach(*((j->next))), j))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $phys_ptr_cast(L#j, ^s_node));
    loopState#10 := $s;
    assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#h,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#i,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(L#j,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0009 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0010 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0011 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0012 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0013 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0014 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0015 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0016 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0017 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0018 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0019 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0020 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0021 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0022 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0023 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0024 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0025 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0026 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#h,^s_node)));
p0040 := ($non_null($phys_ptr_cast(L#i,^s_node)));
p0041 := ($non_null($phys_ptr_cast(L#j,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#h,^s_node)));
p0043 := ($is_null($phys_ptr_cast(L#i,^s_node)));
p0044 := ($is_null($phys_ptr_cast(L#j,^s_node)));
p0045 := (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node)));
p0046 := (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node)));
p0047 := (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node)));
p0048 := (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node)));
p0049 := (($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node)));
p0050 := (($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0059 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0060 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0061 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0062 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0071 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0072 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0073 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0074 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0075 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0076 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))));
p0077 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0078 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))));
p0079 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0080 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0081 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0082 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0083 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0084 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0085 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0086 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0087 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0088 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0089 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0090 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0091 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0092 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0093 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0094 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0095 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0096 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0097 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0098 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0099 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0100 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0101 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0102 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0103 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0104 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0105 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0106 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0107 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0108 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0109 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0110 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0111 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0112 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0113 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0114 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0115 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0116 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0117 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0118 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0119 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0120 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0121 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0122 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0123 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0124 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0125 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0126 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0127 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0128 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));


    while (true)


invariant (p0000 == (F#sll($s,$phys_ptr_cast(P#h,^s_node))));
invariant (p0001 == (F#sll($s,$phys_ptr_cast(L#i,^s_node))));
invariant (p0002 == (F#sll($s,$phys_ptr_cast(L#j,^s_node))));
invariant (p0003 == (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
invariant (p0004 == (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
invariant (p0005 == (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
invariant (p0006 == (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
invariant (p0007 == (F#sll_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
invariant (p0008 == (F#sll_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
invariant (p0009 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0010 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0011 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0012 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0013 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0014 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0015 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0016 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0027 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0028 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0029 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0030 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0031 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0032 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0033 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)))));
invariant (p0034 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)))));
invariant (p0035 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)))));
invariant (p0036 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)))));
invariant (p0037 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)))));
invariant (p0038 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)))));
invariant (p0039 == ($non_null($phys_ptr_cast(P#h,^s_node))));
invariant (p0040 == ($non_null($phys_ptr_cast(L#i,^s_node))));
invariant (p0041 == ($non_null($phys_ptr_cast(L#j,^s_node))));
invariant (p0042 == ($is_null($phys_ptr_cast(P#h,^s_node))));
invariant (p0043 == ($is_null($phys_ptr_cast(L#i,^s_node))));
invariant (p0044 == ($is_null($phys_ptr_cast(L#j,^s_node))));
invariant (p0045 == (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node))));
invariant (p0046 == (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node))));
invariant (p0047 == (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node))));
invariant (p0048 == (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node))));
invariant (p0049 == (($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node))));
invariant (p0050 == (($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node))));
invariant (p0051 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node)))));
invariant (p0052 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node)))));
invariant (p0053 == (($non_null($phys_ptr_cast(L#j,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node)))));
invariant (p0054 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node)))));
invariant (p0055 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node)))));
invariant (p0056 == (($non_null($phys_ptr_cast(L#j,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node)))));
invariant (p0057 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node)))));
invariant (p0058 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#j,^s_node)))));
invariant (p0059 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node)))));
invariant (p0060 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(L#j,^s_node)))));
invariant (p0061 == (($non_null($phys_ptr_cast(L#j,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node)))));
invariant (p0062 == (($non_null($phys_ptr_cast(L#j,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node)))));
invariant (p0063 == ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)))))));
invariant (p0064 == ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)))))));
invariant (p0065 == ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)))))));
invariant (p0066 == ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)))))));
invariant (p0067 == ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)))))));
invariant (p0068 == ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)))))));
invariant (p0069 == (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node)))));
invariant (p0070 == (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node)))));
invariant (p0071 == (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node)))));
invariant (p0072 == (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node)))));
invariant (p0073 == (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node)))));
invariant (p0074 == (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node)))));
invariant (p0075 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0076 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0077 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0078 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0079 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0080 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0081 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)))));
invariant (p0082 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)))));
invariant (p0083 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)))));
invariant (p0084 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)))));
invariant (p0085 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)))));
invariant (p0086 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)))));
invariant (p0087 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0088 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0089 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0090 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0091 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0092 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0093 == ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0094 == ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0095 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0096 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0097 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0098 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0099 == ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0100 == ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0101 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0102 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0103 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0104 == ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0105 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0106 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0107 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0108 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0109 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0110 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0111 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0112 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0113 == ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0114 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0115 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0116 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0117 == ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0118 == ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0119 == ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0120 == ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0121 == ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0122 == ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0123 == ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0124 == ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0125 == ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0126 == ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node))))));
invariant (p0127 == ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0128 == ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node))))));

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
true
);


      invariant $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#i, ^s_node));
      invariant $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#i, ^s_node));
    {
      anon89:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#10, $s);
        assume $full_stop_ext(#tok$3^14.3, $s);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#10, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(i)) ...
        if ($non_null($phys_ptr_cast(L#i, ^s_node)))
        {
          anon87:
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union_one2(sll_reach(*((j->next))), j))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $phys_ptr_cast(L#j, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union_one2(sll_lseg_reach(*((h->next)), j), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union_one2(sll_lseg_reach(*((h->next)), i), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // j := i; 
            L#j := $phys_ptr_cast(L#i, ^s_node);
            // assert sll_lseg(i, i); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assume sll_lseg(i, i); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assert sll_lseg(j, j); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assume sll_lseg(j, j); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assert sll_lseg(h, h); 
            assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // assume sll_lseg(h, h); 
            assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // struct s_node* i0; 
            // i0 := i; 
            SL#i0 := $phys_ptr_cast(L#i, ^s_node);
            // struct s_node* stmtexpr0#2; 
            // stmtexpr0#2 := i0; 
            stmtexpr0#2 := $phys_ptr_cast(SL#i0, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(sll_lseg(i, *((i->next))), &&(sll_lseg(*((i->next)), *((i->next))), unchecked!(@_vcc_oset_in(i, sll_lseg_reach(*((i->next)), *((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(sll_lseg_reach(i, *((i->next))), @_vcc_oset_union_one2(sll_lseg_reach(*((i->next)), *((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(sll_lseg_keys(i, *((i->next))), @_vcc_intset_union(sll_lseg_keys(*((i->next)), *((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assert @reads_check_normal((i->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#i, ^s_node));
            // i := *((i->next)); 
            L#i := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union_one2(sll_lseg_reach(*((h->next)), i), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), &&(@_vcc_mutable(@state, i), @writes_check(i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#i, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#i, ^s_node));
        }
        else
        {
          anon88:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_1; 
            goto #break_1;
        }

      #continue_1:
        assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#h,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#i,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(L#j,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0009 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0010 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0011 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0012 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0013 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0014 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0015 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0016 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0017 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0018 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0019 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0020 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0021 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0022 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0023 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0024 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0025 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0026 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#h,^s_node)));
p0040 := ($non_null($phys_ptr_cast(L#i,^s_node)));
p0041 := ($non_null($phys_ptr_cast(L#j,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#h,^s_node)));
p0043 := ($is_null($phys_ptr_cast(L#i,^s_node)));
p0044 := ($is_null($phys_ptr_cast(L#j,^s_node)));
p0045 := (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node)));
p0046 := (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node)));
p0047 := (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node)));
p0048 := (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node)));
p0049 := (($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node)));
p0050 := (($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0059 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0060 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0061 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0062 := (($non_null($phys_ptr_cast(L#j,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#j,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0071 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0072 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0073 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0074 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0075 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0076 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))));
p0077 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0078 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#j,^s_node))));
p0079 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0080 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0081 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0082 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0083 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0084 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0085 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0086 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0087 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0088 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0089 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0090 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0091 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0092 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0093 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0094 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0095 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0096 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0097 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0098 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0099 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0100 := ((F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0101 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0102 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0103 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0104 := ((F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0105 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0106 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0107 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0108 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0109 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0110 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0111 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0112 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0113 := ((F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0114 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#j,^s_node)))));
p0115 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0116 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#10,$phys_ptr_cast(L#j,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0117 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0118 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0119 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0120 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0121 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0122 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0123 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0124 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0125 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0126 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(L#j,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)))));
p0127 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0128 := ((($non_null($phys_ptr_cast(L#j,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#j,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));


    }

  anon91:
    assume $full_stop_ext(#tok$3^14.3, $s);

  #break_1:
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union_one2(sll_reach(*((j->next))), j))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $phys_ptr_cast(L#j, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
    // return j; 
    $result := $phys_ptr_cast(L#j, ^s_node);
    assume true;
    assert $position_marker();
    goto #exit;

  anon92:
    // skip

  #exit:
}



const unique l#public: $label;

const unique #tok$3^14.3: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^3.3: $token;

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cafwp?5CSLL?2Dlast.c: $token;

axiom $file_name_is(3, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cafwp?5CSLL?2Dlast.c);

const unique #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_SLL.h: $token;

axiom $file_name_is(2, #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_SLL.h);

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

