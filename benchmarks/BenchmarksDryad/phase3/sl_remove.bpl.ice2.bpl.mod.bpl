
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
b0032 : bool
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

const unique ^$#sl_remove.c..36776#3: $ctype;

axiom $def_fnptr_type(^$#sl_remove.c..36776#3);

type $#sl_remove.c..36776#3;

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



function F#havoc() : int;

const unique cf#havoc: $pure_function;

axiom $in_range_i4(F#havoc());

axiom $function_arg_type(cf#havoc, 0, ^^i4);

procedure \havoc() returns ($result: int);
  free ensures $in_range_i4($result);
  free ensures $result == F#havoc();
  free ensures $call_transition(old($s), $s);



procedure sl_remove(P#lst: $ptr) returns ($result: $ptr);
  requires F#sll($s, $phys_ptr_cast(P#lst, ^s_node));
  modifies $s, $cev_pc;
  ensures F#sll($s, $phys_ptr_cast($result, ^s_node));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation sl_remove(P#lst: $ptr) returns ($result: $ptr)
{
  var stmtexpr4#11: $state;
  var SL#_dryad_S3: $state;
  var stmtexpr3#10: $state;
  var SL#_dryad_S2: $state;
  var stmtexpr2#9: $state;
  var _dryad_S1#2: $state;
  var stmtexpr1#8: $state;
  var _dryad_S0#1: $state;
  var stmtexpr0#7: $ptr;
  var SL#tmp1: $ptr;
  var L#tmp_next: $ptr;
  var stmtexpr0#12: $ptr;
  var curr0#0: $ptr;
  var stmtexpr2#6: $ptr;
  var SL#curr0: $ptr;
  var stmtexpr1#5: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr0#4: $state;
  var SL#_dryad_S0: $state;
  var ite#2: bool;
  var ite#1: bool;
  var loopState#51: $state;
  var L#nondet: int where $in_range_i4(L#nondet);
  var L#curr: $ptr;
  var L#tmp: $ptr;
  var stmtexpr1#14: $oset;
  var stmtexpr0#13: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var #wrTime$3^6.3: int;
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

// INV:PTR: P#lst, L#curr
// INV:INT:
// INV:LST: sll
// INV:OLD: loopState#51

  anon474:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$3^6.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$3^6.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$3^6.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := sll_reach(lst); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(P#lst, ^s_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#13; 
    // stmtexpr0#13 := _dryad_G0; 
    stmtexpr0#13 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#14; 
    // stmtexpr1#14 := _dryad_G1; 
    stmtexpr1#14 := SL#_dryad_G1;
    // assume ==(glob_reach(), _dryad_G1); 
    assume F#glob_reach() == SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union_one2(sll_reach(*((lst->next))), lst))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(lst), &&(@_vcc_mutable(@state, lst), @writes_check(lst))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#lst, ^s_node)) && $top_writable($s, #wrTime$3^6.3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(lst), @_vcc_is_malloc_root(@state, lst)); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(P#lst, ^s_node));
    assume true;
    // if (@_vcc_ptr_eq_null(lst)) ...
    if ($is_null($phys_ptr_cast(P#lst, ^s_node)))
    {
      anon462:
        // return (struct s_node*)@null; 
        $result := $phys_ptr_cast($null, ^s_node);
        assume true;
        assert $position_marker();
        goto #exit;
    }
    else
    {
      anon471:
        // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
        assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
        assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union_one2(sll_reach(*((lst->next))), lst))); 
        assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
        // struct s_node* tmp; 
        // struct s_node* curr; 
        // int32_t nondet; 
        // var int32_t nondet
        // curr := lst; 
        L#curr := $phys_ptr_cast(P#lst, ^s_node);
        // assert sll_lseg(curr, curr); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume sll_lseg(curr, curr); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assert sll_lseg(tmp, tmp); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume sll_lseg(tmp, tmp); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assert sll_lseg(lst, lst); 
        assert F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
        // assume sll_lseg(lst, lst); 
        assume F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
        loopState#51 := $s;
        assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#lst,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#curr,^s_node)));
p0002 := (F#sll_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0004 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0005 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0006 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0007 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0008 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0009 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0010 := ($non_null($phys_ptr_cast(P#lst,^s_node)));
p0011 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0012 := ($is_null($phys_ptr_cast(P#lst,^s_node)));
p0013 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0014 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0015 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0016 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0017 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0018 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0019 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0020 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0021 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0022 := ((F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node))));
p0023 := ((F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node))));
p0024 := ((F#sll_keys(loopState#51,$phys_ptr_cast(P#lst,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)))));
p0025 := ((F#sll_keys(loopState#51,$phys_ptr_cast(L#curr,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)))));
p0026 := ((F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)) == $intset_union(F#sll_keys(loopState#51,$phys_ptr_cast(P#lst,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)))));
p0027 := ((F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)) == $intset_union(F#sll_keys(loopState#51,$phys_ptr_cast(L#curr,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)))));
p0028 := ((($non_null($phys_ptr_cast(P#lst,^s_node)) && $non_null($phys_ptr_cast(L#curr,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)))));
p0029 := ((($non_null($phys_ptr_cast(L#curr,^s_node)) && $non_null($phys_ptr_cast(P#lst,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)))));
p0030 := ((($non_null($phys_ptr_cast(P#lst,^s_node)) && $non_null($phys_ptr_cast(L#curr,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)))));
p0031 := ((($non_null($phys_ptr_cast(L#curr,^s_node)) && $non_null($phys_ptr_cast(P#lst,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)))));


    while (true)


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

invariant my_inv ((F#sll($s,$phys_ptr_cast(P#lst,^s_node))), 
(F#sll($s,$phys_ptr_cast(L#curr,^s_node))), 
(F#sll_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))), 
(F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))), 
($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))), 
($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node)))), 
($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))), 
($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node)))), 
($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)))), 
($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node)))), 
($non_null($phys_ptr_cast(P#lst,^s_node))), 
($non_null($phys_ptr_cast(L#curr,^s_node))), 
($is_null($phys_ptr_cast(P#lst,^s_node))), 
($is_null($phys_ptr_cast(L#curr,^s_node))), 
(($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node))), 
(($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node))), 
(($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node)))), 
(($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))), 
(($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node)))), 
(($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))), 
(($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))), 
(($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node)))), 
((F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)))), 
((F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)))), 
((F#sll_keys(loopState#51,$phys_ptr_cast(P#lst,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node))))), 
((F#sll_keys(loopState#51,$phys_ptr_cast(L#curr,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node))))), 
((F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)) == $intset_union(F#sll_keys(loopState#51,$phys_ptr_cast(P#lst,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node))))), 
((F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)) == $intset_union(F#sll_keys(loopState#51,$phys_ptr_cast(L#curr,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node))))), 
((($non_null($phys_ptr_cast(P#lst,^s_node)) && $non_null($phys_ptr_cast(L#curr,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node))))), 
((($non_null($phys_ptr_cast(L#curr,^s_node)) && $non_null($phys_ptr_cast(P#lst,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node))))), 
((($non_null($phys_ptr_cast(P#lst,^s_node)) && $non_null($phys_ptr_cast(L#curr,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node))))), 
((($non_null($phys_ptr_cast(L#curr,^s_node)) && $non_null($phys_ptr_cast(P#lst,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node))))), 
true ) ;


          invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node));
          invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $top_writable($s, #wrTime$3^6.3, $phys_ptr_cast(L#curr, ^s_node));
          invariant $is_malloc_root($s, $phys_ptr_cast(L#curr, ^s_node));
        {
          anon467:
            assume $writes_nothing(old($s), $s);
            assume $timestamp_post(loopState#51, $s);
            assume $full_stop_ext(#tok$3^18.5, $s);
            // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
            assume $meta_eq(loopState#51, $s);
            // _Bool ite#1; 
            // _Bool ite#2; 
            // ite#2 := (_Bool)nondet; 
            ite#2 := $int_to_bool(L#nondet);
            assume true;
            // if (ite#2) ...
            if (ite#2)
            {
              anon463:
                // assert @_vcc_possibly_unreachable; 
                assert {:PossiblyUnreachable true} true;
                // assert @reads_check_normal((curr->next)); 
                assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
                // ite#1 := @_vcc_ptr_neq_null(*((curr->next))); 
                ite#1 := $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node));
            }
            else
            {
              anon464:
                // assert @_vcc_possibly_unreachable; 
                assert {:PossiblyUnreachable true} true;
                // ite#1 := false; 
                ite#1 := false;
            }

          anon468:
            assume true;
            // if (ite#1) ...
            if (ite#1)
            {
              anon465:
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
                assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
                assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
                assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union_one2(sll_reach(*((lst->next))), lst))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union_one2(sll_lseg_reach(*((lst->next)), curr), lst))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
                // _math \state _dryad_S0; 
                // _dryad_S0 := @_vcc_current_state(@state); 
                SL#_dryad_S0 := $current_state($s);
                // _math \state stmtexpr0#4; 
                // stmtexpr0#4 := _dryad_S0; 
                stmtexpr0#4 := SL#_dryad_S0;
                // nondet := havoc(); 
                call L#nondet := \havoc();
                assume $full_stop_ext(#tok$3^27.16, $s);
                // _math \state _dryad_S1; 
                // _dryad_S1 := @_vcc_current_state(@state); 
                SL#_dryad_S1 := $current_state($s);
                // _math \state stmtexpr1#5; 
                // stmtexpr1#5 := _dryad_S1; 
                stmtexpr1#5 := SL#_dryad_S1;
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
                assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
                assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
                assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union_one2(sll_reach(*((lst->next))), lst))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union_one2(sll_lseg_reach(*((lst->next)), curr), lst))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
                // struct s_node* curr0; 
                // curr0 := curr; 
                SL#curr0 := $phys_ptr_cast(L#curr, ^s_node);
                // struct s_node* stmtexpr2#6; 
                // stmtexpr2#6 := curr0; 
                stmtexpr2#6 := $phys_ptr_cast(SL#curr0, ^s_node);
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
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union_one2(sll_lseg_reach(*((lst->next)), curr), lst))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
                // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
                assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node)) && $top_writable($s, #wrTime$3^6.3, $phys_ptr_cast(L#curr, ^s_node));
                // assume @_vcc_is_malloc_root(@state, curr); 
                assume $is_malloc_root($s, $phys_ptr_cast(L#curr, ^s_node));
            }
            else
            {
              anon466:
                // assert @_vcc_possibly_unreachable; 
                assert {:PossiblyUnreachable true} true;
                // goto #break_3; 
                goto #break_3;
            }

          #continue_3:
            assume true;

p0000 := (F#sll($s,$phys_ptr_cast(P#lst,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#curr,^s_node)));
p0002 := (F#sll_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0004 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0005 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0006 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0007 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0008 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0009 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0010 := ($non_null($phys_ptr_cast(P#lst,^s_node)));
p0011 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0012 := ($is_null($phys_ptr_cast(P#lst,^s_node)));
p0013 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0014 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0015 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0016 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0017 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0018 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0019 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0020 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0021 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0022 := ((F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)) == F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node))));
p0023 := ((F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node))));
p0024 := ((F#sll_keys(loopState#51,$phys_ptr_cast(P#lst,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)))));
p0025 := ((F#sll_keys(loopState#51,$phys_ptr_cast(L#curr,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)))));
p0026 := ((F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)) == $intset_union(F#sll_keys(loopState#51,$phys_ptr_cast(P#lst,^s_node)),F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)))));
p0027 := ((F#sll_keys($s,$phys_ptr_cast(L#curr,^s_node)) == $intset_union(F#sll_keys(loopState#51,$phys_ptr_cast(L#curr,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#lst,^s_node)))));
p0028 := ((($non_null($phys_ptr_cast(P#lst,^s_node)) && $non_null($phys_ptr_cast(L#curr,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)))));
p0029 := ((($non_null($phys_ptr_cast(L#curr,^s_node)) && $non_null($phys_ptr_cast(P#lst,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)))));
p0030 := ((($non_null($phys_ptr_cast(P#lst,^s_node)) && $non_null($phys_ptr_cast(L#curr,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)))));
p0031 := ((($non_null($phys_ptr_cast(L#curr,^s_node)) && $non_null($phys_ptr_cast(P#lst,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(L#curr,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#lst,^s_node)))));


        }

      anon472:
        assume $full_stop_ext(#tok$3^18.5, $s);

      #break_3:
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
        assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
        assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union_one2(sll_reach(*((lst->next))), lst))); 
        assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
        // struct s_node* curr0#0; 
        // curr0#0 := curr; 
        curr0#0 := $phys_ptr_cast(L#curr, ^s_node);
        // struct s_node* stmtexpr0#12; 
        // stmtexpr0#12 := curr0#0; 
        stmtexpr0#12 := $phys_ptr_cast(curr0#0, ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
        // assert @reads_check_normal((curr->next)); 
        assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
        // tmp := *((curr->next)); 
        L#tmp := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(tmp), &&(@_vcc_mutable(@state, tmp), @writes_check(tmp))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#tmp, ^s_node)) && $top_writable($s, #wrTime$3^6.3, $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(tmp), @_vcc_is_malloc_root(@state, tmp)); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> $is_malloc_root($s, $phys_ptr_cast(L#tmp, ^s_node));
        assume true;
        // if (@_vcc_ptr_neq_null(tmp)) ...
        if ($non_null($phys_ptr_cast(L#tmp, ^s_node)))
        {
          anon469:
            // assume ==>(@_vcc_ptr_neq_null(curr0#0), ==(sll_keys(curr0#0), @_vcc_intset_union(sll_keys(*((curr0#0->next))), @_vcc_intset_singleton(*((curr0#0->key)))))); 
            assume $non_null($phys_ptr_cast(curr0#0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(curr0#0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(curr0#0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0#0), ==(sll(curr0#0), &&(sll(*((curr0#0->next))), unchecked!(@_vcc_oset_in(curr0#0, sll_reach(*((curr0#0->next)))))))); 
            assume $non_null($phys_ptr_cast(curr0#0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(curr0#0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(curr0#0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0#0), ==(sll_reach(curr0#0), @_vcc_oset_union_one2(sll_reach(*((curr0#0->next))), curr0#0))); 
            assume $non_null($phys_ptr_cast(curr0#0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(curr0#0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node)), $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union_one2(sll_reach(*((lst->next))), lst))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union_one2(sll_lseg_reach(*((lst->next)), curr), lst))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union_one2(sll_lseg_reach(*((lst->next)), curr), lst))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // struct s_node* tmp_next; 
            // struct s_node* tmp1; 
            // tmp1 := tmp; 
            SL#tmp1 := $phys_ptr_cast(L#tmp, ^s_node);
            // struct s_node* stmtexpr0#7; 
            // stmtexpr0#7 := tmp1; 
            stmtexpr0#7 := $phys_ptr_cast(SL#tmp1, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
            // assert @reads_check_normal((tmp->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#tmp, ^s_node));
            // tmp_next := *((tmp->next)); 
            L#tmp_next := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll_keys(tmp_next), @_vcc_intset_union(sll_keys(*((tmp_next->next))), @_vcc_intset_singleton(*((tmp_next->key)))))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp_next, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll(tmp_next), &&(sll(*((tmp_next->next))), unchecked!(@_vcc_oset_in(tmp_next, sll_reach(*((tmp_next->next)))))))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp_next, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll_reach(tmp_next), @_vcc_oset_union_one2(sll_reach(*((tmp_next->next))), tmp_next))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
            // _math \state _dryad_S0#1; 
            // _dryad_S0#1 := @_vcc_current_state(@state); 
            _dryad_S0#1 := $current_state($s);
            // _math \state stmtexpr1#8; 
            // stmtexpr1#8 := _dryad_S0#1; 
            stmtexpr1#8 := _dryad_S0#1;
            // assert @prim_writes_check((curr->next)); 
            assert $writable_prim($s, #wrTime$3^6.3, $dot($phys_ptr_cast(L#curr, ^s_node), s_node.next));
            // *(curr->next) := tmp_next; 
            call $write_int(s_node.next, $phys_ptr_cast(L#curr, ^s_node), $ptr_to_int($phys_ptr_cast(L#tmp_next, ^s_node)));
            assume $full_stop_ext(#tok$3^37.7, $s);
            // _math \state _dryad_S1#2; 
            // _dryad_S1#2 := @_vcc_current_state(@state); 
            _dryad_S1#2 := $current_state($s);
            // _math \state stmtexpr2#9; 
            // stmtexpr2#9 := _dryad_S1#2; 
            stmtexpr2#9 := _dryad_S1#2;
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp1)))), ==(old(_dryad_S0#1, sll_keys(tmp1)), old(_dryad_S1#2, sll_keys(tmp1)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#tmp1, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(SL#tmp1, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp1)))), ==(old(_dryad_S0#1, sll(tmp1)), old(_dryad_S1#2, sll(tmp1)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#tmp1, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(SL#tmp1, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp1)))), ==(old(_dryad_S0#1, sll_reach(tmp1)), old(_dryad_S1#2, sll_reach(tmp1)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#tmp1, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(SL#tmp1, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp_next)))), ==(old(_dryad_S0#1, sll_keys(tmp_next)), old(_dryad_S1#2, sll_keys(tmp_next)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp_next, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(L#tmp_next, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp_next)))), ==(old(_dryad_S0#1, sll(tmp_next)), old(_dryad_S1#2, sll(tmp_next)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp_next, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(L#tmp_next, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp_next)))), ==(old(_dryad_S0#1, sll_reach(tmp_next)), old(_dryad_S1#2, sll_reach(tmp_next)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp_next, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp_next, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(curr0#0)))), ==(old(_dryad_S0#1, sll_keys(curr0#0)), old(_dryad_S1#2, sll_keys(curr0#0)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(curr0#0, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(curr0#0, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(curr0#0)))), ==(old(_dryad_S0#1, sll(curr0#0)), old(_dryad_S1#2, sll(curr0#0)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(curr0#0, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(curr0#0, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(curr0#0)))), ==(old(_dryad_S0#1, sll_reach(curr0#0)), old(_dryad_S1#2, sll_reach(curr0#0)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(curr0#0, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(curr0#0, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp)))), ==(old(_dryad_S0#1, sll_keys(tmp)), old(_dryad_S1#2, sll_keys(tmp)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(L#tmp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp)))), ==(old(_dryad_S0#1, sll(tmp)), old(_dryad_S1#2, sll(tmp)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(L#tmp, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(L#tmp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(tmp)))), ==(old(_dryad_S0#1, sll_reach(tmp)), old(_dryad_S1#2, sll_reach(tmp)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(L#tmp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(lst)))), ==(old(_dryad_S0#1, sll_keys(lst)), old(_dryad_S1#2, sll_keys(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(lst)))), ==(old(_dryad_S0#1, sll(lst)), old(_dryad_S1#2, sll(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_reach(lst)))), ==(old(_dryad_S0#1, sll_reach(lst)), old(_dryad_S1#2, sll_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S0#1, sll_lseg(lst, curr)), old(_dryad_S1#2, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S0#1, sll_lseg_reach(lst, curr)), old(_dryad_S1#2, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S0#1, sll_lseg_keys(lst, curr)), old(_dryad_S1#2, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S0#1, sll_lseg(lst, curr)), old(_dryad_S1#2, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S0#1, sll_lseg_reach(lst, curr)), old(_dryad_S1#2, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0#1, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S0#1, sll_lseg_keys(lst, curr)), old(_dryad_S1#2, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(_dryad_S0#1, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(_dryad_S1#2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, tmp1)), ==(*((tmp1->key)), old(_dryad_S0#1, *((tmp1->key))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(SL#tmp1, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#tmp1, ^s_node)) == $rd_inv(_dryad_S0#1, s_node.key, $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, tmp1)), @_vcc_ptr_eq_pure(*((tmp1->next)), old(_dryad_S0#1, *((tmp1->next))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(SL#tmp1, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#tmp1, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S0#1, s_node.next, $phys_ptr_cast(SL#tmp1, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, tmp_next)), ==(*((tmp_next->key)), old(_dryad_S0#1, *((tmp_next->key))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(L#tmp_next, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp_next, ^s_node)) == $rd_inv(_dryad_S0#1, s_node.key, $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, tmp_next)), @_vcc_ptr_eq_pure(*((tmp_next->next)), old(_dryad_S0#1, *((tmp_next->next))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(L#tmp_next, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S0#1, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, curr0#0)), ==(*((curr0#0->key)), old(_dryad_S0#1, *((curr0#0->key))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(curr0#0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(curr0#0, ^s_node)) == $rd_inv(_dryad_S0#1, s_node.key, $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, curr0#0)), @_vcc_ptr_eq_pure(*((curr0#0->next)), old(_dryad_S0#1, *((curr0#0->next))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(curr0#0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S0#1, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, tmp)), ==(*((tmp->key)), old(_dryad_S0#1, *((tmp->key))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(L#tmp, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)) == $rd_inv(_dryad_S0#1, s_node.key, $phys_ptr_cast(L#tmp, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, tmp)), @_vcc_ptr_eq_pure(*((tmp->next)), old(_dryad_S0#1, *((tmp->next))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(L#tmp, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S0#1, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, lst)), ==(*((lst->key)), old(_dryad_S0#1, *((lst->key))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) == $rd_inv(_dryad_S0#1, s_node.key, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(curr, lst)), @_vcc_ptr_eq_pure(*((lst->next)), old(_dryad_S0#1, *((lst->next))))); 
            assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S0#1, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(tmp1), ==(sll_keys(tmp1), @_vcc_intset_union(sll_keys(*((tmp1->next))), @_vcc_intset_singleton(*((tmp1->key)))))); 
            assume $non_null($phys_ptr_cast(SL#tmp1, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#tmp1, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#tmp1, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#tmp1, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp1), ==(sll(tmp1), &&(sll(*((tmp1->next))), unchecked!(@_vcc_oset_in(tmp1, sll_reach(*((tmp1->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#tmp1, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#tmp1, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#tmp1, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#tmp1, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#tmp1, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp1), ==(sll_reach(tmp1), @_vcc_oset_union_one2(sll_reach(*((tmp1->next))), tmp1))); 
            assume $non_null($phys_ptr_cast(SL#tmp1, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#tmp1, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#tmp1, ^s_node), ^s_node)), $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll_keys(tmp_next), @_vcc_intset_union(sll_keys(*((tmp_next->next))), @_vcc_intset_singleton(*((tmp_next->key)))))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp_next, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll(tmp_next), &&(sll(*((tmp_next->next))), unchecked!(@_vcc_oset_in(tmp_next, sll_reach(*((tmp_next->next)))))))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp_next, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll_reach(tmp_next), @_vcc_oset_union_one2(sll_reach(*((tmp_next->next))), tmp_next))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr0#0), ==(sll_keys(curr0#0), @_vcc_intset_union(sll_keys(*((curr0#0->next))), @_vcc_intset_singleton(*((curr0#0->key)))))); 
            assume $non_null($phys_ptr_cast(curr0#0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(curr0#0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(curr0#0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0#0), ==(sll(curr0#0), &&(sll(*((curr0#0->next))), unchecked!(@_vcc_oset_in(curr0#0, sll_reach(*((curr0#0->next)))))))); 
            assume $non_null($phys_ptr_cast(curr0#0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(curr0#0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(curr0#0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0#0), ==(sll_reach(curr0#0), @_vcc_oset_union_one2(sll_reach(*((curr0#0->next))), curr0#0))); 
            assume $non_null($phys_ptr_cast(curr0#0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(curr0#0, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(curr0#0, ^s_node), ^s_node)), $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union_one2(sll_reach(*((tmp->next))), tmp))); 
            assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union_one2(sll_reach(*((lst->next))), lst))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union_one2(sll_reach(*((curr->next))), curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll_keys(tmp_next), @_vcc_intset_union(sll_keys(*((tmp_next->next))), @_vcc_intset_singleton(*((tmp_next->key)))))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp_next, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll(tmp_next), &&(sll(*((tmp_next->next))), unchecked!(@_vcc_oset_in(tmp_next, sll_reach(*((tmp_next->next)))))))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp_next, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(tmp_next), ==(sll_reach(tmp_next), @_vcc_oset_union_one2(sll_reach(*((tmp_next->next))), tmp_next))); 
            assume $non_null($phys_ptr_cast(L#tmp_next, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp_next, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp_next, ^s_node), ^s_node)), $phys_ptr_cast(L#tmp_next, ^s_node));
            // _math \state _dryad_S2; 
            // _dryad_S2 := @_vcc_current_state(@state); 
            SL#_dryad_S2 := $current_state($s);
            // _math \state stmtexpr3#10; 
            // stmtexpr3#10 := _dryad_S2; 
            stmtexpr3#10 := SL#_dryad_S2;
            // void function
            // assert @writes_check(tmp); 
            assert $top_writable($s, #wrTime$3^6.3, $phys_ptr_cast(L#tmp, ^s_node));
            // assert @writes_check(@_vcc_extent(@state, tmp)); 
            assert (forall #writes$3^38.7: $ptr :: { $dont_instantiate(#writes$3^38.7) } $set_in(#writes$3^38.7, $extent($s, $phys_ptr_cast(L#tmp, ^s_node))) ==> $top_writable($s, #wrTime$3^6.3, #writes$3^38.7));
            // stmt _vcc_free(tmp); 
            call $free($phys_ptr_cast(L#tmp, ^s_node));
            assume $full_stop_ext(#tok$3^38.7, $s);
            // _math \state _dryad_S3; 
            // _dryad_S3 := @_vcc_current_state(@state); 
            SL#_dryad_S3 := $current_state($s);
            // _math \state stmtexpr4#11; 
            // stmtexpr4#11 := _dryad_S3; 
            stmtexpr4#11 := SL#_dryad_S3;
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(tmp1)))), ==(old(_dryad_S2, sll_keys(tmp1)), old(_dryad_S3, sll_keys(tmp1)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#tmp1, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(SL#tmp1, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(tmp1)))), ==(old(_dryad_S2, sll(tmp1)), old(_dryad_S3, sll(tmp1)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#tmp1, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(SL#tmp1, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(tmp1)))), ==(old(_dryad_S2, sll_reach(tmp1)), old(_dryad_S3, sll_reach(tmp1)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#tmp1, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#tmp1, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#tmp1, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(tmp_next)))), ==(old(_dryad_S2, sll_keys(tmp_next)), old(_dryad_S3, sll_keys(tmp_next)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#tmp_next, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#tmp_next, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(tmp_next)))), ==(old(_dryad_S2, sll(tmp_next)), old(_dryad_S3, sll(tmp_next)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#tmp_next, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#tmp_next, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(tmp_next)))), ==(old(_dryad_S2, sll_reach(tmp_next)), old(_dryad_S3, sll_reach(tmp_next)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#tmp_next, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#tmp_next, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#tmp_next, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(curr0#0)))), ==(old(_dryad_S2, sll_keys(curr0#0)), old(_dryad_S3, sll_keys(curr0#0)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(curr0#0, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(curr0#0, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(curr0#0)))), ==(old(_dryad_S2, sll(curr0#0)), old(_dryad_S3, sll(curr0#0)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(curr0#0, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(curr0#0, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(curr0#0)))), ==(old(_dryad_S2, sll_reach(curr0#0)), old(_dryad_S3, sll_reach(curr0#0)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(curr0#0, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(curr0#0, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(curr0#0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll_keys(curr)), old(_dryad_S3, sll_keys(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll(curr)), old(_dryad_S3, sll(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll_reach(curr)), old(_dryad_S3, sll_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll_keys(lst)), old(_dryad_S3, sll_keys(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll(lst)), old(_dryad_S3, sll(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll_reach(lst)), old(_dryad_S3, sll_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S2, sll_lseg(lst, curr)), old(_dryad_S3, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S2, sll_lseg_reach(lst, curr)), old(_dryad_S3, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S2, sll_lseg_keys(lst, curr)), old(_dryad_S3, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S2, sll_lseg(lst, curr)), old(_dryad_S3, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S2, sll_lseg_reach(lst, curr)), old(_dryad_S3, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S2, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S2, sll_lseg_keys(lst, curr)), old(_dryad_S3, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        }
        else
        {
          anon470:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
        }

      anon473:
        // return lst; 
        $result := $phys_ptr_cast(P#lst, ^s_node);
        assume true;
        assert $position_marker();
        goto #exit;
    }

  anon475:
    // skip

  #exit:
}



const unique l#public: $label;

const unique #tok$3^38.7: $token;

const unique #tok$3^37.7: $token;

const unique #tok$3^27.16: $token;

const unique #tok$3^18.5: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^6.3: $token;

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cgrass?5Csl_remove.c: $token;

axiom $file_name_is(3, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cgrass?5Csl_remove.c);

const unique #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cgrass?5Cdryad_sl.h: $token;

axiom $file_name_is(2, #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cgrass?5Cdryad_sl.h);

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

