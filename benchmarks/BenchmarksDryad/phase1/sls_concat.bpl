
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
const {:existential true} b0012 : bool;
const {:existential true} b0013 : bool;
const {:existential true} b0014 : bool;
const {:existential true} b0015 : bool;
const {:existential true} b0016 : bool;
const {:existential true} b0017 : bool;
const {:existential true} b0018 : bool;
const {:existential true} b0019 : bool;
const {:existential true} b0020 : bool;
const {:existential true} b0021 : bool;
const {:existential true} b0022 : bool;
const {:existential true} b0023 : bool;
const {:existential true} b0024 : bool;
const {:existential true} b0025 : bool;
const {:existential true} b0026 : bool;
const {:existential true} b0027 : bool;
const {:existential true} b0028 : bool;
const {:existential true} b0029 : bool;
const {:existential true} b0030 : bool;
const {:existential true} b0031 : bool;
const {:existential true} b0032 : bool;
const {:existential true} b0033 : bool;
const {:existential true} b0034 : bool;
const {:existential true} b0035 : bool;
const {:existential true} b0036 : bool;
const {:existential true} b0037 : bool;
const {:existential true} b0038 : bool;
const {:existential true} b0039 : bool;
const {:existential true} b0040 : bool;
const {:existential true} b0041 : bool;
const {:existential true} b0042 : bool;
const {:existential true} b0043 : bool;
const {:existential true} b0044 : bool;
const {:existential true} b0045 : bool;
const {:existential true} b0046 : bool;
const {:existential true} b0047 : bool;
const {:existential true} b0048 : bool;
const {:existential true} b0049 : bool;
const {:existential true} b0050 : bool;
const {:existential true} b0051 : bool;
const {:existential true} b0052 : bool;
const {:existential true} b0053 : bool;
const {:existential true} b0054 : bool;
const {:existential true} b0055 : bool;
const {:existential true} b0056 : bool;
const {:existential true} b0057 : bool;
const {:existential true} b0058 : bool;
const {:existential true} b0059 : bool;
const {:existential true} b0060 : bool;
const {:existential true} b0061 : bool;
const {:existential true} b0062 : bool;
const {:existential true} b0063 : bool;
const {:existential true} b0064 : bool;
const {:existential true} b0065 : bool;
const {:existential true} b0066 : bool;
const {:existential true} b0067 : bool;
const {:existential true} b0068 : bool;
const {:existential true} b0069 : bool;
const {:existential true} b0070 : bool;
const {:existential true} b0071 : bool;
const {:existential true} b0072 : bool;
const {:existential true} b0073 : bool;
const {:existential true} b0074 : bool;

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

const unique ^$#sls_concat.c..36263#3: $ctype;

