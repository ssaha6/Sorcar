
const {:existential true} b0000 : bool;
const {:existential true} b0001 : bool;
const {:existential true} b0002 : bool;
const {:existential true} b0003 : bool;
const {:existential true} b0004 : bool;
const {:existential true} b0005 : bool;
const {:existential true} b0006 : bool;
const {:existential true} b0007 : bool;
const {:existential true} b0008 : bool;
const {:existential true} b0009 : bool;
const {:existential true} b0010 : bool;
const {:existential true} b0011 : bool;

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

const unique ^$#DLL_fix.c..36776#3: $ctype;

axiom $def_fnptr_type(^$#DLL_fix.c..36776#3);

type $#DLL_fix.c..36776#3;

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

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#dll_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> F#dll_lseg(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node) ==> F#dll_lseg(#s, SP#hd, SP#tl)) && ($non_null($phys_ptr_cast(SP#hd, ^d_node)) && $is_null($phys_ptr_cast(SP#tl, ^d_node)) ==> F#dll_lseg(#s, SP#hd, SP#tl) == F#dll(#s, $phys_ptr_cast(SP#hd, ^d_node))) && (F#dll(#s, $phys_ptr_cast(SP#tl, ^d_node)) && $oset_disjoint(F#dll_reach(#s, $phys_ptr_cast(SP#tl, ^d_node)), F#dll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node))) ==> F#dll(#s, $phys_ptr_cast(SP#hd, ^d_node))) && ($non_null($phys_ptr_cast(SP#hd, ^d_node)) && F#dll(#s, $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)) && $oset_disjoint(F#dll_reach(#s, $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)), F#dll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^d_node), F#dll_reach(#s, $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^d_node), F#dll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node))) ==> F#dll_lseg(#s, $phys_ptr_cast(SP#hd, ^d_node), $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)) && F#dll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^d_node), $rd_phys_ptr(#s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)) == $oset_union($oset_singleton($phys_ptr_cast(SP#tl, ^d_node)), F#dll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node)))));

axiom $function_arg_type(cf#dll_lseg, 0, ^^bool);

axiom $function_arg_type(cf#dll_lseg, 1, $ptr_to(^d_node));

axiom $function_arg_type(cf#dll_lseg, 2, $ptr_to(^d_node));

procedure dll_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> $result;
  ensures $is_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node) ==> $result;
  ensures $non_null($phys_ptr_cast(SP#hd, ^d_node)) && $is_null($phys_ptr_cast(SP#tl, ^d_node)) ==> $result == F#dll($s, $phys_ptr_cast(SP#hd, ^d_node));
  ensures F#dll($s, $phys_ptr_cast(SP#tl, ^d_node)) && $oset_disjoint(F#dll_reach($s, $phys_ptr_cast(SP#tl, ^d_node)), F#dll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node))) ==> F#dll($s, $phys_ptr_cast(SP#hd, ^d_node));
  ensures $non_null($phys_ptr_cast(SP#hd, ^d_node)) && F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)) && $oset_disjoint(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)), F#dll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^d_node), F#dll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node))) ==> F#dll_lseg($s, $phys_ptr_cast(SP#hd, ^d_node), $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)) && F#dll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^d_node), $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(SP#tl, ^d_node), ^d_node)) == $oset_union($oset_singleton($phys_ptr_cast(SP#tl, ^d_node)), F#dll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^d_node), $phys_ptr_cast(SP#tl, ^d_node)));
  free ensures $result == F#dll_lseg($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#dll_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#dll_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#dll_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> F#dll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($is_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node) ==> F#dll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^d_node), F#dll_lseg_reach(#s, SP#hd, SP#tl))) && ($non_null($phys_ptr_cast(SP#hd, ^d_node)) && $is_null($phys_ptr_cast(SP#tl, ^d_node)) ==> F#dll_lseg_reach(#s, SP#hd, SP#tl) == F#dll_reach(#s, $phys_ptr_cast(SP#hd, ^d_node))));

axiom $function_arg_type(cf#dll_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#dll_lseg_reach, 1, $ptr_to(^d_node));

axiom $function_arg_type(cf#dll_lseg_reach, 2, $ptr_to(^d_node));

procedure dll_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $phys_ptr_cast(SP#hd, ^d_node) == $phys_ptr_cast(SP#tl, ^d_node) ==> $result == $oset_empty();
  ensures $is_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^d_node)) && $phys_ptr_cast(SP#hd, ^d_node) != $phys_ptr_cast(SP#tl, ^d_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^d_node), $result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^d_node)) && $is_null($phys_ptr_cast(SP#tl, ^d_node)) ==> $result == F#dll_reach($s, $phys_ptr_cast(SP#hd, ^d_node));
  free ensures $result == F#dll_lseg_reach($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



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

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg(#s, SP#hd, SP#tl)) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg(#s, SP#hd, SP#tl) == F#sll(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && F#sll(#s, $phys_ptr_cast(SP#tl, ^s_node)) && $oset_disjoint(F#sll_reach(#s, $phys_ptr_cast(SP#tl, ^s_node)), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> F#sll(#s, $phys_ptr_cast(SP#hd, ^s_node)) && F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_reach(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_keys(#s, $phys_ptr_cast(SP#tl, ^s_node)), F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && F#sll(#s, $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && $oset_disjoint(F#sll_reach(#s, $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^s_node), F#sll_reach(#s, $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^s_node), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> $oset_in($phys_ptr_cast(SP#tl, ^s_node), F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node))) && F#sll_lseg(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union($intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))), F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union_one1($phys_ptr_cast(SP#tl, ^s_node), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)))));

axiom $function_arg_type(cf#sll_lseg, 0, ^^bool);

axiom $function_arg_type(cf#sll_lseg, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg, 2, $ptr_to(^s_node));

procedure sll_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && F#sll($s, $phys_ptr_cast(SP#tl, ^s_node)) && $oset_disjoint(F#sll_reach($s, $phys_ptr_cast(SP#tl, ^s_node)), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> F#sll($s, $phys_ptr_cast(SP#hd, ^s_node)) && F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_reach($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_keys($s, $phys_ptr_cast(SP#tl, ^s_node)), F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)));
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && $oset_disjoint(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node))) && !$oset_in($phys_ptr_cast(SP#tl, ^s_node), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> $oset_in($phys_ptr_cast(SP#tl, ^s_node), F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node))) && F#sll_lseg($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union($intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))), F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union_one1($phys_ptr_cast(SP#tl, ^s_node), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)));
  free ensures $result == F#sll_lseg($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#sll_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#sll_lseg_reach(#s, SP#hd, SP#tl))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#sll_lseg_reach, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_reach, 2, $ptr_to(^s_node));

procedure sll_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $oset_empty();
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_reach($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_keys(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $intset;

const unique cf#sll_lseg_keys: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_keys(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == $intset_empty()) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == $intset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $intset_in($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), F#sll_lseg_keys(#s, SP#hd, SP#tl))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_lseg_keys, 0, ^$#intset);

axiom $function_arg_type(cf#sll_lseg_keys, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_keys, 2, $ptr_to(^s_node));

procedure sll_lseg_keys(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $intset);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $intset_empty();
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $intset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $intset_in($rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), $result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_keys($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



procedure polarize(P#h: $ptr) returns ($result: $ptr);
  requires F#sll($s, $phys_ptr_cast(P#h, ^s_node));
  modifies $s, $cev_pc;
  ensures F#dll($s, $phys_ptr_cast($result, ^d_node));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation polarize(P#h: $ptr) returns ($result: $ptr)
{
  var stmtexpr7#9: $ptr;
  var SL#i2: $ptr;
  var stmtexpr6#8: $state;
  var SL#_dryad_S5: $state;
  var stmtexpr5#7: $state;
  var SL#_dryad_S4: $state;
  var stmtexpr4#6: $state;
  var SL#_dryad_S3: $state;
  var stmtexpr3#5: $state;
  var SL#_dryad_S2: $state;
  var stmtexpr2#4: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr1#3: $oset;
  var stmtexpr0#2: $state;
  var SL#_dryad_S0: $state;
  var L#k: $ptr;
  var loopState#3: $state;
  var SL#ALL_REACH: $oset;
  var L#i: $ptr;
  var L#j: $ptr;
  var stmtexpr1#11: $oset;
  var stmtexpr0#10: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var #wrTime$4^4.3: int;
  var #stackframe: int;

// INV:PTR: P#h, L#i, L#j
// INV:INT:
// INV:LST: dll
// INV:LST3: sll
// INV:OLD: loopState#3

  anon29:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$4^4.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$4^4.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$4^4.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // assume true
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := sll_reach(h); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(P#h, ^s_node));
    assume $full_stop_ext(#tok$5^0.0, $s);
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
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
    // struct d_node* j; 
    // struct s_node* i; 
    // _math \oset ALL_REACH; 
    // assume ==>(@_vcc_ptr_neq_null(h), &&(@_vcc_mutable(@state, h), @writes_check(h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#h, ^s_node)) && $top_writable($s, #wrTime$4^4.3, $phys_ptr_cast(P#h, ^s_node));
    // ALL_REACH := sll_reach(h); 
    call SL#ALL_REACH := sll_reach($phys_ptr_cast(P#h, ^s_node));
    assume $full_stop_ext(#tok$4^10.29, $s);
    // i := h; 
    L#i := $phys_ptr_cast(P#h, ^s_node);
    // assert sll_lseg(i, i); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume sll_lseg(i, i); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert dll_lseg(j, j); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#j, ^d_node), $phys_ptr_cast(L#j, ^d_node));
    // assume dll_lseg(j, j); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#j, ^d_node), $phys_ptr_cast(L#j, ^d_node));
    // assert sll_lseg(h, h); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume sll_lseg(h, h); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // j := (struct d_node*)@null; 
    L#j := $phys_ptr_cast($null, ^d_node);
    // assert sll_lseg(i, i); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume sll_lseg(i, i); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert dll_lseg(j, j); 
    assert F#dll_lseg($s, $phys_ptr_cast(L#j, ^d_node), $phys_ptr_cast(L#j, ^d_node));
    // assume dll_lseg(j, j); 
    assume F#dll_lseg($s, $phys_ptr_cast(L#j, ^d_node), $phys_ptr_cast(L#j, ^d_node));
    // assert sll_lseg(h, h); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume sll_lseg(h, h); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(dll(j), &&(&&(dll(*((j->next))), ==>(@_vcc_ptr_neq_null(*((j->next))), @_vcc_ptr_eq_pure(*((*((j->next))->prev)), j))), unchecked!(@_vcc_oset_in(j, dll_reach(*((j->next)))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#j, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#j, ^d_node)) && !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(dll_reach(j), @_vcc_oset_union(dll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
    loopState#3 := $s;
    assume true;
// INV:LOOPHEAD
    while (true)
 invariant b0000 ==> (F#dll($s,$phys_ptr_cast(P#h,^d_node)));
invariant b0001 ==> (F#dll($s,$phys_ptr_cast(L#i,^d_node)));
invariant b0002 ==> (F#dll($s,$phys_ptr_cast(L#j,^d_node)));
invariant b0003 ==> (F#sll($s,$phys_ptr_cast(P#h,^d_node)));
invariant b0004 ==> (F#sll($s,$phys_ptr_cast(L#i,^d_node)));
invariant b0005 ==> (F#sll($s,$phys_ptr_cast(L#j,^d_node)));
invariant b0006 ==> ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#h,^d_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^d_node))));
invariant b0007 ==> ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(P#h,^d_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^d_node))));
invariant b0008 ==> ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#i,^d_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^d_node))));
invariant b0009 ==> ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#i,^d_node)),F#sll_reach($s,$phys_ptr_cast(L#j,^d_node))));
invariant b0010 ==> ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#j,^d_node)),F#sll_reach($s,$phys_ptr_cast(P#h,^d_node))));
invariant b0011 ==> ($oset_disjoint(F#dll_reach($s,$phys_ptr_cast(L#j,^d_node)),F#sll_reach($s,$phys_ptr_cast(L#i,^d_node))));

      invariant $oset_subset(F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)), SL#ALL_REACH);
      invariant $oset_subset(F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)), SL#ALL_REACH);
      invariant $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#i, ^s_node));
      invariant $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $top_writable($s, #wrTime$4^4.3, $phys_ptr_cast(L#i, ^s_node));
    {
      anon28:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#3, $s);
        assume $full_stop_ext(#tok$4^13.3, $s);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#3, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(i)) ...
        if ($non_null($phys_ptr_cast(L#i, ^s_node)))
        {
          anon26:
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll(j), &&(&&(dll(*((j->next))), ==>(@_vcc_ptr_neq_null(*((j->next))), @_vcc_ptr_eq_pure(*((*((j->next))->prev)), j))), unchecked!(@_vcc_oset_in(j, dll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#j, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#j, ^d_node)) && !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll_reach(j), @_vcc_oset_union(dll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // struct d_node* k; 
            // k := j; 
            L#k := $phys_ptr_cast(L#j, ^d_node);
            // assert dll_lseg(k, k); 
            assert F#dll_lseg($s, $phys_ptr_cast(L#k, ^d_node), $phys_ptr_cast(L#k, ^d_node));
            // assume dll_lseg(k, k); 
            assume F#dll_lseg($s, $phys_ptr_cast(L#k, ^d_node), $phys_ptr_cast(L#k, ^d_node));
            // assert sll_lseg(i, i); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assume sll_lseg(i, i); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assert dll_lseg(j, j); 
            assert F#dll_lseg($s, $phys_ptr_cast(L#j, ^d_node), $phys_ptr_cast(L#j, ^d_node));
            // assume dll_lseg(j, j); 
            assume F#dll_lseg($s, $phys_ptr_cast(L#j, ^d_node), $phys_ptr_cast(L#j, ^d_node));
            // assert sll_lseg(h, h); 
            assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // assume sll_lseg(h, h); 
            assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // _math \state _dryad_S0; 
            // _dryad_S0 := @_vcc_current_state(@state); 
            SL#_dryad_S0 := $current_state($s);
            // _math \state stmtexpr0#2; 
            // stmtexpr0#2 := _dryad_S0; 
            stmtexpr0#2 := SL#_dryad_S0;
            // j := _vcc_alloc(@_vcc_typeof((struct d_node*)@null)); 
            call L#j := $alloc(^d_node);
            assume $full_stop_ext(#tok$4^22.9, $s);
            // assume !(@_vcc_oset_in(j, @_vcc_oset_union(_dryad_G0, _dryad_G1))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^d_node), $oset_union(SL#_dryad_G0, SL#_dryad_G1));
            // _dryad_G1 := @_vcc_oset_union(_dryad_G0, @_vcc_oset_singleton(j)); 
            SL#_dryad_G1 := $oset_union(SL#_dryad_G0, $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
            // _math \oset stmtexpr1#3; 
            // stmtexpr1#3 := _dryad_G1; 
            stmtexpr1#3 := SL#_dryad_G1;
            // _math \state _dryad_S1; 
            // _dryad_S1 := @_vcc_current_state(@state); 
            SL#_dryad_S1 := $current_state($s);
            // _math \state stmtexpr2#4; 
            // stmtexpr2#4 := _dryad_S1; 
            stmtexpr2#4 := SL#_dryad_S1;
            // assume ==>(@_vcc_ptr_neq_null(k), ==(dll(k), &&(&&(dll(*((k->next))), ==>(@_vcc_ptr_neq_null(*((k->next))), @_vcc_ptr_eq_pure(*((*((k->next))->prev)), k))), unchecked!(@_vcc_oset_in(k, dll_reach(*((k->next)))))))); 
            assume $non_null($phys_ptr_cast(L#k, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#k, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#k, ^d_node)) && !$oset_in($phys_ptr_cast(L#k, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(k), ==(dll_reach(k), @_vcc_oset_union(dll_reach(*((k->next))), @_vcc_oset_singleton(k)))); 
            assume $non_null($phys_ptr_cast(L#k, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#k, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#k, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll(j), &&(&&(dll(*((j->next))), ==>(@_vcc_ptr_neq_null(*((j->next))), @_vcc_ptr_eq_pure(*((*((j->next))->prev)), j))), unchecked!(@_vcc_oset_in(j, dll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#j, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#j, ^d_node)) && !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll_reach(j), @_vcc_oset_union(dll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, dll_reach(k)))), ==(old(_dryad_S0, dll(k)), old(_dryad_S1, dll(k)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#k, ^d_node))) ==> F#dll(SL#_dryad_S0, $phys_ptr_cast(L#k, ^d_node)) == F#dll(SL#_dryad_S1, $phys_ptr_cast(L#k, ^d_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S0, dll_reach(k)))), ==(old(_dryad_S0, dll_reach(k)), old(_dryad_S1, dll_reach(k)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#k, ^d_node))) ==> F#dll_reach(SL#_dryad_S0, $phys_ptr_cast(L#k, ^d_node)) == F#dll_reach(SL#_dryad_S1, $phys_ptr_cast(L#k, ^d_node));
            // assume @_vcc_ptr_neq_null(k); 
            assume $non_null($phys_ptr_cast(L#k, ^d_node));
            // assume unchecked!(@_vcc_oset_in(k, ALL_REACH)); 
            assume !$oset_in($phys_ptr_cast(L#k, ^d_node), SL#ALL_REACH);
            // ALL_REACH := @_vcc_oset_union(ALL_REACH, @_vcc_oset_singleton(k)); 
            SL#ALL_REACH := $oset_union(SL#ALL_REACH, $oset_singleton($phys_ptr_cast(L#k, ^d_node)));
            // _math \state _dryad_S2; 
            // _dryad_S2 := @_vcc_current_state(@state); 
            SL#_dryad_S2 := $current_state($s);
            // _math \state stmtexpr3#5; 
            // stmtexpr3#5 := _dryad_S2; 
            stmtexpr3#5 := SL#_dryad_S2;
            // assert @prim_writes_check((j->next)); 
            assert $writable_prim($s, #wrTime$4^4.3, $dot($phys_ptr_cast(L#j, ^d_node), d_node.next));
            // *(j->next) := k; 
            call $write_int(d_node.next, $phys_ptr_cast(L#j, ^d_node), $ptr_to_int($phys_ptr_cast(L#k, ^d_node)));
            assume $full_stop_ext(#tok$4^26.5, $s);
            // _math \state _dryad_S3; 
            // _dryad_S3 := @_vcc_current_state(@state); 
            SL#_dryad_S3 := $current_state($s);
            // _math \state stmtexpr4#6; 
            // stmtexpr4#6 := _dryad_S3; 
            stmtexpr4#6 := SL#_dryad_S3;
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, dll_reach(*((j->prev)))))), ==(old(_dryad_S2, dll(*((j->prev)))), old(_dryad_S3, dll(*((j->prev)))))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node))) ==> F#dll(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node)) == F#dll(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, dll_reach(*((j->prev)))))), ==(old(_dryad_S2, dll_reach(*((j->prev)))), old(_dryad_S3, dll_reach(*((j->prev)))))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node)) == F#dll_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, dll_reach(k)))), ==(old(_dryad_S2, dll(k)), old(_dryad_S3, dll(k)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#k, ^d_node))) ==> F#dll(SL#_dryad_S2, $phys_ptr_cast(L#k, ^d_node)) == F#dll(SL#_dryad_S3, $phys_ptr_cast(L#k, ^d_node));
            // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S2, dll_reach(k)))), ==(old(_dryad_S2, dll_reach(k)), old(_dryad_S3, dll_reach(k)))); 
            assume !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#k, ^d_node))) ==> F#dll_reach(SL#_dryad_S2, $phys_ptr_cast(L#k, ^d_node)) == F#dll_reach(SL#_dryad_S3, $phys_ptr_cast(L#k, ^d_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(j, k)), @_vcc_ptr_eq_pure(*((k->prev)), old(_dryad_S2, *((k->prev))))); 
            assume !($phys_ptr_cast(L#j, ^d_node) == $phys_ptr_cast(L#k, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#k, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.prev, $phys_ptr_cast(L#k, ^d_node), ^d_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(j, k)), @_vcc_ptr_eq_pure(*((k->next)), old(_dryad_S2, *((k->next))))); 
            assume !($phys_ptr_cast(L#j, ^d_node) == $phys_ptr_cast(L#k, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S2, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node);
            // assume ==>(@_vcc_ptr_neq_null(k), ==(dll(k), &&(&&(dll(*((k->next))), ==>(@_vcc_ptr_neq_null(*((k->next))), @_vcc_ptr_eq_pure(*((*((k->next))->prev)), k))), unchecked!(@_vcc_oset_in(k, dll_reach(*((k->next)))))))); 
            assume $non_null($phys_ptr_cast(L#k, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#k, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#k, ^d_node)) && !$oset_in($phys_ptr_cast(L#k, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(k), ==(dll_reach(k), @_vcc_oset_union(dll_reach(*((k->next))), @_vcc_oset_singleton(k)))); 
            assume $non_null($phys_ptr_cast(L#k, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#k, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#k, ^d_node)));
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
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll(j), &&(&&(dll(*((j->next))), ==>(@_vcc_ptr_neq_null(*((j->next))), @_vcc_ptr_eq_pure(*((*((j->next))->prev)), j))), unchecked!(@_vcc_oset_in(j, dll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#j, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#j, ^d_node)) && !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll_reach(j), @_vcc_oset_union(dll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(k), ==(dll(k), &&(&&(dll(*((k->next))), ==>(@_vcc_ptr_neq_null(*((k->next))), @_vcc_ptr_eq_pure(*((*((k->next))->prev)), k))), unchecked!(@_vcc_oset_in(k, dll_reach(*((k->next)))))))); 
            assume $non_null($phys_ptr_cast(L#k, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#k, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#k, ^d_node)) && !$oset_in($phys_ptr_cast(L#k, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(k), ==(dll_reach(k), @_vcc_oset_union(dll_reach(*((k->next))), @_vcc_oset_singleton(k)))); 
            assume $non_null($phys_ptr_cast(L#k, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#k, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#k, ^d_node)));
            // _math \state _dryad_S4; 
            // _dryad_S4 := @_vcc_current_state(@state); 
            SL#_dryad_S4 := $current_state($s);
            // _math \state stmtexpr5#7; 
            // stmtexpr5#7 := _dryad_S4; 
            stmtexpr5#7 := SL#_dryad_S4;
            // assert @prim_writes_check((k->prev)); 
            assert $writable_prim($s, #wrTime$4^4.3, $dot($phys_ptr_cast(L#k, ^d_node), d_node.prev));
            // *(k->prev) := j; 
            call $write_int(d_node.prev, $phys_ptr_cast(L#k, ^d_node), $ptr_to_int($phys_ptr_cast(L#j, ^d_node)));
            assume $full_stop_ext(#tok$4^27.5, $s);
            // _math \state _dryad_S5; 
            // _dryad_S5 := @_vcc_current_state(@state); 
            SL#_dryad_S5 := $current_state($s);
            // _math \state stmtexpr6#8; 
            // stmtexpr6#8 := _dryad_S5; 
            stmtexpr6#8 := SL#_dryad_S5;
            // assume ==>(unchecked!(@_vcc_oset_in(k, old(_dryad_S4, dll_reach(*((k->next)))))), ==(old(_dryad_S4, dll(*((k->next)))), old(_dryad_S5, dll(*((k->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#k, ^d_node), F#dll_reach(SL#_dryad_S4, $rd_phys_ptr(SL#_dryad_S4, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node))) ==> F#dll(SL#_dryad_S4, $rd_phys_ptr(SL#_dryad_S4, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) == F#dll(SL#_dryad_S5, $rd_phys_ptr(SL#_dryad_S5, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node));
            // assume ==>(unchecked!(@_vcc_oset_in(k, old(_dryad_S4, dll_reach(*((k->next)))))), ==(old(_dryad_S4, dll_reach(*((k->next)))), old(_dryad_S5, dll_reach(*((k->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#k, ^d_node), F#dll_reach(SL#_dryad_S4, $rd_phys_ptr(SL#_dryad_S4, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node))) ==> F#dll_reach(SL#_dryad_S4, $rd_phys_ptr(SL#_dryad_S4, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node)) == F#dll_reach(SL#_dryad_S5, $rd_phys_ptr(SL#_dryad_S5, d_node.next, $phys_ptr_cast(L#k, ^d_node), ^d_node));
            // assume ==(old(_dryad_S4, dll(k)), old(_dryad_S5, dll(k))); 
            assume F#dll(SL#_dryad_S4, $phys_ptr_cast(L#k, ^d_node)) == F#dll(SL#_dryad_S5, $phys_ptr_cast(L#k, ^d_node));
            // assume ==(old(_dryad_S4, dll_reach(k)), old(_dryad_S5, dll_reach(k))); 
            assume F#dll_reach(SL#_dryad_S4, $phys_ptr_cast(L#k, ^d_node)) == F#dll_reach(SL#_dryad_S5, $phys_ptr_cast(L#k, ^d_node));
            // assume ==>(unchecked!(@_vcc_oset_in(k, old(_dryad_S4, dll_reach(j)))), ==(old(_dryad_S4, dll(j)), old(_dryad_S5, dll(j)))); 
            assume !$oset_in($phys_ptr_cast(L#k, ^d_node), F#dll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^d_node))) ==> F#dll(SL#_dryad_S4, $phys_ptr_cast(L#j, ^d_node)) == F#dll(SL#_dryad_S5, $phys_ptr_cast(L#j, ^d_node));
            // assume ==>(unchecked!(@_vcc_oset_in(k, old(_dryad_S4, dll_reach(j)))), ==(old(_dryad_S4, dll_reach(j)), old(_dryad_S5, dll_reach(j)))); 
            assume !$oset_in($phys_ptr_cast(L#k, ^d_node), F#dll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^d_node))) ==> F#dll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^d_node)) == F#dll_reach(SL#_dryad_S5, $phys_ptr_cast(L#j, ^d_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(k, j)), @_vcc_ptr_eq_pure(*((j->prev)), old(_dryad_S4, *((j->prev))))); 
            assume !($phys_ptr_cast(L#k, ^d_node) == $phys_ptr_cast(L#j, ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S4, d_node.prev, $phys_ptr_cast(L#j, ^d_node), ^d_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(k, j)), @_vcc_ptr_eq_pure(*((j->next)), old(_dryad_S4, *((j->next))))); 
            assume !($phys_ptr_cast(L#k, ^d_node) == $phys_ptr_cast(L#j, ^d_node)) ==> $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node) == $rd_phys_ptr(SL#_dryad_S4, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node);
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll(j), &&(&&(dll(*((j->next))), ==>(@_vcc_ptr_neq_null(*((j->next))), @_vcc_ptr_eq_pure(*((*((j->next))->prev)), j))), unchecked!(@_vcc_oset_in(j, dll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#j, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#j, ^d_node)) && !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll_reach(j), @_vcc_oset_union(dll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll(j), &&(&&(dll(*((j->next))), ==>(@_vcc_ptr_neq_null(*((j->next))), @_vcc_ptr_eq_pure(*((*((j->next))->prev)), j))), unchecked!(@_vcc_oset_in(j, dll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#j, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#j, ^d_node)) && !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(dll_reach(j), @_vcc_oset_union(dll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
            // struct s_node* i2; 
            // i2 := i; 
            SL#i2 := $phys_ptr_cast(L#i, ^s_node);
            // struct s_node* stmtexpr7#9; 
            // stmtexpr7#9 := i2; 
            stmtexpr7#9 := $phys_ptr_cast(SL#i2, ^s_node);
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
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#i, ^s_node)) && $top_writable($s, #wrTime$4^4.3, $phys_ptr_cast(L#i, ^s_node));
        }
        else
        {
          anon27:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_1; 
            goto #break_1;
        }

      #continue_1:
        assume true;
// INV:LOOPTAIL
    }

  anon30:
    assume $full_stop_ext(#tok$4^13.3, $s);

  #break_1:
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union_one2(sll_reach(*((i->next))), i))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $phys_ptr_cast(L#i, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(dll(j), &&(&&(dll(*((j->next))), ==>(@_vcc_ptr_neq_null(*((j->next))), @_vcc_ptr_eq_pure(*((*((j->next))->prev)), j))), unchecked!(@_vcc_oset_in(j, dll_reach(*((j->next)))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll($s, $phys_ptr_cast(L#j, ^d_node)) == (F#dll($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) && ($non_null($rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)) ==> $rd_phys_ptr($s, d_node.prev, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node), ^d_node) == $phys_ptr_cast(L#j, ^d_node)) && !$oset_in($phys_ptr_cast(L#j, ^d_node), F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(dll_reach(j), @_vcc_oset_union(dll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^d_node)) ==> F#dll_reach($s, $phys_ptr_cast(L#j, ^d_node)) == $oset_union(F#dll_reach($s, $rd_phys_ptr($s, d_node.next, $phys_ptr_cast(L#j, ^d_node), ^d_node)), $oset_singleton($phys_ptr_cast(L#j, ^d_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union_one2(sll_reach(*((h->next))), h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union_one2(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $phys_ptr_cast(P#h, ^s_node));
    // return j; 
    $result := $phys_ptr_cast(L#j, ^d_node);
    assume true;
    assert $position_marker();
    goto #exit;

  anon31:
    // skip

  #exit:
}



const unique l#public: $label;

const unique #tok$4^27.5: $token;

const unique #tok$4^26.5: $token;

const unique #tok$4^22.9: $token;

const unique #tok$4^13.3: $token;

const unique #tok$4^10.29: $token;

const unique #tok$5^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(5, #file^?3Cno?20file?3E);

const unique #tok$4^4.3: $token;

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cafwp?5CDLL?2Dfix.c: $token;

axiom $file_name_is(4, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad_Bin?5CTests?5Cafwp?5CDLL?2Dfix.c);

const unique #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_SLL.h: $token;

axiom $file_name_is(3, #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_SLL.h);

const unique #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_DLL.h: $token;

axiom $file_name_is(2, #file^c?3A?5Cusers?5Cdaniel?5Cworkspace?5Cvcdryad_bin?5Ctests?5Cafwp?5Cdryad_DLL.h);

const unique #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^c?3A?5CUsers?5CDaniel?5CWorkspace?5CVCDryad?5Cvcc?5CHost?5Cbin?5CHeaders?5Cvccp.h);

const unique #distTp2: $ctype;

axiom #distTp2 == $ptr_to(^s_node);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^d_node);

