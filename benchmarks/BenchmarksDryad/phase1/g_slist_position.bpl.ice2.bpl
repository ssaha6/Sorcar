
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
b0075 : bool
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

const unique ^$#_purecall_handler#1: $ctype;

axiom $def_fnptr_type(^$#_purecall_handler#1);

type $#_purecall_handler#1;

const unique ^$#_invalid_parameter_handler#2: $ctype;

axiom $def_fnptr_type(^$#_invalid_parameter_handler#2);

type $#_invalid_parameter_handler#2;

const unique ^$#g_slist_position.c..36263#3: $ctype;

axiom $def_fnptr_type(^$#g_slist_position.c..36263#3);

type $#g_slist_position.c..36263#3;

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



function F#sll_list_len_next(#s: $state, SP#x: $ptr) : int;

const unique cf#sll_list_len_next: $pure_function;

axiom (forall #s: $state, SP#x: $ptr :: { F#sll_list_len_next(#s, SP#x) } 1 < $decreases_level ==> $in_range_nat(F#sll_list_len_next(#s, SP#x)) && ($non_null($phys_ptr_cast(SP#x, ^s_node)) ==> F#sll_list_len_next(#s, SP#x) > 0) && ($is_null($phys_ptr_cast(SP#x, ^s_node)) ==> F#sll_list_len_next(#s, SP#x) == 0));

axiom $function_arg_type(cf#sll_list_len_next, 0, ^^nat);

axiom $function_arg_type(cf#sll_list_len_next, 1, $ptr_to(^s_node));

procedure sll_list_len_next(SP#x: $ptr) returns ($result: int);
  free ensures $in_range_nat($result);
  ensures $non_null($phys_ptr_cast(SP#x, ^s_node)) ==> $result > 0;
  ensures $is_null($phys_ptr_cast(SP#x, ^s_node)) ==> $result == 0;
  free ensures $result == F#sll_list_len_next($s, SP#x);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : bool;

const unique cf#sll_lseg: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg(#s, SP#hd, SP#tl) == F#sll(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg(#s, SP#hd, SP#tl)) && (F#sll_lseg(#s, SP#hd, SP#tl) ==> $oset_disjoint(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)))) && (F#sll_lseg(#s, SP#hd, SP#tl) && F#sll(#s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll(#s, $phys_ptr_cast(SP#hd, ^s_node)) && F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_reach(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next(#s, $phys_ptr_cast(SP#tl, ^s_node)))) && (F#sll_lseg(#s, SP#hd, SP#tl) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#hd, ^s_node) && !$oset_in($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> F#sll_lseg(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1)));

axiom $function_arg_type(cf#sll_lseg, 0, ^^bool);

axiom $function_arg_type(cf#sll_lseg, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg, 2, $ptr_to(^s_node));

procedure sll_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $result ==> $oset_disjoint(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)));
  ensures $result && F#sll($s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SP#hd, ^s_node)) && F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_reach($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next($s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next($s, $phys_ptr_cast(SP#tl, ^s_node)));
  ensures $result && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#hd, ^s_node) && !$oset_in($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> F#sll_lseg($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1);
  free ensures $result == F#sll_lseg($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#sll_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#sll_lseg_reach(#s, SP#hd, SP#tl))));

axiom $function_arg_type(cf#sll_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#sll_lseg_reach, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_reach, 2, $ptr_to(^s_node));

procedure sll_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result);
  free ensures $result == F#sll_lseg_reach($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_keys(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $intset;

const unique cf#sll_lseg_keys: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_keys(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == $intset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $intset_in($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), F#sll_lseg_keys(#s, SP#hd, SP#tl))));

axiom $function_arg_type(cf#sll_lseg_keys, 0, ^$#intset);

axiom $function_arg_type(cf#sll_lseg_keys, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_keys, 2, $ptr_to(^s_node));

procedure sll_lseg_keys(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $intset);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $intset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $intset_in($rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), $result);
  free ensures $result == F#sll_lseg_keys($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_len_next(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : int;

const unique cf#sll_lseg_len_next: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_len_next(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> $in_range_nat(F#sll_lseg_len_next(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_len_next(#s, SP#hd, SP#tl) == F#sll_list_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_len_next(#s, SP#hd, SP#tl) == 0) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_len_next(#s, SP#hd, SP#tl) > 0));

axiom $function_arg_type(cf#sll_lseg_len_next, 0, ^^nat);

axiom $function_arg_type(cf#sll_lseg_len_next, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_len_next, 2, $ptr_to(^s_node));

procedure sll_lseg_len_next(SP#hd: $ptr, SP#tl: $ptr) returns ($result: int);
  free ensures $in_range_nat($result);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_list_len_next($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == 0;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $result > 0;
  free ensures $result == F#sll_lseg_len_next($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



procedure g_slist_position(P#list: $ptr, P#link: $ptr) returns ($result: int);
  requires F#sll($s, $phys_ptr_cast(P#list, ^s_node));
  requires F#sll_list_len_next($s, $phys_ptr_cast(P#list, ^s_node)) < 2147483647;
  free requires -1 == $unchk_sub(^^i4, 0, 1);
  modifies $s, $cev_pc;
  free ensures $in_range_i4($result);
  ensures F#sll($s, $phys_ptr_cast(P#list, ^s_node));
  ensures $result == -1 ==> !$oset_in($phys_ptr_cast(P#link, ^s_node), F#sll_reach($s, $phys_ptr_cast(P#list, ^s_node)));
  ensures $oset_in($phys_ptr_cast(P#link, ^s_node), F#sll_reach($s, $phys_ptr_cast(P#list, ^s_node))) ==> $result >= 0;
  ensures $result >= 0 ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(P#list, ^s_node)) && $oset_disjoint(F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(P#link, ^s_node)), F#sll_reach($s, $phys_ptr_cast(P#link, ^s_node)));
  ensures $result >= 0 ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(P#link, ^s_node)) == $result;
  free ensures -1 == $unchk_sub(^^i4, 0, 1);
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation g_slist_position(P#list: $ptr, P#link: $ptr) returns ($result: int)
{
  var stmtexpr0#2: $ptr;
  var SL#list0: $ptr;
  var loopState#0: $state;
  var L#i: int where $in_range_i4(L#i);
  var stmtexpr1#4: $oset;
  var stmtexpr0#3: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var local.list: $ptr;
  var #wrTime$2^3.3: int;
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

// INV:PTR: P#list, P#link, local.list
// INV:INT: L#i
// INV:LST: sll

  anon7:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$2^3.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$2^3.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$2^3.3, (lambda #p: $ptr :: false));
    // assume true
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // struct s_node* local.list; 
    // local.list := list; 
    local.list := $phys_ptr_cast(P#list, ^s_node);
    // assume ==(-1, unchecked-(0, 1)); 
    assume -1 == $unchk_sub(^^i4, 0, 1);
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := sll_reach(local.list); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(local.list, ^s_node));
    assume $full_stop_ext(#tok$3^0.0, $s);
    // _math \oset stmtexpr0#3; 
    // stmtexpr0#3 := _dryad_G0; 
    stmtexpr0#3 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#4; 
    // stmtexpr1#4 := _dryad_G1; 
    stmtexpr1#4 := SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_keys(link), @_vcc_intset_union(sll_keys(*((link->next))), @_vcc_intset_singleton(*((link->key)))))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#link, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#link, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_list_len_next(link), unchecked+(sll_list_len_next(*((link->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#link, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll(link), &&(sll(*((link->next))), unchecked!(@_vcc_oset_in(link, sll_reach(*((link->next)))))))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#link, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#link, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_reach(link), @_vcc_oset_union(sll_reach(*((link->next))), @_vcc_oset_singleton(link)))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#link, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#link, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
    // int32_t i; 
    // assume ==>(@_vcc_ptr_neq_null(local.list), &&(@_vcc_mutable(@state, local.list), @writes_check(local.list))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) && $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(local.list, ^s_node));
    // var int32_t i
    // i := 0; 
    L#i := 0;
    loopState#0 := $s;
    assume true;
p0000 := (F#sll($s,$phys_ptr_cast(P#list,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(P#link,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(local.list,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)));
p0009 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0010 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0011 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0012 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0013 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0014 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0015 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0016 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0017 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0018 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0019 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0020 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0021 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0022 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0023 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0024 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0025 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0026 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#list,^s_node)));
p0040 := ($non_null($phys_ptr_cast(P#link,^s_node)));
p0041 := ($non_null($phys_ptr_cast(local.list,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#list,^s_node)));
p0043 := ($is_null($phys_ptr_cast(P#link,^s_node)));
p0044 := ($is_null($phys_ptr_cast(local.list,^s_node)));
p0045 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(P#link,^s_node)));
p0046 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0047 := (($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0048 := (($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0049 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0050 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#link,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0059 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0060 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0061 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0062 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(P#link,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(P#link,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0071 := (($is_null($phys_ptr_cast(P#link,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0072 := (($is_null($phys_ptr_cast(P#link,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0073 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0074 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(P#list,^s_node))));

    while (true)

invariant (p0000 == (F#sll($s,$phys_ptr_cast(P#list,^s_node))));
invariant (p0001 == (F#sll($s,$phys_ptr_cast(P#link,^s_node))));
invariant (p0002 == (F#sll($s,$phys_ptr_cast(local.list,^s_node))));
invariant (p0003 == (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node))));
invariant (p0004 == (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
invariant (p0005 == (F#sll_lseg($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node))));
invariant (p0006 == (F#sll_lseg($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node))));
invariant (p0007 == (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
invariant (p0008 == (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node))));
invariant (p0009 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0010 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0011 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0012 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0013 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0014 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0015 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0016 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0027 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0028 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0029 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0030 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0031 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0032 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)))));
invariant (p0033 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0034 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)))));
invariant (p0035 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0036 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0037 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)))));
invariant (p0038 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0039 == ($non_null($phys_ptr_cast(P#list,^s_node))));
invariant (p0040 == ($non_null($phys_ptr_cast(P#link,^s_node))));
invariant (p0041 == ($non_null($phys_ptr_cast(local.list,^s_node))));
invariant (p0042 == ($is_null($phys_ptr_cast(P#list,^s_node))));
invariant (p0043 == ($is_null($phys_ptr_cast(P#link,^s_node))));
invariant (p0044 == ($is_null($phys_ptr_cast(local.list,^s_node))));
invariant (p0045 == (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(P#link,^s_node))));
invariant (p0046 == (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
invariant (p0047 == (($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(P#list,^s_node))));
invariant (p0048 == (($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(local.list,^s_node))));
invariant (p0049 == (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
invariant (p0050 == (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#link,^s_node))));
invariant (p0051 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node)))));
invariant (p0052 == (($non_null($phys_ptr_cast(P#link,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node)))));
invariant (p0053 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node)))));
invariant (p0054 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node)))));
invariant (p0055 == (($non_null($phys_ptr_cast(P#link,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node)))));
invariant (p0056 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node)))));
invariant (p0057 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(P#link,^s_node)))));
invariant (p0058 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0059 == (($non_null($phys_ptr_cast(P#link,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0060 == (($non_null($phys_ptr_cast(P#link,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0061 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0062 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#link,^s_node)))));
invariant (p0063 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0064 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)))))));
invariant (p0065 == ((!($oset_in($phys_ptr_cast(P#link,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0066 == ((!($oset_in($phys_ptr_cast(P#link,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0067 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)))))));
invariant (p0068 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0069 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0070 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#link,^s_node)))));
invariant (p0071 == (($is_null($phys_ptr_cast(P#link,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0072 == (($is_null($phys_ptr_cast(P#link,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0073 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(P#link,^s_node)))));
invariant (p0074 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(P#list,^s_node)))));

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
true
);

      invariant $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node));
      invariant $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(local.list, ^s_node));
    {
      anon6:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#0, $s);
        assume $full_stop_ext(#tok$2^17.2, $s);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#0, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(local.list)) ...
        if ($non_null($phys_ptr_cast(local.list, ^s_node)))
        {
          anon3:
            // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_keys(link), @_vcc_intset_union(sll_keys(*((link->next))), @_vcc_intset_singleton(*((link->key)))))); 
            assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#link, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#link, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_list_len_next(link), unchecked+(sll_list_len_next(*((link->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#link, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), 1);
            // assume ==>(@_vcc_ptr_neq_null(link), ==(sll(link), &&(sll(*((link->next))), unchecked!(@_vcc_oset_in(link, sll_reach(*((link->next)))))))); 
            assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#link, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#link, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_reach(link), @_vcc_oset_union(sll_reach(*((link->next))), @_vcc_oset_singleton(link)))); 
            assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#link, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#link, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(local.list), @_vcc_ptr_neq_null(*((local.list->next)))), &&(==(@_vcc_mutable(@state, local.list), @_vcc_mutable(@state, *((local.list->next)))), ==(@writes_check(local.list), @writes_check(*((local.list->next)))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) == $mutable($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(local.list, ^s_node)) == $top_writable($s, #wrTime$2^3.3, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node));
            assume true;
            // if (@_vcc_ptr_eq(local.list, link)) ...
            if ($ptr_eq($phys_ptr_cast(local.list, ^s_node), $phys_ptr_cast(P#link, ^s_node)))
            {
              anon1:
                // return i; 
                $result := L#i;
                assume true;
                assert $position_marker();
                goto #exit;
            }
            else
            {
              anon2:
                // assert @_vcc_possibly_unreachable; 
                assert {:PossiblyUnreachable true} true;
            }

          anon4:
            // assert @in_range_i4(+(i, 1)); 
            assert $in_range_i4(L#i + 1);
            // i := +(i, 1); 
            L#i := L#i + 1;
            // struct s_node* list0; 
            // list0 := local.list; 
            SL#list0 := $phys_ptr_cast(local.list, ^s_node);
            // struct s_node* stmtexpr0#2; 
            // stmtexpr0#2 := list0; 
            stmtexpr0#2 := $phys_ptr_cast(SL#list0, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(local.list), @_vcc_ptr_neq_pure(local.list, *((local.list->next)))), ==(sll_lseg(local.list, *((local.list->next))), &&(sll_lseg(*((local.list->next)), *((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_lseg_reach(*((local.list->next)), *((local.list->next)))))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) && $phys_ptr_cast(local.list, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(local.list, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(local.list), @_vcc_ptr_neq_pure(local.list, *((local.list->next)))), ==(sll_lseg_reach(local.list, *((local.list->next))), @_vcc_oset_union(sll_lseg_reach(*((local.list->next)), *((local.list->next))), @_vcc_oset_singleton(local.list)))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) && $phys_ptr_cast(local.list, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(local.list, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(local.list), @_vcc_ptr_neq_pure(local.list, *((local.list->next)))), ==(sll_lseg_keys(local.list, *((local.list->next))), @_vcc_intset_union(sll_lseg_keys(*((local.list->next)), *((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) && $phys_ptr_cast(local.list, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(local.list, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(local.list), @_vcc_ptr_neq_pure(local.list, *((local.list->next)))), ==(sll_lseg_len_next(local.list, *((local.list->next))), unchecked+(sll_lseg_len_next(*((local.list->next)), *((local.list->next))), 1))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) && $phys_ptr_cast(local.list, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(local.list, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
            // assert @reads_check_normal((local.list->next)); 
            assert $thread_local($s, $phys_ptr_cast(local.list, ^s_node));
            // local.list := *((local.list->next)); 
            local.list := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
            assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
            assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
        }
        else
        {
          anon5:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_1; 
            goto #break_1;
        }

      #continue_1:
        assume true;
p0000 := (F#sll($s,$phys_ptr_cast(P#list,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(P#link,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(local.list,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)));
p0009 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0010 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0011 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0012 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0013 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0014 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0015 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0016 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0017 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0018 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0019 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0020 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0021 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0022 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0023 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0024 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0025 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0026 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#link,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#link,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#list,^s_node)));
p0040 := ($non_null($phys_ptr_cast(P#link,^s_node)));
p0041 := ($non_null($phys_ptr_cast(local.list,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#list,^s_node)));
p0043 := ($is_null($phys_ptr_cast(P#link,^s_node)));
p0044 := ($is_null($phys_ptr_cast(local.list,^s_node)));
p0045 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(P#link,^s_node)));
p0046 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0047 := (($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0048 := (($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0049 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0050 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#link,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0059 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0060 := (($non_null($phys_ptr_cast(P#link,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#link,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0061 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0062 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#link,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(P#link,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(P#link,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(P#link,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#link,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0071 := (($is_null($phys_ptr_cast(P#link,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0072 := (($is_null($phys_ptr_cast(P#link,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0073 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(P#link,^s_node))));
p0074 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#link,^s_node) == $phys_ptr_cast(P#list,^s_node))));

    }

  anon8:
    assume $full_stop_ext(#tok$2^17.2, $s);

  #break_1:
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_keys(link), @_vcc_intset_union(sll_keys(*((link->next))), @_vcc_intset_singleton(*((link->key)))))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#link, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#link, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_list_len_next(link), unchecked+(sll_list_len_next(*((link->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#link, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll(link), &&(sll(*((link->next))), unchecked!(@_vcc_oset_in(link, sll_reach(*((link->next)))))))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#link, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#link, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(link), ==(sll_reach(link), @_vcc_oset_union(sll_reach(*((link->next))), @_vcc_oset_singleton(link)))); 
    assume $non_null($phys_ptr_cast(P#link, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#link, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#link, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#link, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
    // return -1; 
    $result := -1;
    assume true;
    assert $position_marker();
    goto #exit;

  anon9:
    // skip

  #exit:
}



const unique l#public: $label;

const unique #tok$2^17.2: $token;

const unique #tok$3^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(3, #file^?3Cno?20file?3E);

const unique #tok$2^3.3: $token;

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgslist?5Cg_slist_position.c: $token;

axiom $file_name_is(2, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgslist?5Cg_slist_position.c);

const unique #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgslist?5Cdryad_gslist_sll.h: $token;

axiom $file_name_is(1, #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgslist?5Cdryad_gslist_sll.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