axiom $def_fnptr_type(^$#sls_concat.c..36263#3);

type $#sls_concat.c..36263#3;

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

function F##int_max(SP#x: int, SP#y: int) : int;

const unique cf##int_max: $pure_function;

axiom (forall SP#x: int, SP#y: int :: { F##int_max(SP#x, SP#y) } $in_range_i4(F##int_max(SP#x, SP#y)));

axiom $function_arg_type(cf##int_max, 0, ^^i4);

axiom $function_arg_type(cf##int_max, 1, ^^i4);

axiom $function_arg_type(cf##int_max, 2, ^^i4);

procedure #int_max(SP#x: int, SP#y: int) returns ($result: int);
  free ensures $in_range_i4($result);
  free ensures $result == F##int_max(SP#x, SP#y);
  free ensures $call_transition(old($s), $s);



function F##int_min(SP#x: int, SP#y: int) : int;

const unique cf##int_min: $pure_function;

axiom (forall SP#x: int, SP#y: int :: { F##int_min(SP#x, SP#y) } $in_range_i4(F##int_min(SP#x, SP#y)));

axiom $function_arg_type(cf##int_min, 0, ^^i4);

axiom $function_arg_type(cf##int_min, 1, ^^i4);

axiom $function_arg_type(cf##int_min, 2, ^^i4);

procedure #int_min(SP#x: int, SP#y: int) returns ($result: int);
  free ensures $in_range_i4($result);
  free ensures $result == F##int_min(SP#x, SP#y);
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



function F#srtl(#s: $state, SP#hd: $ptr) : bool;

const unique cf#srtl: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#srtl(#s, SP#hd) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#srtl(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#srtl(#s, SP#hd)));

axiom $function_arg_type(cf#srtl, 0, ^^bool);

axiom $function_arg_type(cf#srtl, 1, $ptr_to(^s_node));

procedure srtl(SP#hd: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result;
  free ensures $result == F#srtl($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#rsrtl(#s: $state, SP#hd: $ptr) : bool;

const unique cf#rsrtl: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#rsrtl(#s, SP#hd) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#rsrtl(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#rsrtl(#s, SP#hd)));

axiom $function_arg_type(cf#rsrtl, 0, ^^bool);

axiom $function_arg_type(cf#rsrtl, 1, $ptr_to(^s_node));

procedure rsrtl(SP#hd: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result;
  free ensures $result == F#rsrtl($s, SP#hd);
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



function F#srtl_reach(#s: $state, SP#hd: $ptr) : $oset;

const unique cf#srtl_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#srtl_reach(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#srtl_reach(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#srtl_reach(#s, SP#hd) == $oset_empty()));

axiom $function_arg_type(cf#srtl_reach, 0, ^$#oset);

axiom $function_arg_type(cf#srtl_reach, 1, $ptr_to(^s_node));

procedure srtl_reach(SP#hd: $ptr) returns ($result: $oset);
  ensures ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result)) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $oset_empty());
  free ensures $result == F#srtl_reach($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#rsrtl_reach(#s: $state, SP#hd: $ptr) : $oset;

const unique cf#rsrtl_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#rsrtl_reach(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#rsrtl_reach(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#rsrtl_reach(#s, SP#hd) == $oset_empty()));

axiom $function_arg_type(cf#rsrtl_reach, 0, ^$#oset);

axiom $function_arg_type(cf#rsrtl_reach, 1, $ptr_to(^s_node));

procedure rsrtl_reach(SP#hd: $ptr) returns ($result: $oset);
  ensures ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result)) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $oset_empty());
  free ensures $result == F#rsrtl_reach($s, SP#hd);
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



function F#sll_min_key(#s: $state, SP#hd: $ptr) : int;

const unique cf#sll_min_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_min_key(#s, SP#hd) } 1 < $decreases_level ==> $in_range_i4(F#sll_min_key(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#sll_min_key(#s, SP#hd) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_min_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_min_key, 1, $ptr_to(^s_node));

procedure sll_min_key(SP#hd: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_min_key($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_max_key(#s: $state, SP#hd: $ptr) : int;

const unique cf#sll_max_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_max_key(#s, SP#hd) } 1 < $decreases_level ==> $in_range_i4(F#sll_max_key(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#sll_max_key(#s, SP#hd) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_max_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_max_key, 1, $ptr_to(^s_node));

procedure sll_max_key(SP#hd: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_max_key($s, SP#hd);
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



function F#srtl_lseg(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : bool;

const unique cf#srtl_lseg: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#srtl_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg(#s, SP#hd, SP#tl) == F#srtl(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg(#s, SP#hd, SP#tl)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg(#s, SP#hd, SP#tl)) && (F#srtl_lseg(#s, SP#hd, SP#tl) ==> $oset_disjoint(F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)))) && (F#srtl_lseg(#s, SP#hd, SP#tl) && F#srtl(#s, $phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= F#sll_min_key(#s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl(#s, $phys_ptr_cast(SP#hd, ^s_node)) && F#srtl_reach(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#srtl_reach(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_max_key(#s, $phys_ptr_cast(SP#tl, ^s_node))) && (F#srtl_lseg(#s, SP#hd, SP#tl) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && !$oset_in($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1) && F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))) && (F#srtl_lseg(#s, SP#hd, SP#tl) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == 1 && F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))));

axiom $function_arg_type(cf#srtl_lseg, 0, ^^bool);

axiom $function_arg_type(cf#srtl_lseg, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#srtl_lseg, 2, $ptr_to(^s_node));

procedure srtl_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#srtl($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $result ==> $oset_disjoint(F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)));
  ensures $result && F#srtl($s, $phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= F#sll_min_key($s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SP#hd, ^s_node)) && F#srtl_reach($s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#srtl_reach($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next($s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_min_key($s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_max_key($s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_max_key($s, $phys_ptr_cast(SP#tl, ^s_node));
  ensures $result && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && !$oset_in($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1) && F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node));
  ensures $result && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == 1 && F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node));
  free ensures $result == F#srtl_lseg($s, SP#hd, SP#tl);
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



function F#srtl_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#srtl_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#srtl_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg_reach(#s, SP#hd, SP#tl) == F#srtl_reach(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#srtl_lseg_reach(#s, SP#hd, SP#tl))));

axiom $function_arg_type(cf#srtl_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#srtl_lseg_reach, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#srtl_lseg_reach, 2, $ptr_to(^s_node));

procedure srtl_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#srtl_reach($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result);
  free ensures $result == F#srtl_lseg_reach($s, SP#hd, SP#tl);
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



function F#sll_lseg_min_key(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : int;

const unique cf#sll_lseg_min_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_min_key(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> $in_range_i4(F#sll_lseg_min_key(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_min_key(#s, SP#hd, SP#tl) == F#sll_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_min_key(#s, SP#hd, SP#tl) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_lseg_min_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_lseg_min_key, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_min_key, 2, $ptr_to(^s_node));

procedure sll_lseg_min_key(SP#hd: $ptr, SP#tl: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_min_key($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_min_key($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_max_key(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : int;

const unique cf#sll_lseg_max_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_max_key(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> $in_range_i4(F#sll_lseg_max_key(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_max_key(#s, SP#hd, SP#tl) == F#sll_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_max_key(#s, SP#hd, SP#tl) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_lseg_max_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_lseg_max_key, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_max_key, 2, $ptr_to(^s_node));

procedure sll_lseg_max_key(SP#hd: $ptr, SP#tl: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_max_key($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_max_key($s, SP#hd, SP#tl);
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



procedure sls_concat(P#a: $ptr, P#b: $ptr) returns ($result: $ptr);
  requires F#srtl($s, $phys_ptr_cast(P#a, ^s_node));
  requires F#srtl($s, $phys_ptr_cast(P#b, ^s_node));
  requires $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_min_key($s, $phys_ptr_cast(P#b, ^s_node));
  requires $oset_disjoint(F#srtl_reach($s, $phys_ptr_cast(P#a, ^s_node)), F#srtl_reach($s, $phys_ptr_cast(P#b, ^s_node)));
  modifies $s, $cev_pc;
  ensures F#srtl($s, $phys_ptr_cast($result, ^s_node));
  ensures F#sll_keys($s, $phys_ptr_cast($result, ^s_node)) == $intset_union(F#sll_keys(old($s), $phys_ptr_cast(P#a, ^s_node)), F#sll_keys($s, $phys_ptr_cast(P#b, ^s_node)));
  ensures F#sll_reach($s, $phys_ptr_cast($result, ^s_node)) == $oset_union(F#sll_reach(old($s), $phys_ptr_cast(P#a, ^s_node)), F#sll_reach($s, $phys_ptr_cast(P#b, ^s_node)));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation sls_concat(P#a: $ptr, P#b: $ptr) returns ($result: $ptr)
{
  var stmtexpr1#6: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr0#5: $state;
  var SL#_dryad_S0: $state;
  var stmtexpr0#4: $ptr;
  var SL#curr0: $ptr;
  var loopState#0: $state;
  var L#curr: $ptr;
  var stmtexpr1#8: $oset;
  var stmtexpr0#7: $oset;
  var res_srtl_reach#3: $oset;
  var res_srtl_reach#2: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var #wrTime$2^3.3: int;
  var #stackframe: int;

// INV:PTR: P#a, P#b, L#curr
// INV:INT:
// INV:LST: srtl

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
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _math \oset res_srtl_reach#2; 
    // res_srtl_reach#2 := srtl_reach(a); 
    call res_srtl_reach#2 := srtl_reach($phys_ptr_cast(P#a, ^s_node));
    assume $full_stop_ext(#tok$3^0.0, $s);
    // _math \oset res_srtl_reach#3; 
    // res_srtl_reach#3 := srtl_reach(b); 
    call res_srtl_reach#3 := srtl_reach($phys_ptr_cast(P#b, ^s_node));
    assume $full_stop_ext(#tok$3^0.0, $s);
    // _dryad_G0 := @_vcc_oset_union(res_srtl_reach#2, res_srtl_reach#3); 
    SL#_dryad_G0 := $oset_union(res_srtl_reach#2, res_srtl_reach#3);
    // _math \oset stmtexpr0#7; 
    // stmtexpr0#7 := _dryad_G0; 
    stmtexpr0#7 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#8; 
    // stmtexpr1#8 := _dryad_G1; 
    stmtexpr1#8 := SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_keys(b), @_vcc_intset_union(sll_keys(*((b->next))), @_vcc_intset_singleton(*((b->key)))))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#b, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_list_len_next(b), unchecked+(sll_list_len_next(*((b->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#b, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(rsrtl(b), &&(&&(rsrtl(*((b->next))), unchecked!(@_vcc_oset_in(b, rsrtl_reach(*((b->next)))))), >=(*((b->key)), sll_max_key(*((b->next))))))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(b), ==(rsrtl_reach(b), @_vcc_oset_union(rsrtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(b), ==(sll(b), &&(sll(*((b->next))), unchecked!(@_vcc_oset_in(b, sll_reach(*((b->next)))))))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#b, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_reach(b), @_vcc_oset_union(sll_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_max_key(b), @\int_max(*((b->key)), sll_max_key(*((b->next)))))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_min_key(b), @\int_min(*((b->key)), sll_min_key(*((b->next)))))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(srtl(b), &&(&&(srtl(*((b->next))), unchecked!(@_vcc_oset_in(b, srtl_reach(*((b->next)))))), <=(*((b->key)), sll_min_key(*((b->next))))))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(b), ==(srtl_reach(b), @_vcc_oset_union(srtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
    assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_keys(a), @_vcc_intset_union(sll_keys(*((a->next))), @_vcc_intset_singleton(*((a->key)))))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#a, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_list_len_next(a), unchecked+(sll_list_len_next(*((a->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#a, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(rsrtl(a), &&(&&(rsrtl(*((a->next))), unchecked!(@_vcc_oset_in(a, rsrtl_reach(*((a->next)))))), >=(*((a->key)), sll_max_key(*((a->next))))))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(a), ==(rsrtl_reach(a), @_vcc_oset_union(rsrtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(a), ==(sll(a), &&(sll(*((a->next))), unchecked!(@_vcc_oset_in(a, sll_reach(*((a->next)))))))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#a, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_reach(a), @_vcc_oset_union(sll_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_max_key(a), @\int_max(*((a->key)), sll_max_key(*((a->next)))))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_min_key(a), @\int_min(*((a->key)), sll_min_key(*((a->next)))))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(srtl(a), &&(&&(srtl(*((a->next))), unchecked!(@_vcc_oset_in(a, srtl_reach(*((a->next)))))), <=(*((a->key)), sll_min_key(*((a->next))))))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(a), ==(srtl_reach(a), @_vcc_oset_union(srtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(a), &&(@_vcc_mutable(@state, a), @writes_check(a))); 
    assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#a, ^s_node)) && $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(P#a, ^s_node));
    assume true;
    // if (@_vcc_ptr_eq_null(a)) ...
    if ($is_null($phys_ptr_cast(P#a, ^s_node)))
    {
      anon1:
        // return b; 
        $result := $phys_ptr_cast(P#b, ^s_node);
        assume true;
        assert $position_marker();
        goto #exit;
    }
    else
    {
      anon5:
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_keys(b), @_vcc_intset_union(sll_keys(*((b->next))), @_vcc_intset_singleton(*((b->key)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#b, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_list_len_next(b), unchecked+(sll_list_len_next(*((b->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#b, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(rsrtl(b), &&(&&(rsrtl(*((b->next))), unchecked!(@_vcc_oset_in(b, rsrtl_reach(*((b->next)))))), >=(*((b->key)), sll_max_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(rsrtl_reach(b), @_vcc_oset_union(rsrtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll(b), &&(sll(*((b->next))), unchecked!(@_vcc_oset_in(b, sll_reach(*((b->next)))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#b, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_reach(b), @_vcc_oset_union(sll_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_max_key(b), @\int_max(*((b->key)), sll_max_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_min_key(b), @\int_min(*((b->key)), sll_min_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(srtl(b), &&(&&(srtl(*((b->next))), unchecked!(@_vcc_oset_in(b, srtl_reach(*((b->next)))))), <=(*((b->key)), sll_min_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(srtl_reach(b), @_vcc_oset_union(srtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_keys(a), @_vcc_intset_union(sll_keys(*((a->next))), @_vcc_intset_singleton(*((a->key)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#a, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_list_len_next(a), unchecked+(sll_list_len_next(*((a->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#a, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(rsrtl(a), &&(&&(rsrtl(*((a->next))), unchecked!(@_vcc_oset_in(a, rsrtl_reach(*((a->next)))))), >=(*((a->key)), sll_max_key(*((a->next))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(rsrtl_reach(a), @_vcc_oset_union(rsrtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll(a), &&(sll(*((a->next))), unchecked!(@_vcc_oset_in(a, sll_reach(*((a->next)))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#a, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_reach(a), @_vcc_oset_union(sll_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_max_key(a), @\int_max(*((a->key)), sll_max_key(*((a->next)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_min_key(a), @\int_min(*((a->key)), sll_min_key(*((a->next)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(srtl(a), &&(&&(srtl(*((a->next))), unchecked!(@_vcc_oset_in(a, srtl_reach(*((a->next)))))), <=(*((a->key)), sll_min_key(*((a->next))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(srtl_reach(a), @_vcc_oset_union(srtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // struct s_node* curr; 
        // var struct s_node* curr
        // curr := a; 
        L#curr := $phys_ptr_cast(P#a, ^s_node);
        // assert sll_lseg(curr, curr); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume sll_lseg(curr, curr); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assert srtl_lseg(curr, curr); 
        assert F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume srtl_lseg(curr, curr); 
        assume F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assert sll_lseg(b, b); 
        assert F#sll_lseg($s, $phys_ptr_cast(P#b, ^s_node), $phys_ptr_cast(P#b, ^s_node));
        // assume sll_lseg(b, b); 
        assume F#sll_lseg($s, $phys_ptr_cast(P#b, ^s_node), $phys_ptr_cast(P#b, ^s_node));
        // assert srtl_lseg(b, b); 
        assert F#srtl_lseg($s, $phys_ptr_cast(P#b, ^s_node), $phys_ptr_cast(P#b, ^s_node));
        // assume srtl_lseg(b, b); 
        assume F#srtl_lseg($s, $phys_ptr_cast(P#b, ^s_node), $phys_ptr_cast(P#b, ^s_node));
        // assert sll_lseg(a, a); 
        assert F#sll_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(P#a, ^s_node));
        // assume sll_lseg(a, a); 
        assume F#sll_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(P#a, ^s_node));
        // assert srtl_lseg(a, a); 
        assert F#srtl_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(P#a, ^s_node));
        // assume srtl_lseg(a, a); 
        assume F#srtl_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(P#a, ^s_node));
        loopState#0 := $s;
        assume true;
// INV:LOOPHEAD
        while (true)
 invariant b0000 ==> (F#srtl($s,$phys_ptr_cast(P#a,^s_node)));
invariant b0001 ==> (F#srtl($s,$phys_ptr_cast(P#b,^s_node)));
invariant b0002 ==> (F#srtl($s,$phys_ptr_cast(L#curr,^s_node)));
invariant b0003 ==> (F#srtl_lseg($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(P#b,^s_node)));
invariant b0004 ==> (F#srtl_lseg($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(L#curr,^s_node)));
invariant b0005 ==> (F#srtl_lseg($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(P#a,^s_node)));
invariant b0006 ==> (F#srtl_lseg($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(L#curr,^s_node)));
invariant b0007 ==> (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#a,^s_node)));
invariant b0008 ==> (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#b,^s_node)));
invariant b0009 ==> ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0010 ==> ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0011 ==> ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0012 ==> ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0013 ==> ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0014 ==> ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0015 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0016 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0017 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0018 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0019 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0020 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0021 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0022 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0023 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0024 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0025 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0026 ==> ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0027 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0028 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#a,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0029 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0030 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#b,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
invariant b0031 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#a,^s_node))));
invariant b0032 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#b,^s_node))));
invariant b0033 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#a,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant b0034 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#a,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#b,^s_node))));
invariant b0035 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#b,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant b0036 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(P#b,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#a,^s_node))));
invariant b0037 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(P#b,^s_node))));
invariant b0038 ==> ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(P#a,^s_node))));
invariant b0039 ==> ($non_null($phys_ptr_cast(P#a,^s_node)));
invariant b0040 ==> ($non_null($phys_ptr_cast(P#b,^s_node)));
invariant b0041 ==> ($non_null($phys_ptr_cast(L#curr,^s_node)));
invariant b0042 ==> ($is_null($phys_ptr_cast(P#a,^s_node)));
invariant b0043 ==> ($is_null($phys_ptr_cast(P#b,^s_node)));
invariant b0044 ==> ($is_null($phys_ptr_cast(L#curr,^s_node)));
invariant b0045 ==> (($phys_ptr_cast(P#a,^s_node) == $phys_ptr_cast(P#b,^s_node)));
invariant b0046 ==> (($phys_ptr_cast(P#a,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
invariant b0047 ==> (($phys_ptr_cast(P#b,^s_node) == $phys_ptr_cast(P#a,^s_node)));
invariant b0048 ==> (($phys_ptr_cast(P#b,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
invariant b0049 ==> (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#a,^s_node)));
invariant b0050 ==> (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#b,^s_node)));
invariant b0051 ==> (($non_null($phys_ptr_cast(P#a,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#a,^s_node),^s_node))));
invariant b0052 ==> (($non_null($phys_ptr_cast(P#b,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#b,^s_node),^s_node))));
invariant b0053 ==> (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
invariant b0054 ==> (($non_null($phys_ptr_cast(P#a,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#a,^s_node),^s_node))));
invariant b0055 ==> (($non_null($phys_ptr_cast(P#b,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#b,^s_node),^s_node))));
invariant b0056 ==> (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
invariant b0057 ==> (($non_null($phys_ptr_cast(P#a,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#a,^s_node),^s_node) == $phys_ptr_cast(P#b,^s_node))));
invariant b0058 ==> (($non_null($phys_ptr_cast(P#a,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#a,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant b0059 ==> (($non_null($phys_ptr_cast(P#b,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#b,^s_node),^s_node) == $phys_ptr_cast(P#a,^s_node))));
invariant b0060 ==> (($non_null($phys_ptr_cast(P#b,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#b,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant b0061 ==> (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#a,^s_node))));
invariant b0062 ==> (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#b,^s_node))));
invariant b0063 ==> ((!($oset_in($phys_ptr_cast(P#a,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
invariant b0064 ==> ((!($oset_in($phys_ptr_cast(P#a,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#b,^s_node))))));
invariant b0065 ==> ((!($oset_in($phys_ptr_cast(P#b,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
invariant b0066 ==> ((!($oset_in($phys_ptr_cast(P#b,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#a,^s_node))))));
invariant b0067 ==> ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#a,^s_node),$phys_ptr_cast(P#b,^s_node))))));
invariant b0068 ==> ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#b,^s_node),$phys_ptr_cast(P#a,^s_node))))));
invariant b0069 ==> (($is_null($phys_ptr_cast(P#a,^s_node)) ==> ($phys_ptr_cast(P#b,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant b0070 ==> (($is_null($phys_ptr_cast(P#a,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#b,^s_node))));
invariant b0071 ==> (($is_null($phys_ptr_cast(P#b,^s_node)) ==> ($phys_ptr_cast(P#a,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant b0072 ==> (($is_null($phys_ptr_cast(P#b,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#a,^s_node))));
invariant b0073 ==> (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#a,^s_node) == $phys_ptr_cast(P#b,^s_node))));
invariant b0074 ==> (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#b,^s_node) == $phys_ptr_cast(P#a,^s_node))));

          invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node));
          invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(L#curr, ^s_node));
        {
          anon4:
            assume $writes_nothing(old($s), $s);
            assume $timestamp_post(loopState#0, $s);
            assume $full_stop_ext(#tok$2^19.5, $s);
            // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
            assume $meta_eq(loopState#0, $s);
            // assert @reads_check_normal((curr->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
            assume true;
            // if (@_vcc_ptr_neq_null(*((curr->next)))) ...
            if ($non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)))
            {
              anon2:
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_keys(b), @_vcc_intset_union(sll_keys(*((b->next))), @_vcc_intset_singleton(*((b->key)))))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#b, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_list_len_next(b), unchecked+(sll_list_len_next(*((b->next))), 1))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#b, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(rsrtl(b), &&(&&(rsrtl(*((b->next))), unchecked!(@_vcc_oset_in(b, rsrtl_reach(*((b->next)))))), >=(*((b->key)), sll_max_key(*((b->next))))))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(b), ==(rsrtl_reach(b), @_vcc_oset_union(rsrtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(b), ==(sll(b), &&(sll(*((b->next))), unchecked!(@_vcc_oset_in(b, sll_reach(*((b->next)))))))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#b, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_reach(b), @_vcc_oset_union(sll_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_max_key(b), @\int_max(*((b->key)), sll_max_key(*((b->next)))))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_min_key(b), @\int_min(*((b->key)), sll_min_key(*((b->next)))))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(srtl(b), &&(&&(srtl(*((b->next))), unchecked!(@_vcc_oset_in(b, srtl_reach(*((b->next)))))), <=(*((b->key)), sll_min_key(*((b->next))))))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(b), ==(srtl_reach(b), @_vcc_oset_union(srtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
                assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_keys(a), @_vcc_intset_union(sll_keys(*((a->next))), @_vcc_intset_singleton(*((a->key)))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#a, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_list_len_next(a), unchecked+(sll_list_len_next(*((a->next))), 1))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#a, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(rsrtl(a), &&(&&(rsrtl(*((a->next))), unchecked!(@_vcc_oset_in(a, rsrtl_reach(*((a->next)))))), >=(*((a->key)), sll_max_key(*((a->next))))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(a), ==(rsrtl_reach(a), @_vcc_oset_union(rsrtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(a), ==(sll(a), &&(sll(*((a->next))), unchecked!(@_vcc_oset_in(a, sll_reach(*((a->next)))))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#a, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_reach(a), @_vcc_oset_union(sll_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_max_key(a), @\int_max(*((a->key)), sll_max_key(*((a->next)))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_min_key(a), @\int_min(*((a->key)), sll_min_key(*((a->next)))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(srtl(a), &&(&&(srtl(*((a->next))), unchecked!(@_vcc_oset_in(a, srtl_reach(*((a->next)))))), <=(*((a->key)), sll_min_key(*((a->next))))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(a), ==(srtl_reach(a), @_vcc_oset_union(srtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg(a, curr), &&(sll_lseg(*((a->next)), curr), unchecked!(@_vcc_oset_in(a, sll_lseg_reach(*((a->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg_reach(a, curr), @_vcc_oset_union(sll_lseg_reach(*((a->next)), curr), @_vcc_oset_singleton(a)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg_keys(a, curr), @_vcc_intset_union(sll_lseg_keys(*((a->next)), curr), @_vcc_intset_singleton(*((a->key)))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg_len_next(a, curr), unchecked+(sll_lseg_len_next(*((a->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), @_vcc_ptr_neq_pure(*((a->next)), curr)), ==(sll_lseg_max_key(a, curr), @\int_max(*((a->key)), sll_lseg_max_key(*((a->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), @_vcc_ptr_neq_pure(*((a->next)), curr)), ==(sll_lseg_min_key(a, curr), @\int_min(*((a->key)), sll_lseg_min_key(*((a->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), @_vcc_ptr_neq_pure(*((a->next)), curr)), ==(srtl_lseg(a, curr), &&(&&(srtl_lseg(*((a->next)), curr), unchecked!(@_vcc_oset_in(a, srtl_lseg_reach(*((a->next)), curr)))), <=(*((a->key)), sll_lseg_min_key(*((a->next)), curr))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(srtl_lseg_reach(a, curr), @_vcc_oset_union(srtl_lseg_reach(*((a->next)), curr), @_vcc_oset_singleton(a)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
                // struct s_node* curr0; 
                // curr0 := curr; 
                SL#curr0 := $phys_ptr_cast(L#curr, ^s_node);
                // struct s_node* stmtexpr0#4; 
                // stmtexpr0#4 := curr0; 
                stmtexpr0#4 := $phys_ptr_cast(SL#curr0, ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg(curr, *((curr->next))), &&(sll_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_lseg_reach(*((curr->next)), *((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_reach(curr, *((curr->next))), @_vcc_oset_union(sll_lseg_reach(*((curr->next)), *((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_keys(curr, *((curr->next))), @_vcc_intset_union(sll_lseg_keys(*((curr->next)), *((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_len_next(curr, *((curr->next))), unchecked+(sll_lseg_len_next(*((curr->next)), *((curr->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(sll_lseg_max_key(curr, *((curr->next))), @\int_max(*((curr->key)), sll_lseg_max_key(*((curr->next)), *((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(sll_lseg_min_key(curr, *((curr->next))), @\int_min(*((curr->key)), sll_lseg_min_key(*((curr->next)), *((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(srtl_lseg(curr, *((curr->next))), &&(&&(srtl_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_lseg_reach(*((curr->next)), *((curr->next)))))), <=(*((curr->key)), sll_lseg_min_key(*((curr->next)), *((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(srtl_lseg_reach(curr, *((curr->next))), @_vcc_oset_union(srtl_lseg_reach(*((curr->next)), *((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assert @reads_check_normal((curr->next)); 
                assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
                // curr := *((curr->next)); 
                L#curr := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg(a, curr), &&(sll_lseg(*((a->next)), curr), unchecked!(@_vcc_oset_in(a, sll_lseg_reach(*((a->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg_reach(a, curr), @_vcc_oset_union(sll_lseg_reach(*((a->next)), curr), @_vcc_oset_singleton(a)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg_keys(a, curr), @_vcc_intset_union(sll_lseg_keys(*((a->next)), curr), @_vcc_intset_singleton(*((a->key)))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(sll_lseg_len_next(a, curr), unchecked+(sll_lseg_len_next(*((a->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), @_vcc_ptr_neq_pure(*((a->next)), curr)), ==(sll_lseg_max_key(a, curr), @\int_max(*((a->key)), sll_lseg_max_key(*((a->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), @_vcc_ptr_neq_pure(*((a->next)), curr)), ==(sll_lseg_min_key(a, curr), @\int_min(*((a->key)), sll_lseg_min_key(*((a->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), @_vcc_ptr_neq_pure(*((a->next)), curr)), ==(srtl_lseg(a, curr), &&(&&(srtl_lseg(*((a->next)), curr), unchecked!(@_vcc_oset_in(a, srtl_lseg_reach(*((a->next)), curr)))), <=(*((a->key)), sll_lseg_min_key(*((a->next)), curr))))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_pure(a, curr)), ==(srtl_lseg_reach(a, curr), @_vcc_oset_union(srtl_lseg_reach(*((a->next)), curr), @_vcc_oset_singleton(a)))); 
                assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $phys_ptr_cast(P#a, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
                assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node)) && $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(L#curr, ^s_node));
            }
            else
            {
              anon3:
                // assert @_vcc_possibly_unreachable; 
                assert {:PossiblyUnreachable true} true;
                // goto #break_1; 
                goto #break_1;
            }

          #continue_1:
            assume true;
// INV:LOOPTAIL
        }

      anon6:
        assume $full_stop_ext(#tok$2^19.5, $s);

      #break_1:
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_keys(b), @_vcc_intset_union(sll_keys(*((b->next))), @_vcc_intset_singleton(*((b->key)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#b, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_list_len_next(b), unchecked+(sll_list_len_next(*((b->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#b, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(rsrtl(b), &&(&&(rsrtl(*((b->next))), unchecked!(@_vcc_oset_in(b, rsrtl_reach(*((b->next)))))), >=(*((b->key)), sll_max_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(rsrtl_reach(b), @_vcc_oset_union(rsrtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll(b), &&(sll(*((b->next))), unchecked!(@_vcc_oset_in(b, sll_reach(*((b->next)))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#b, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_reach(b), @_vcc_oset_union(sll_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_max_key(b), @\int_max(*((b->key)), sll_max_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_min_key(b), @\int_min(*((b->key)), sll_min_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(srtl(b), &&(&&(srtl(*((b->next))), unchecked!(@_vcc_oset_in(b, srtl_reach(*((b->next)))))), <=(*((b->key)), sll_min_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(srtl_reach(b), @_vcc_oset_union(srtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_keys(a), @_vcc_intset_union(sll_keys(*((a->next))), @_vcc_intset_singleton(*((a->key)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#a, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_list_len_next(a), unchecked+(sll_list_len_next(*((a->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#a, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(rsrtl(a), &&(&&(rsrtl(*((a->next))), unchecked!(@_vcc_oset_in(a, rsrtl_reach(*((a->next)))))), >=(*((a->key)), sll_max_key(*((a->next))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(rsrtl_reach(a), @_vcc_oset_union(rsrtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll(a), &&(sll(*((a->next))), unchecked!(@_vcc_oset_in(a, sll_reach(*((a->next)))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#a, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_reach(a), @_vcc_oset_union(sll_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_max_key(a), @\int_max(*((a->key)), sll_max_key(*((a->next)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_min_key(a), @\int_min(*((a->key)), sll_min_key(*((a->next)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(srtl(a), &&(&&(srtl(*((a->next))), unchecked!(@_vcc_oset_in(a, srtl_reach(*((a->next)))))), <=(*((a->key)), sll_min_key(*((a->next))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(srtl_reach(a), @_vcc_oset_union(srtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // _math \state _dryad_S0; 
        // _dryad_S0 := @_vcc_current_state(@state); 
        SL#_dryad_S0 := $current_state($s);
        // _math \state stmtexpr0#5; 
        // stmtexpr0#5 := _dryad_S0; 
        stmtexpr0#5 := SL#_dryad_S0;
        // assert @prim_writes_check((curr->next)); 
        assert $writable_prim($s, #wrTime$2^3.3, $dot($phys_ptr_cast(L#curr, ^s_node), s_node.next));
        // *(curr->next) := b; 
        call $write_int(s_node.next, $phys_ptr_cast(L#curr, ^s_node), $ptr_to_int($phys_ptr_cast(P#b, ^s_node)));
        assume $full_stop_ext(#tok$2^32.5, $s);
        // _math \state _dryad_S1; 
        // _dryad_S1 := @_vcc_current_state(@state); 
        SL#_dryad_S1 := $current_state($s);
        // _math \state stmtexpr1#6; 
        // stmtexpr1#6 := _dryad_S1; 
        stmtexpr1#6 := SL#_dryad_S1;
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(b)))), ==(old(_dryad_S0, sll_keys(b)), old(_dryad_S1, sll_keys(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(b)))), ==(old(_dryad_S0, sll_list_len_next(b)), old(_dryad_S1, sll_list_len_next(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, rsrtl_reach(b)))), ==(old(_dryad_S0, rsrtl(b)), old(_dryad_S1, rsrtl(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, rsrtl_reach(b)))), ==(old(_dryad_S0, rsrtl_reach(b)), old(_dryad_S1, rsrtl_reach(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(b)))), ==(old(_dryad_S0, sll(b)), old(_dryad_S1, sll(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(b)))), ==(old(_dryad_S0, sll_reach(b)), old(_dryad_S1, sll_reach(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(b)))), ==(old(_dryad_S0, sll_max_key(b)), old(_dryad_S1, sll_max_key(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(b)))), ==(old(_dryad_S0, sll_min_key(b)), old(_dryad_S1, sll_min_key(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, srtl_reach(b)))), ==(old(_dryad_S0, srtl(b)), old(_dryad_S1, srtl(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, srtl_reach(b)))), ==(old(_dryad_S0, srtl_reach(b)), old(_dryad_S1, srtl_reach(b)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#b, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(a)))), ==(old(_dryad_S0, sll_keys(a)), old(_dryad_S1, sll_keys(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(a)))), ==(old(_dryad_S0, sll_list_len_next(a)), old(_dryad_S1, sll_list_len_next(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, rsrtl_reach(a)))), ==(old(_dryad_S0, rsrtl(a)), old(_dryad_S1, rsrtl(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, rsrtl_reach(a)))), ==(old(_dryad_S0, rsrtl_reach(a)), old(_dryad_S1, rsrtl_reach(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(a)))), ==(old(_dryad_S0, sll(a)), old(_dryad_S1, sll(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(a)))), ==(old(_dryad_S0, sll_reach(a)), old(_dryad_S1, sll_reach(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(a)))), ==(old(_dryad_S0, sll_max_key(a)), old(_dryad_S1, sll_max_key(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_reach(a)))), ==(old(_dryad_S0, sll_min_key(a)), old(_dryad_S1, sll_min_key(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, srtl_reach(a)))), ==(old(_dryad_S0, srtl(a)), old(_dryad_S1, srtl(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, srtl_reach(a)))), ==(old(_dryad_S0, srtl_reach(a)), old(_dryad_S1, srtl_reach(a)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_lseg_reach(a, curr)))), ==(old(_dryad_S0, sll_lseg(a, curr)), old(_dryad_S1, sll_lseg(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_lseg_reach(a, curr)))), ==(old(_dryad_S0, sll_lseg_reach(a, curr)), old(_dryad_S1, sll_lseg_reach(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_lseg_reach(a, curr)))), ==(old(_dryad_S0, sll_lseg_keys(a, curr)), old(_dryad_S1, sll_lseg_keys(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_lseg_reach(a, curr)))), ==(old(_dryad_S0, sll_lseg_len_next(a, curr)), old(_dryad_S1, sll_lseg_len_next(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_lseg_reach(a, curr)))), ==(old(_dryad_S0, sll_lseg_max_key(a, curr)), old(_dryad_S1, sll_lseg_max_key(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, sll_lseg_reach(a, curr)))), ==(old(_dryad_S0, sll_lseg_min_key(a, curr)), old(_dryad_S1, sll_lseg_min_key(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, srtl_lseg_reach(a, curr)))), ==(old(_dryad_S0, srtl_lseg(a, curr)), old(_dryad_S1, srtl_lseg(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(curr, old(_dryad_S0, srtl_lseg_reach(a, curr)))), ==(old(_dryad_S0, srtl_lseg_reach(a, curr)), old(_dryad_S1, srtl_lseg_reach(a, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#a, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(curr, b)), ==(*((b->key)), old(_dryad_S0, *((b->key))))); 
        assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(P#b, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(P#b, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(curr, b)), @_vcc_ptr_eq_pure(*((b->next)), old(_dryad_S0, *((b->next))))); 
        assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(P#b, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(curr, a)), ==(*((a->key)), old(_dryad_S0, *((a->key))))); 
        assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(P#a, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(P#a, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(curr, a)), @_vcc_ptr_eq_pure(*((a->next)), old(_dryad_S0, *((a->next))))); 
        assume !($phys_ptr_cast(L#curr, ^s_node) == $phys_ptr_cast(P#a, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_keys(b), @_vcc_intset_union(sll_keys(*((b->next))), @_vcc_intset_singleton(*((b->key)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#b, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_list_len_next(b), unchecked+(sll_list_len_next(*((b->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#b, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(rsrtl(b), &&(&&(rsrtl(*((b->next))), unchecked!(@_vcc_oset_in(b, rsrtl_reach(*((b->next)))))), >=(*((b->key)), sll_max_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(rsrtl_reach(b), @_vcc_oset_union(rsrtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll(b), &&(sll(*((b->next))), unchecked!(@_vcc_oset_in(b, sll_reach(*((b->next)))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#b, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_reach(b), @_vcc_oset_union(sll_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_max_key(b), @\int_max(*((b->key)), sll_max_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_min_key(b), @\int_min(*((b->key)), sll_min_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(srtl(b), &&(&&(srtl(*((b->next))), unchecked!(@_vcc_oset_in(b, srtl_reach(*((b->next)))))), <=(*((b->key)), sll_min_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(srtl_reach(b), @_vcc_oset_union(srtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_keys(a), @_vcc_intset_union(sll_keys(*((a->next))), @_vcc_intset_singleton(*((a->key)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#a, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_list_len_next(a), unchecked+(sll_list_len_next(*((a->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#a, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(rsrtl(a), &&(&&(rsrtl(*((a->next))), unchecked!(@_vcc_oset_in(a, rsrtl_reach(*((a->next)))))), >=(*((a->key)), sll_max_key(*((a->next))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(rsrtl_reach(a), @_vcc_oset_union(rsrtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll(a), &&(sll(*((a->next))), unchecked!(@_vcc_oset_in(a, sll_reach(*((a->next)))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#a, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(sll_reach(a), @_vcc_oset_union(sll_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_max_key(a), @\int_max(*((a->key)), sll_max_key(*((a->next)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(sll_min_key(a), @\int_min(*((a->key)), sll_min_key(*((a->next)))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#a, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(a), @_vcc_ptr_neq_null(*((a->next)))), ==(srtl(a), &&(&&(srtl(*((a->next))), unchecked!(@_vcc_oset_in(a, srtl_reach(*((a->next)))))), <=(*((a->key)), sll_min_key(*((a->next))))))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#a, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#a, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#a, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(a), ==(srtl_reach(a), @_vcc_oset_union(srtl_reach(*((a->next))), @_vcc_oset_singleton(a)))); 
        assume $non_null($phys_ptr_cast(P#a, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#a, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#a, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#a, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
        assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_keys(b), @_vcc_intset_union(sll_keys(*((b->next))), @_vcc_intset_singleton(*((b->key)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#b, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_list_len_next(b), unchecked+(sll_list_len_next(*((b->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#b, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(rsrtl(b), &&(&&(rsrtl(*((b->next))), unchecked!(@_vcc_oset_in(b, rsrtl_reach(*((b->next)))))), >=(*((b->key)), sll_max_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(rsrtl_reach(b), @_vcc_oset_union(rsrtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll(b), &&(sll(*((b->next))), unchecked!(@_vcc_oset_in(b, sll_reach(*((b->next)))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#b, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(sll_reach(b), @_vcc_oset_union(sll_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_max_key(b), @\int_max(*((b->key)), sll_max_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(sll_min_key(b), @\int_min(*((b->key)), sll_min_key(*((b->next)))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#b, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(b), @_vcc_ptr_neq_null(*((b->next)))), ==(srtl(b), &&(&&(srtl(*((b->next))), unchecked!(@_vcc_oset_in(b, srtl_reach(*((b->next)))))), <=(*((b->key)), sll_min_key(*((b->next))))))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#b, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#b, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#b, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(b), ==(srtl_reach(b), @_vcc_oset_union(srtl_reach(*((b->next))), @_vcc_oset_singleton(b)))); 
        assume $non_null($phys_ptr_cast(P#b, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#b, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#b, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#b, ^s_node)));
        // return a; 
        $result := $phys_ptr_cast(P#a, ^s_node);
        assume true;
        assert $position_marker();
        goto #exit;
    }

  anon8:
    // skip

  #exit:
}



axiom (forall Q#__vcc_state$1^687.9#tc2#1644: $state, Q#x$1^687.9#dt1#1618: $ptr :: {:weight 10} { F#srtl(Q#__vcc_state$1^687.9#tc2#1644, $phys_ptr_cast(Q#x$1^687.9#dt1#1618, ^s_node)) } { F#sll(Q#__vcc_state$1^687.9#tc2#1644, $phys_ptr_cast(Q#x$1^687.9#dt1#1618, ^s_node)) } $good_state(Q#__vcc_state$1^687.9#tc2#1644) && true ==> F#srtl(Q#__vcc_state$1^687.9#tc2#1644, $phys_ptr_cast(Q#x$1^687.9#dt1#1618, ^s_node)) ==> F#sll(Q#__vcc_state$1^687.9#tc2#1644, $phys_ptr_cast(Q#x$1^687.9#dt1#1618, ^s_node)));

axiom (forall Q#__vcc_state$1^688.9#tc2#1645: $state, Q#x$1^688.9#dt1#1619: $ptr :: {:weight 10} { F#rsrtl(Q#__vcc_state$1^688.9#tc2#1645, $phys_ptr_cast(Q#x$1^688.9#dt1#1619, ^s_node)) } { F#sll(Q#__vcc_state$1^688.9#tc2#1645, $phys_ptr_cast(Q#x$1^688.9#dt1#1619, ^s_node)) } $good_state(Q#__vcc_state$1^688.9#tc2#1645) && true ==> F#rsrtl(Q#__vcc_state$1^688.9#tc2#1645, $phys_ptr_cast(Q#x$1^688.9#dt1#1619, ^s_node)) ==> F#sll(Q#__vcc_state$1^688.9#tc2#1645, $phys_ptr_cast(Q#x$1^688.9#dt1#1619, ^s_node)));

axiom (forall Q#__vcc_state$1^689.9#tc2#1646: $state, Q#x$1^689.9#dt1#1620: $ptr :: {:weight 10} { F#sll_reach(Q#__vcc_state$1^689.9#tc2#1646, $phys_ptr_cast(Q#x$1^689.9#dt1#1620, ^s_node)) } { F#srtl_reach(Q#__vcc_state$1^689.9#tc2#1646, $phys_ptr_cast(Q#x$1^689.9#dt1#1620, ^s_node)) } $good_state(Q#__vcc_state$1^689.9#tc2#1646) && true ==> F#sll_reach(Q#__vcc_state$1^689.9#tc2#1646, $phys_ptr_cast(Q#x$1^689.9#dt1#1620, ^s_node)) == F#srtl_reach(Q#__vcc_state$1^689.9#tc2#1646, $phys_ptr_cast(Q#x$1^689.9#dt1#1620, ^s_node)));

axiom (forall Q#__vcc_state$1^690.9#tc2#1647: $state, Q#x$1^690.9#dt1#1621: $ptr :: {:weight 10} { F#srtl_reach(Q#__vcc_state$1^690.9#tc2#1647, $phys_ptr_cast(Q#x$1^690.9#dt1#1621, ^s_node)) } { F#rsrtl_reach(Q#__vcc_state$1^690.9#tc2#1647, $phys_ptr_cast(Q#x$1^690.9#dt1#1621, ^s_node)) } $good_state(Q#__vcc_state$1^690.9#tc2#1647) && true ==> F#srtl_reach(Q#__vcc_state$1^690.9#tc2#1647, $phys_ptr_cast(Q#x$1^690.9#dt1#1621, ^s_node)) == F#rsrtl_reach(Q#__vcc_state$1^690.9#tc2#1647, $phys_ptr_cast(Q#x$1^690.9#dt1#1621, ^s_node)));

axiom (forall Q#__vcc_state$1^691.9#tc2#1648: $state, Q#x$1^691.9#dt1#1622: $ptr, Q#y$1^691.9#dt1#1623: $ptr :: {:weight 10} { F#sll_lseg_reach(Q#__vcc_state$1^691.9#tc2#1648, $phys_ptr_cast(Q#x$1^691.9#dt1#1622, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1623, ^s_node)) } { F#srtl_lseg_reach(Q#__vcc_state$1^691.9#tc2#1648, $phys_ptr_cast(Q#x$1^691.9#dt1#1622, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1623, ^s_node)) } $good_state(Q#__vcc_state$1^691.9#tc2#1648) && true ==> F#sll_lseg_reach(Q#__vcc_state$1^691.9#tc2#1648, $phys_ptr_cast(Q#x$1^691.9#dt1#1622, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1623, ^s_node)) == F#srtl_lseg_reach(Q#__vcc_state$1^691.9#tc2#1648, $phys_ptr_cast(Q#x$1^691.9#dt1#1622, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1623, ^s_node)));

const unique l#public: $label;

axiom $type_code_is(2, ^$#state_t);

const unique #tok$2^32.5: $token;

const unique #tok$2^19.5: $token;

const unique #tok$3^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(3, #file^?3Cno?20file?3E);

const unique #tok$2^3.3: $token;

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgrass?5Csls_concat.c: $token;

axiom $file_name_is(2, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgrass?5Csls_concat.c);

const unique #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgrass?5Cdryad_sls.h: $token;

axiom $file_name_is(1, #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgrass?5Cdryad_sls.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

