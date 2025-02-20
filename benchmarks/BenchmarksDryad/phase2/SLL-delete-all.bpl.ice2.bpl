
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
b0050 : bool
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

const unique ^$#SLL_delete_all.c..36776#3: $ctype;

axiom $def_fnptr_type(^$#SLL_delete_all.c..36776#3);

type $#SLL_delete_all.c..36776#3;

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



procedure delete_all(P#h: $ptr, P#k: int) returns (OP#ALL_REACH: $oset);
  requires F#sll($s, $phys_ptr_cast(P#h, ^s_node));
  modifies $s, $cev_pc;
  ensures OP#ALL_REACH == $oset_empty();
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation delete_all(P#h: $ptr, P#k: int) returns (OP#ALL_REACH: $oset)
{
  var stmtexpr4#6: $state;
  var SL#_dryad_S3: $state;
  var stmtexpr3#5: $state;
  var SL#_dryad_S2: $state;
  var stmtexpr2#4: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr1#3: $state;
  var SL#_dryad_S0: $state;
  var stmtexpr0#2: $ptr;
  var SL#i0: $ptr;
  var L#j: $ptr;
  var loopState#5: $state;
  var L#i: $ptr;
  var stmtexpr1#8: $oset;
  var stmtexpr0#7: $oset;
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

// INV:PTR: P#h, L#i
// INV:INT: P#k
// INV:LST: sll
// INV:OLD: loopState#5

  anon41:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$3^3.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$3^3.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$3^3.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @in_range_i4(k); 
    assume $in_range_i4(P#k);
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := sll_reach(h); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(P#h, ^s_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#7; 
    // stmtexpr0#7 := _dryad_G0; 
    stmtexpr0#7 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#8; 
    // stmtexpr1#8 := _dryad_G1; 
    stmtexpr1#8 := SL#_dryad_G1;
    // assume ==(glob_reach(), _dryad_G1); 
    assume F#glob_reach() == SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
    // struct s_node* i; 
    // assume ==>(@_vcc_ptr_neq_null(h), &&(@_vcc_mutable(@state, h), @writes_check(h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#h, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(P#h, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(h), @_vcc_is_malloc_root(@state, h)); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(P#h, ^s_node));
    // ALL_REACH := sll_reach(h); 
    call OP#ALL_REACH := sll_reach($phys_ptr_cast(P#h, ^s_node));
    assume $full_stop_ext(#tok$3^10.23, $s);
    // i := h; 
    L#i := $phys_ptr_cast(P#h, ^s_node);
    // assert sll_lseg(i, i); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume sll_lseg(i, i); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert sll_lseg(h, h); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume sll_lseg(h, h); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    loopState#5 := $s;
    assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#h,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#i,^s_node)));
p0002 := (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0004 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0005 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0006 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0007 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0008 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0009 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0010 := ($non_null($phys_ptr_cast(P#h,^s_node)));
p0011 := ($non_null($phys_ptr_cast(L#i,^s_node)));
p0012 := ($is_null($phys_ptr_cast(P#h,^s_node)));
p0013 := ($is_null($phys_ptr_cast(L#i,^s_node)));
p0014 := (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node)));
p0015 := (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node)));
p0016 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0017 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0018 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0019 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0020 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0021 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0022 := ((!($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
p0023 := ((!($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
p0024 := ((!($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0025 := ((!($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0026 := ($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0027 := ($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0028 := ($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0029 := ($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0030 := (((!($intset_in(P#k,F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)))));
p0031 := (((!($intset_in(P#k,F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)))));
p0032 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0033 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0034 := ((F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0035 := ((F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0036 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0037 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0038 := ((P#k < 2147483647));
p0039 := ((P#k < 2147483647));
p0040 := ((P#k < 4294967295));
p0041 := ((P#k < 4294967295));
p0042 := ((P#k >= 0));
p0043 := ((P#k >= 0));
p0044 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) < P#k)));
p0045 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) < P#k)));
p0046 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0047 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0048 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0049 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));


    while (true)


invariant (p0000 == (F#sll($s,$phys_ptr_cast(P#h,^s_node))));
invariant (p0001 == (F#sll($s,$phys_ptr_cast(L#i,^s_node))));
invariant (p0002 == (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
invariant (p0003 == (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
invariant (p0004 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0005 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0006 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0007 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0008 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0009 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0010 == ($non_null($phys_ptr_cast(P#h,^s_node))));
invariant (p0011 == ($non_null($phys_ptr_cast(L#i,^s_node))));
invariant (p0012 == ($is_null($phys_ptr_cast(P#h,^s_node))));
invariant (p0013 == ($is_null($phys_ptr_cast(L#i,^s_node))));
invariant (p0014 == (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node))));
invariant (p0015 == (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node))));
invariant (p0016 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node)))));
invariant (p0017 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node)))));
invariant (p0018 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node)))));
invariant (p0019 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node)))));
invariant (p0020 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node)))));
invariant (p0021 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node)))));
invariant (p0022 == ((!($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))))));
invariant (p0023 == ((!($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))))));
invariant (p0024 == ((!($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)))))));
invariant (p0025 == ((!($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)))))));
invariant (p0026 == ($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0027 == ($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0028 == ($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)))));
invariant (p0029 == ($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)))));
invariant (p0030 == (((!($intset_in(P#k,F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0031 == (((!($intset_in(P#k,F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0032 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0033 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0034 == ((F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0035 == ((F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0036 == ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0037 == ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0038 == ((P#k < 2147483647)));
invariant (p0039 == ((P#k < 2147483647)));
invariant (p0040 == ((P#k < 4294967295)));
invariant (p0041 == ((P#k < 4294967295)));
invariant (p0042 == ((P#k >= 0)));
invariant (p0043 == ((P#k >= 0)));
invariant (p0044 == (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) < P#k))));
invariant (p0045 == (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) < P#k))));
invariant (p0046 == ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0047 == ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node))))));
invariant (p0048 == ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node))))));
invariant (p0049 == ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node))))));

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
true
);


      invariant OP#ALL_REACH == F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node));
      invariant $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#i, ^s_node));
      invariant $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#i, ^s_node));
      invariant $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(L#i, ^s_node));
    {
      anon40:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#5, $s);
        assume $full_stop_ext(#tok$3^13.3, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(i)) ...
        if ($non_null($phys_ptr_cast(L#i, ^s_node)))
        {
          anon38:
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // struct s_node* j; 
            // j := i; 
            L#j := $phys_ptr_cast(L#i, ^s_node);
            // assert sll_lseg(j, j); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assume sll_lseg(j, j); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assert sll_lseg(i, i); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assume sll_lseg(i, i); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
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
            // assume ==>(@_vcc_ptr_neq_null(i), &&(@_vcc_mutable(@state, i), @writes_check(i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#i, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(i), @_vcc_is_malloc_root(@state, i)); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(L#i, ^s_node));
            // _math \state _dryad_S0; 
            // _dryad_S0 := @_vcc_current_state(@state); 
            SL#_dryad_S0 := $current_state($s);
            // _math \state stmtexpr1#3; 
            // stmtexpr1#3 := _dryad_S0; 
            stmtexpr1#3 := SL#_dryad_S0;
            // assert @prim_writes_check((j->next)); 
            assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#j, ^s_node), s_node.next));
            // *(j->next) := (struct s_node*)@null; 
            call $write_int(s_node.next, $phys_ptr_cast(L#j, ^s_node), $ptr_to_int($phys_ptr_cast($null, ^s_node)));
            assume $full_stop_ext(#tok$3^23.5, $s);
            // _math \state _dryad_S1; 
            // _dryad_S1 := @_vcc_current_state(@state); 
            SL#_dryad_S1 := $current_state($s);
            // _math \state stmtexpr2#4; 
            // stmtexpr2#4 := _dryad_S1; 
            stmtexpr2#4 := SL#_dryad_S1;
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(i0)))), ==(old(_dryad_S0, sll_keys(i0)), old(_dryad_S1, sll_keys(i0)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#i0, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(SL#i0, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(i0)))), ==(old(_dryad_S0, sll(i0)), old(_dryad_S1, sll(i0)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#i0, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(SL#i0, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(i0)))), ==(old(_dryad_S0, sll_reach(i0)), old(_dryad_S1, sll_reach(i0)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#i0, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(SL#i0, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll_keys(i)), old(_dryad_S1, sll_keys(i)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll(i)), old(_dryad_S1, sll(i)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll_reach(i)), old(_dryad_S1, sll_reach(i)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll_keys(h)), old(_dryad_S1, sll_keys(h)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll(h)), old(_dryad_S1, sll(h)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll_reach(h)), old(_dryad_S1, sll_reach(h)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(j, i0)), ==(*((i0->key)), old(_dryad_S0, *((i0->key))))); 
            assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(SL#i0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#i0, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(j, i0)), @_vcc_ptr_eq_pure(*((i0->next)), old(_dryad_S0, *((i0->next))))); 
            assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(SL#i0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#i0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(SL#i0, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(j, i)), ==(*((i->key)), old(_dryad_S0, *((i->key))))); 
            assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(j, i)), @_vcc_ptr_eq_pure(*((i->next)), old(_dryad_S0, *((i->next))))); 
            assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(j, h)), ==(*((h->key)), old(_dryad_S0, *((h->key))))); 
            assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(j, h)), @_vcc_ptr_eq_pure(*((h->next)), old(_dryad_S0, *((h->next))))); 
            assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(i0), ==(sll_keys(i0), @_vcc_intset_union(sll_keys(*((i0->next))), @_vcc_intset_singleton(*((i0->key)))))); 
            assume $non_null($phys_ptr_cast(SL#i0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#i0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#i0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#i0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i0), ==(sll(i0), &&(sll(*((i0->next))), unchecked!(@_vcc_oset_in(i0, sll_reach(*((i0->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#i0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#i0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#i0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#i0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#i0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i0), ==(sll_reach(i0), @_vcc_oset_union_one2(sll_reach(*((i0->next))), i0))); 
            assume $non_null($phys_ptr_cast(SL#i0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#i0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#i0, ^s_node), ^s_node)), $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union_one2(sll_reach(*((j->next))), j))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $phys_ptr_cast(L#j, ^s_node));
            // _math \state _dryad_S2; 
            // _dryad_S2 := @_vcc_current_state(@state); 
            SL#_dryad_S2 := $current_state($s);
            // _math \state stmtexpr3#5; 
            // stmtexpr3#5 := _dryad_S2; 
            stmtexpr3#5 := SL#_dryad_S2;
            // void function
            // assert @writes_check(j); 
            assert $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#j, ^s_node));
            // assert @writes_check(@_vcc_extent(@state, j)); 
            assert (forall #writes$3^24.5: $ptr :: { $dont_instantiate(#writes$3^24.5) } $set_in(#writes$3^24.5, $extent($s, $phys_ptr_cast(L#j, ^s_node))) ==> $top_writable($s, #wrTime$3^3.3, #writes$3^24.5));
            // stmt _vcc_free(j); 
            call $free($phys_ptr_cast(L#j, ^s_node));
            assume $full_stop_ext(#tok$3^24.5, $s);
            // _math \state _dryad_S3; 
            // _dryad_S3 := @_vcc_current_state(@state); 
            SL#_dryad_S3 := $current_state($s);
            // _math \state stmtexpr4#6; 
            // stmtexpr4#6 := _dryad_S3; 
            stmtexpr4#6 := SL#_dryad_S3;
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(i0)))), ==(old(_dryad_S2, sll_keys(i0)), old(_dryad_S3, sll_keys(i0)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#i0, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(SL#i0, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(i0)))), ==(old(_dryad_S2, sll(i0)), old(_dryad_S3, sll(i0)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#i0, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(SL#i0, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(i0)))), ==(old(_dryad_S2, sll_reach(i0)), old(_dryad_S3, sll_reach(i0)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#i0, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#i0, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#i0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll_keys(i)), old(_dryad_S3, sll_keys(i)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll(i)), old(_dryad_S3, sll(i)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll_reach(i)), old(_dryad_S3, sll_reach(i)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll_keys(h)), old(_dryad_S3, sll_keys(h)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll(h)), old(_dryad_S3, sll(h)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll_reach(h)), old(_dryad_S3, sll_reach(h)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
            // ALL_REACH := @_vcc_oset_diff(ALL_REACH, @_vcc_oset_singleton(j)); 
            OP#ALL_REACH := $oset_diff(OP#ALL_REACH, $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        }
        else
        {
          anon39:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_1; 
            goto #break_1;
        }

      #continue_1:
        assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#h,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#i,^s_node)));
p0002 := (F#sll_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0004 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0005 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0006 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0007 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0008 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0009 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0010 := ($non_null($phys_ptr_cast(P#h,^s_node)));
p0011 := ($non_null($phys_ptr_cast(L#i,^s_node)));
p0012 := ($is_null($phys_ptr_cast(P#h,^s_node)));
p0013 := ($is_null($phys_ptr_cast(L#i,^s_node)));
p0014 := (($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node)));
p0015 := (($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node)));
p0016 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0017 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0018 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node))));
p0019 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node))));
p0020 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#h,^s_node),^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0021 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#i,^s_node),^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0022 := ((!($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))))));
p0023 := ((!($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))))));
p0024 := ((!($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0025 := ((!($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0026 := ($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0027 := ($intset_in(P#k,F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0028 := ($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0029 := ($intset_in(P#k,F#sll_lseg_keys($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0030 := (((!($intset_in(P#k,F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)))));
p0031 := (((!($intset_in(P#k,F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)))));
p0032 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#i,^s_node))));
p0033 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#h,^s_node))));
p0034 := ((F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0035 := ((F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0036 := ((F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)) == $intset_union(F#sll_keys(loopState#5,$phys_ptr_cast(P#h,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)))));
p0037 := ((F#sll_keys($s,$phys_ptr_cast(L#i,^s_node)) == $intset_union(F#sll_keys(loopState#5,$phys_ptr_cast(L#i,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#h,^s_node)))));
p0038 := ((P#k < 2147483647));
p0039 := ((P#k < 2147483647));
p0040 := ((P#k < 4294967295));
p0041 := ((P#k < 4294967295));
p0042 := ((P#k >= 0));
p0043 := ((P#k >= 0));
p0044 := (($non_null($phys_ptr_cast(P#h,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) < P#k)));
p0045 := (($non_null($phys_ptr_cast(L#i,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) < P#k)));
p0046 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0047 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));
p0048 := ((($non_null($phys_ptr_cast(P#h,^s_node)) && $non_null($phys_ptr_cast(L#i,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)))));
p0049 := ((($non_null($phys_ptr_cast(L#i,^s_node)) && $non_null($phys_ptr_cast(P#h,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#i,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#h,^s_node)))));


    }

  anon42:
    assume $full_stop_ext(#tok$3^13.3, $s);

  #break_1:
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
    // return; 
    assume true;
    assert $position_marker();
    goto #exit;

  #exit:
}



const unique l#public: $label;

const unique #tok$3^24.5: $token;

const unique #tok$3^23.5: $token;

const unique #tok$3^13.3: $token;

const unique #tok$3^10.23: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^3.3: $token;

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cafwp?5CSLL?2Ddelete?2Dall.c: $token;

axiom $file_name_is(3, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cafwp?5CSLL?2Ddelete?2Dall.c);

const unique #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_SLL.h: $token;

axiom $file_name_is(2, #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_SLL.h);

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

