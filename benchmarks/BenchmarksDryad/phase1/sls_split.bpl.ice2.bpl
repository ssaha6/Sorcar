
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

const unique ^$#sls_split.c..36263#3: $ctype;

axiom $def_fnptr_type(^$#sls_split.c..36263#3);

type $#sls_split.c..36263#3;

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



procedure split(P#x: $ptr) returns ($result: $ptr);
  requires F#srtl($s, $phys_ptr_cast(P#x, ^s_node));
  modifies $s, $cev_pc;
  ensures F#srtl(old($s), $phys_ptr_cast(P#x, ^s_node));
  ensures F#srtl($s, $phys_ptr_cast($result, ^s_node));
  ensures F#srtl($s, $phys_ptr_cast(P#x, ^s_node));
  ensures $oset_disjoint(F#srtl_reach($s, $phys_ptr_cast($result, ^s_node)), F#srtl_reach($s, $phys_ptr_cast(P#x, ^s_node)));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation split(P#x: $ptr) returns ($result: $ptr)
{
  var stmtexpr2#7: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr1#6: $state;
  var SL#_dryad_S0: $state;
  var stmtexpr0#5: $ptr;
  var z0#0: $ptr;
  var L#tmp: $ptr;
  var stmtexpr0#2: $ptr;
  var SL#curr2: $ptr;
  var stmtexpr1#4: $ptr;
  var SL#curr1: $ptr;
  var stmtexpr0#3: $ptr;
  var SL#z0: $ptr;
  var loopState#0: $state;
  var L#z: $ptr;
  var L#curr: $ptr;
  var stmtexpr1#9: $oset;
  var stmtexpr0#8: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var #wrTime$2^9.3: int;
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

// INV:PTR: P#x, L#z, L#curr
// INV:INT:
// INV:LST: srtl

  anon9:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$2^9.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$2^9.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$2^9.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := srtl_reach(x); 
    call SL#_dryad_G0 := srtl_reach($phys_ptr_cast(P#x, ^s_node));
    assume $full_stop_ext(#tok$3^0.0, $s);
    // _math \oset stmtexpr0#8; 
    // stmtexpr0#8 := _dryad_G0; 
    stmtexpr0#8 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#9; 
    // stmtexpr1#9 := _dryad_G1; 
    stmtexpr1#9 := SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_list_len_next(x), unchecked+(sll_list_len_next(*((x->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#x, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(rsrtl(x), &&(&&(rsrtl(*((x->next))), unchecked!(@_vcc_oset_in(x, rsrtl_reach(*((x->next)))))), >=(*((x->key)), sll_max_key(*((x->next))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(rsrtl_reach(x), @_vcc_oset_union(rsrtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union(sll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_max_key(x), @\int_max(*((x->key)), sll_max_key(*((x->next)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_min_key(x), @\int_min(*((x->key)), sll_min_key(*((x->next)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(srtl(x), &&(&&(srtl(*((x->next))), unchecked!(@_vcc_oset_in(x, srtl_reach(*((x->next)))))), <=(*((x->key)), sll_min_key(*((x->next))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(srtl_reach(x), @_vcc_oset_union(srtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
    // struct s_node* curr; 
    // struct s_node* z; 
    // assume ==>(@_vcc_ptr_neq_null(x), &&(@_vcc_mutable(@state, x), @writes_check(x))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#x, ^s_node)) && $top_writable($s, #wrTime$2^9.3, $phys_ptr_cast(P#x, ^s_node));
    // z := x; 
    L#z := $phys_ptr_cast(P#x, ^s_node);
    // assert sll_lseg(z, z); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assume sll_lseg(z, z); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assert srtl_lseg(z, z); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assume srtl_lseg(z, z); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert srtl_lseg(curr, curr); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume srtl_lseg(curr, curr); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(x, x); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume sll_lseg(x, x); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assert srtl_lseg(x, x); 
    assert F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume srtl_lseg(x, x); 
    assume F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // curr := x; 
    L#curr := $phys_ptr_cast(P#x, ^s_node);
    // assert sll_lseg(z, z); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assume sll_lseg(z, z); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assert srtl_lseg(z, z); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assume srtl_lseg(z, z); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert srtl_lseg(curr, curr); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume srtl_lseg(curr, curr); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(x, x); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume sll_lseg(x, x); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assert srtl_lseg(x, x); 
    assert F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    // assume srtl_lseg(x, x); 
    assume F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
    loopState#0 := $s;
    assume true;
p0000 := (F#srtl($s,$phys_ptr_cast(P#x,^s_node)));
p0001 := (F#srtl($s,$phys_ptr_cast(L#z,^s_node)));
p0002 := (F#srtl($s,$phys_ptr_cast(L#curr,^s_node)));
p0003 := (F#srtl_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)));
p0004 := (F#srtl_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0005 := (F#srtl_lseg($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0006 := (F#srtl_lseg($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0007 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0008 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)));
p0009 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0010 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0011 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0012 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0013 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0014 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0015 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0016 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0017 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0018 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0019 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0020 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0021 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0022 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0023 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0024 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0025 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0026 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#x,^s_node)));
p0040 := ($non_null($phys_ptr_cast(L#z,^s_node)));
p0041 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#x,^s_node)));
p0043 := ($is_null($phys_ptr_cast(L#z,^s_node)));
p0044 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0045 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#z,^s_node)));
p0046 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0047 := (($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0048 := (($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0049 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0050 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#z,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0059 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0060 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0061 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0062 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(L#z,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(L#z,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0071 := (($is_null($phys_ptr_cast(L#z,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0072 := (($is_null($phys_ptr_cast(L#z,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0073 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0074 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(P#x,^s_node))));

    while (true)

invariant (p0000 == (F#srtl($s,$phys_ptr_cast(P#x,^s_node))));
invariant (p0001 == (F#srtl($s,$phys_ptr_cast(L#z,^s_node))));
invariant (p0002 == (F#srtl($s,$phys_ptr_cast(L#curr,^s_node))));
invariant (p0003 == (F#srtl_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node))));
invariant (p0004 == (F#srtl_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0005 == (F#srtl_lseg($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node))));
invariant (p0006 == (F#srtl_lseg($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0007 == (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
invariant (p0008 == (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node))));
invariant (p0009 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0010 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0011 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0012 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0013 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0014 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0015 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0016 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0027 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0028 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0029 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0030 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0031 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)))));
invariant (p0032 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)))));
invariant (p0033 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0034 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)))));
invariant (p0035 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0036 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0037 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)))));
invariant (p0038 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)))));
invariant (p0039 == ($non_null($phys_ptr_cast(P#x,^s_node))));
invariant (p0040 == ($non_null($phys_ptr_cast(L#z,^s_node))));
invariant (p0041 == ($non_null($phys_ptr_cast(L#curr,^s_node))));
invariant (p0042 == ($is_null($phys_ptr_cast(P#x,^s_node))));
invariant (p0043 == ($is_null($phys_ptr_cast(L#z,^s_node))));
invariant (p0044 == ($is_null($phys_ptr_cast(L#curr,^s_node))));
invariant (p0045 == (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#z,^s_node))));
invariant (p0046 == (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0047 == (($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(P#x,^s_node))));
invariant (p0048 == (($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0049 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
invariant (p0050 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#z,^s_node))));
invariant (p0051 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node)))));
invariant (p0052 == (($non_null($phys_ptr_cast(L#z,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node)))));
invariant (p0053 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))));
invariant (p0054 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node)))));
invariant (p0055 == (($non_null($phys_ptr_cast(L#z,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node)))));
invariant (p0056 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))));
invariant (p0057 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#z,^s_node)))));
invariant (p0058 == (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0059 == (($non_null($phys_ptr_cast(L#z,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0060 == (($non_null($phys_ptr_cast(L#z,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0061 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0062 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#z,^s_node)))));
invariant (p0063 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0064 == ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)))))));
invariant (p0065 == ((!($oset_in($phys_ptr_cast(L#z,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0066 == ((!($oset_in($phys_ptr_cast(L#z,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0067 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)))))));
invariant (p0068 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)))))));
invariant (p0069 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0070 == (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#z,^s_node)))));
invariant (p0071 == (($is_null($phys_ptr_cast(L#z,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0072 == (($is_null($phys_ptr_cast(L#z,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node)))));
invariant (p0073 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#z,^s_node)))));
invariant (p0074 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(P#x,^s_node)))));

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

      invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $top_writable($s, #wrTime$2^9.3, $phys_ptr_cast(L#curr, ^s_node));
      invariant $non_null($phys_ptr_cast(L#z, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#z, ^s_node));
      invariant $non_null($phys_ptr_cast(L#z, ^s_node)) ==> $top_writable($s, #wrTime$2^9.3, $phys_ptr_cast(L#z, ^s_node));
    {
      anon6:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#0, $s);
        assume $full_stop_ext(#tok$2^22.3, $s);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#0, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(curr)) ...
        if ($non_null($phys_ptr_cast(L#curr, ^s_node)))
        {
          anon3:
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
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
            // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_list_len_next(x), unchecked+(sll_list_len_next(*((x->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#x, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(rsrtl(x), &&(&&(rsrtl(*((x->next))), unchecked!(@_vcc_oset_in(x, rsrtl_reach(*((x->next)))))), >=(*((x->key)), sll_max_key(*((x->next))))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(rsrtl_reach(x), @_vcc_oset_union(rsrtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union(sll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_max_key(x), @\int_max(*((x->key)), sll_max_key(*((x->next)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_min_key(x), @\int_min(*((x->key)), sll_min_key(*((x->next)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(srtl(x), &&(&&(srtl(*((x->next))), unchecked!(@_vcc_oset_in(x, srtl_reach(*((x->next)))))), <=(*((x->key)), sll_min_key(*((x->next))))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(x), ==(srtl_reach(x), @_vcc_oset_union(srtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg(x, z), &&(sll_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), z)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_reach(x, z), @_vcc_oset_union(sll_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_keys(x, z), @_vcc_intset_union(sll_lseg_keys(*((x->next)), z), @_vcc_intset_singleton(*((x->key)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_len_next(x, z), unchecked+(sll_lseg_len_next(*((x->next)), z), 1))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_max_key(x, z), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), z)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_min_key(x, z), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), z)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(srtl_lseg(x, z), &&(&&(srtl_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), z)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), z))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(srtl_lseg_reach(x, z), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg(x, curr), &&(sll_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_reach(x, curr), @_vcc_oset_union(sll_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_keys(x, curr), @_vcc_intset_union(sll_lseg_keys(*((x->next)), curr), @_vcc_intset_singleton(*((x->key)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_len_next(x, curr), unchecked+(sll_lseg_len_next(*((x->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_max_key(x, curr), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_min_key(x, curr), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(srtl_lseg(x, curr), &&(&&(srtl_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), curr)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(srtl_lseg_reach(x, curr), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // struct s_node* z0; 
            // z0 := z; 
            SL#z0 := $phys_ptr_cast(L#z, ^s_node);
            // struct s_node* stmtexpr0#3; 
            // stmtexpr0#3 := z0; 
            stmtexpr0#3 := $phys_ptr_cast(SL#z0, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg(z, *((z->next))), &&(sll_lseg(*((z->next)), *((z->next))), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), *((z->next)))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg_reach(z, *((z->next))), @_vcc_oset_union(sll_lseg_reach(*((z->next)), *((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg_keys(z, *((z->next))), @_vcc_intset_union(sll_lseg_keys(*((z->next)), *((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg_len_next(z, *((z->next))), unchecked+(sll_lseg_len_next(*((z->next)), *((z->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), @_vcc_ptr_neq_pure(*((z->next)), *((z->next)))), ==(sll_lseg_max_key(z, *((z->next))), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), *((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), @_vcc_ptr_neq_pure(*((z->next)), *((z->next)))), ==(sll_lseg_min_key(z, *((z->next))), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), *((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), @_vcc_ptr_neq_pure(*((z->next)), *((z->next)))), ==(srtl_lseg(z, *((z->next))), &&(&&(srtl_lseg(*((z->next)), *((z->next))), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), *((z->next)))))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), *((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(srtl_lseg_reach(z, *((z->next))), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), *((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assert @reads_check_normal((z->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#z, ^s_node));
            // z := *((z->next)); 
            L#z := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg(x, z), &&(sll_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), z)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_reach(x, z), @_vcc_oset_union(sll_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_keys(x, z), @_vcc_intset_union(sll_lseg_keys(*((x->next)), z), @_vcc_intset_singleton(*((x->key)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_len_next(x, z), unchecked+(sll_lseg_len_next(*((x->next)), z), 1))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_max_key(x, z), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), z)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_min_key(x, z), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), z)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(srtl_lseg(x, z), &&(&&(srtl_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), z)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), z))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(srtl_lseg_reach(x, z), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // struct s_node* curr1; 
            // curr1 := curr; 
            SL#curr1 := $phys_ptr_cast(L#curr, ^s_node);
            // struct s_node* stmtexpr1#4; 
            // stmtexpr1#4 := curr1; 
            stmtexpr1#4 := $phys_ptr_cast(SL#curr1, ^s_node);
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
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg(x, curr), &&(sll_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_reach(x, curr), @_vcc_oset_union(sll_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_keys(x, curr), @_vcc_intset_union(sll_lseg_keys(*((x->next)), curr), @_vcc_intset_singleton(*((x->key)))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_len_next(x, curr), unchecked+(sll_lseg_len_next(*((x->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_max_key(x, curr), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_min_key(x, curr), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(srtl_lseg(x, curr), &&(&&(srtl_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), curr)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(srtl_lseg_reach(x, curr), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
            assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            assume true;
            // if (@_vcc_ptr_neq_null(curr)) ...
            if ($non_null($phys_ptr_cast(L#curr, ^s_node)))
            {
              anon1:
                // struct s_node* curr2; 
                // curr2 := curr; 
                SL#curr2 := $phys_ptr_cast(L#curr, ^s_node);
                // struct s_node* stmtexpr0#2; 
                // stmtexpr0#2 := curr2; 
                stmtexpr0#2 := $phys_ptr_cast(SL#curr2, ^s_node);
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
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg(x, curr), &&(sll_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_reach(x, curr), @_vcc_oset_union(sll_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_keys(x, curr), @_vcc_intset_union(sll_lseg_keys(*((x->next)), curr), @_vcc_intset_singleton(*((x->key)))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_len_next(x, curr), unchecked+(sll_lseg_len_next(*((x->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_max_key(x, curr), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_min_key(x, curr), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(srtl_lseg(x, curr), &&(&&(srtl_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), curr)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), curr))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(srtl_lseg_reach(x, curr), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg(x, curr), &&(sll_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_reach(x, curr), @_vcc_oset_union(sll_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_keys(x, curr), @_vcc_intset_union(sll_lseg_keys(*((x->next)), curr), @_vcc_intset_singleton(*((x->key)))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_len_next(x, curr), unchecked+(sll_lseg_len_next(*((x->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_max_key(x, curr), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_min_key(x, curr), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), curr)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(srtl_lseg(x, curr), &&(&&(srtl_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), curr)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), curr))))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(srtl_lseg_reach(x, curr), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
                assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
                assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
            }
            else
            {
              anon2:
                // assert @_vcc_possibly_unreachable; 
                assert {:PossiblyUnreachable true} true;
            }

          anon4:
            // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node)) && $top_writable($s, #wrTime$2^9.3, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(z), &&(@_vcc_mutable(@state, z), @writes_check(z))); 
            assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#z, ^s_node)) && $top_writable($s, #wrTime$2^9.3, $phys_ptr_cast(L#z, ^s_node));
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
p0000 := (F#srtl($s,$phys_ptr_cast(P#x,^s_node)));
p0001 := (F#srtl($s,$phys_ptr_cast(L#z,^s_node)));
p0002 := (F#srtl($s,$phys_ptr_cast(L#curr,^s_node)));
p0003 := (F#srtl_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)));
p0004 := (F#srtl_lseg($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0005 := (F#srtl_lseg($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0006 := (F#srtl_lseg($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0007 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)));
p0008 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)));
p0009 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0010 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0011 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0012 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0013 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0014 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0015 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0016 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0017 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0018 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0019 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0020 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0021 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0022 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0023 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0024 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0025 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0026 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#x,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#z,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#x,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#z,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#x,^s_node)));
p0040 := ($non_null($phys_ptr_cast(L#z,^s_node)));
p0041 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#x,^s_node)));
p0043 := ($is_null($phys_ptr_cast(L#z,^s_node)));
p0044 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0045 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#z,^s_node)));
p0046 := (($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0047 := (($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0048 := (($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0049 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node)));
p0050 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#z,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#x,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#x,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0059 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0060 := (($non_null($phys_ptr_cast(L#z,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#z,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0061 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0062 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#x,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#z,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(L#z,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(L#z,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#x,^s_node),$phys_ptr_cast(L#z,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#z,^s_node),$phys_ptr_cast(P#x,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#x,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0071 := (($is_null($phys_ptr_cast(L#z,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0072 := (($is_null($phys_ptr_cast(L#z,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#x,^s_node))));
p0073 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#x,^s_node) == $phys_ptr_cast(L#z,^s_node))));
p0074 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#z,^s_node) == $phys_ptr_cast(P#x,^s_node))));

    }

  anon10:
    assume $full_stop_ext(#tok$2^22.3, $s);

  #break_1:
    // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
    assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
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
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_list_len_next(x), unchecked+(sll_list_len_next(*((x->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#x, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(rsrtl(x), &&(&&(rsrtl(*((x->next))), unchecked!(@_vcc_oset_in(x, rsrtl_reach(*((x->next)))))), >=(*((x->key)), sll_max_key(*((x->next))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(rsrtl_reach(x), @_vcc_oset_union(rsrtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union(sll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_max_key(x), @\int_max(*((x->key)), sll_max_key(*((x->next)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_min_key(x), @\int_min(*((x->key)), sll_min_key(*((x->next)))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(srtl(x), &&(&&(srtl(*((x->next))), unchecked!(@_vcc_oset_in(x, srtl_reach(*((x->next)))))), <=(*((x->key)), sll_min_key(*((x->next))))))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(x), ==(srtl_reach(x), @_vcc_oset_union(srtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
    assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
    assume true;
    // if (@_vcc_ptr_neq_null(z)) ...
    if ($non_null($phys_ptr_cast(L#z, ^s_node)))
    {
      anon7:
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
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
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_list_len_next(x), unchecked+(sll_list_len_next(*((x->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#x, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(rsrtl(x), &&(&&(rsrtl(*((x->next))), unchecked!(@_vcc_oset_in(x, rsrtl_reach(*((x->next)))))), >=(*((x->key)), sll_max_key(*((x->next))))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(rsrtl_reach(x), @_vcc_oset_union(rsrtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union(sll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_max_key(x), @\int_max(*((x->key)), sll_max_key(*((x->next)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_min_key(x), @\int_min(*((x->key)), sll_min_key(*((x->next)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(srtl(x), &&(&&(srtl(*((x->next))), unchecked!(@_vcc_oset_in(x, srtl_reach(*((x->next)))))), <=(*((x->key)), sll_min_key(*((x->next))))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(srtl_reach(x), @_vcc_oset_union(srtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg(x, z), &&(sll_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), z)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_reach(x, z), @_vcc_oset_union(sll_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_keys(x, z), @_vcc_intset_union(sll_lseg_keys(*((x->next)), z), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_len_next(x, z), unchecked+(sll_lseg_len_next(*((x->next)), z), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_max_key(x, z), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_min_key(x, z), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(srtl_lseg(x, z), &&(&&(srtl_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), z)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), z))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(srtl_lseg_reach(x, z), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg(x, curr), &&(sll_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_reach(x, curr), @_vcc_oset_union(sll_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_keys(x, curr), @_vcc_intset_union(sll_lseg_keys(*((x->next)), curr), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_len_next(x, curr), unchecked+(sll_lseg_len_next(*((x->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_max_key(x, curr), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), curr)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_min_key(x, curr), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), curr)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(srtl_lseg(x, curr), &&(&&(srtl_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), curr)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), curr))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(srtl_lseg_reach(x, curr), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // struct s_node* tmp; 
        // tmp := z; 
        L#tmp := $phys_ptr_cast(L#z, ^s_node);
        // assert sll_lseg(tmp, tmp); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume sll_lseg(tmp, tmp); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assert srtl_lseg(tmp, tmp); 
        assert F#srtl_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume srtl_lseg(tmp, tmp); 
        assume F#srtl_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assert sll_lseg(z, z); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume sll_lseg(z, z); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assert srtl_lseg(z, z); 
        assert F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume srtl_lseg(z, z); 
        assume F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assert sll_lseg(curr, curr); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume sll_lseg(curr, curr); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assert srtl_lseg(curr, curr); 
        assert F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume srtl_lseg(curr, curr); 
        assume F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assert sll_lseg(x, x); 
        assert F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
        // assume sll_lseg(x, x); 
        assume F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
        // assert srtl_lseg(x, x); 
        assert F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
        // assume srtl_lseg(x, x); 
        assume F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(P#x, ^s_node));
        // struct s_node* z0#0; 
        // z0#0 := z; 
        z0#0 := $phys_ptr_cast(L#z, ^s_node);
        // struct s_node* stmtexpr0#5; 
        // stmtexpr0#5 := z0#0; 
        stmtexpr0#5 := $phys_ptr_cast(z0#0, ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg(z, *((z->next))), &&(sll_lseg(*((z->next)), *((z->next))), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), *((z->next)))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg_reach(z, *((z->next))), @_vcc_oset_union(sll_lseg_reach(*((z->next)), *((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg_keys(z, *((z->next))), @_vcc_intset_union(sll_lseg_keys(*((z->next)), *((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(sll_lseg_len_next(z, *((z->next))), unchecked+(sll_lseg_len_next(*((z->next)), *((z->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), @_vcc_ptr_neq_pure(*((z->next)), *((z->next)))), ==(sll_lseg_max_key(z, *((z->next))), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), *((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), @_vcc_ptr_neq_pure(*((z->next)), *((z->next)))), ==(sll_lseg_min_key(z, *((z->next))), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), *((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), @_vcc_ptr_neq_pure(*((z->next)), *((z->next)))), ==(srtl_lseg(z, *((z->next))), &&(&&(srtl_lseg(*((z->next)), *((z->next))), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), *((z->next)))))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), *((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, *((z->next)))), ==(srtl_lseg_reach(z, *((z->next))), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), *((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assert @reads_check_normal((z->next)); 
        assert $thread_local($s, $phys_ptr_cast(L#z, ^s_node));
        // z := *((z->next)); 
        L#z := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg(x, z), &&(sll_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), z)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_reach(x, z), @_vcc_oset_union(sll_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_keys(x, z), @_vcc_intset_union(sll_lseg_keys(*((x->next)), z), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_len_next(x, z), unchecked+(sll_lseg_len_next(*((x->next)), z), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_max_key(x, z), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_min_key(x, z), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(srtl_lseg(x, z), &&(&&(srtl_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), z)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), z))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(srtl_lseg_reach(x, z), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // _math \state _dryad_S0; 
        // _dryad_S0 := @_vcc_current_state(@state); 
        SL#_dryad_S0 := $current_state($s);
        // _math \state stmtexpr1#6; 
        // stmtexpr1#6 := _dryad_S0; 
        stmtexpr1#6 := SL#_dryad_S0;
        // assert @prim_writes_check((tmp->next)); 
        assert $writable_prim($s, #wrTime$2^9.3, $dot($phys_ptr_cast(L#tmp, ^s_node), s_node.next));
        // *(tmp->next) := (struct s_node*)@null; 
        call $write_int(s_node.next, $phys_ptr_cast(L#tmp, ^s_node), $ptr_to_int($phys_ptr_cast($null, ^s_node)));
        assume $full_stop_ext(#tok$2^45.5, $s);
        // _math \state _dryad_S1; 
        // _dryad_S1 := @_vcc_current_state(@state); 
        SL#_dryad_S1 := $current_state($s);
        // _math \state stmtexpr2#7; 
        // stmtexpr2#7 := _dryad_S1; 
        stmtexpr2#7 := SL#_dryad_S1;
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z0#0)))), ==(old(_dryad_S0, sll_keys(z0#0)), old(_dryad_S1, sll_keys(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z0#0)))), ==(old(_dryad_S0, sll_list_len_next(z0#0)), old(_dryad_S1, sll_list_len_next(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(z0#0)))), ==(old(_dryad_S0, rsrtl(z0#0)), old(_dryad_S1, rsrtl(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(z0#0)))), ==(old(_dryad_S0, rsrtl_reach(z0#0)), old(_dryad_S1, rsrtl_reach(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z0#0)))), ==(old(_dryad_S0, sll(z0#0)), old(_dryad_S1, sll(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z0#0)))), ==(old(_dryad_S0, sll_reach(z0#0)), old(_dryad_S1, sll_reach(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z0#0)))), ==(old(_dryad_S0, sll_max_key(z0#0)), old(_dryad_S1, sll_max_key(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z0#0)))), ==(old(_dryad_S0, sll_min_key(z0#0)), old(_dryad_S1, sll_min_key(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(z0#0)))), ==(old(_dryad_S0, srtl(z0#0)), old(_dryad_S1, srtl(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(z0#0)))), ==(old(_dryad_S0, srtl_reach(z0#0)), old(_dryad_S1, srtl_reach(z0#0)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(z0#0, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z)))), ==(old(_dryad_S0, sll_keys(z)), old(_dryad_S1, sll_keys(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z)))), ==(old(_dryad_S0, sll_list_len_next(z)), old(_dryad_S1, sll_list_len_next(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(z)))), ==(old(_dryad_S0, rsrtl(z)), old(_dryad_S1, rsrtl(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(z)))), ==(old(_dryad_S0, rsrtl_reach(z)), old(_dryad_S1, rsrtl_reach(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z)))), ==(old(_dryad_S0, sll(z)), old(_dryad_S1, sll(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z)))), ==(old(_dryad_S0, sll_reach(z)), old(_dryad_S1, sll_reach(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z)))), ==(old(_dryad_S0, sll_max_key(z)), old(_dryad_S1, sll_max_key(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(z)))), ==(old(_dryad_S0, sll_min_key(z)), old(_dryad_S1, sll_min_key(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(z)))), ==(old(_dryad_S0, srtl(z)), old(_dryad_S1, srtl(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(z)))), ==(old(_dryad_S0, srtl_reach(z)), old(_dryad_S1, srtl_reach(z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_keys(curr)), old(_dryad_S1, sll_keys(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_list_len_next(curr)), old(_dryad_S1, sll_list_len_next(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(curr)))), ==(old(_dryad_S0, rsrtl(curr)), old(_dryad_S1, rsrtl(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(curr)))), ==(old(_dryad_S0, rsrtl_reach(curr)), old(_dryad_S1, rsrtl_reach(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll(curr)), old(_dryad_S1, sll(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_reach(curr)), old(_dryad_S1, sll_reach(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_max_key(curr)), old(_dryad_S1, sll_max_key(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_min_key(curr)), old(_dryad_S1, sll_min_key(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(curr)))), ==(old(_dryad_S0, srtl(curr)), old(_dryad_S1, srtl(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(curr)))), ==(old(_dryad_S0, srtl_reach(curr)), old(_dryad_S1, srtl_reach(curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll_keys(x)), old(_dryad_S1, sll_keys(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll_list_len_next(x)), old(_dryad_S1, sll_list_len_next(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(x)))), ==(old(_dryad_S0, rsrtl(x)), old(_dryad_S1, rsrtl(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, rsrtl_reach(x)))), ==(old(_dryad_S0, rsrtl_reach(x)), old(_dryad_S1, rsrtl_reach(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll(x)), old(_dryad_S1, sll(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll_reach(x)), old(_dryad_S1, sll_reach(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll_max_key(x)), old(_dryad_S1, sll_max_key(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_reach(x)))), ==(old(_dryad_S0, sll_min_key(x)), old(_dryad_S1, sll_min_key(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(x)))), ==(old(_dryad_S0, srtl(x)), old(_dryad_S1, srtl(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_reach(x)))), ==(old(_dryad_S0, srtl_reach(x)), old(_dryad_S1, srtl_reach(x)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg(z, curr)), old(_dryad_S1, sll_lseg(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_reach(z, curr)), old(_dryad_S1, sll_lseg_reach(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_keys(z, curr)), old(_dryad_S1, sll_lseg_keys(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_len_next(z, curr)), old(_dryad_S1, sll_lseg_len_next(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_max_key(z, curr)), old(_dryad_S1, sll_lseg_max_key(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_min_key(z, curr)), old(_dryad_S1, sll_lseg_min_key(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(z, curr)))), ==(old(_dryad_S0, srtl_lseg(z, curr)), old(_dryad_S1, srtl_lseg(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(z, curr)))), ==(old(_dryad_S0, srtl_lseg_reach(z, curr)), old(_dryad_S1, srtl_lseg_reach(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg(x, z)), old(_dryad_S1, sll_lseg(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_reach(x, z)), old(_dryad_S1, sll_lseg_reach(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_keys(x, z)), old(_dryad_S1, sll_lseg_keys(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_len_next(x, z)), old(_dryad_S1, sll_lseg_len_next(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_max_key(x, z)), old(_dryad_S1, sll_lseg_max_key(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_min_key(x, z)), old(_dryad_S1, sll_lseg_min_key(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, z)))), ==(old(_dryad_S0, srtl_lseg(x, z)), old(_dryad_S1, srtl_lseg(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, z)))), ==(old(_dryad_S0, srtl_lseg_reach(x, z)), old(_dryad_S1, srtl_lseg_reach(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, curr)))), ==(old(_dryad_S0, sll_lseg(x, curr)), old(_dryad_S1, sll_lseg(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, curr)))), ==(old(_dryad_S0, sll_lseg_reach(x, curr)), old(_dryad_S1, sll_lseg_reach(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, curr)))), ==(old(_dryad_S0, sll_lseg_keys(x, curr)), old(_dryad_S1, sll_lseg_keys(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, curr)))), ==(old(_dryad_S0, sll_lseg_len_next(x, curr)), old(_dryad_S1, sll_lseg_len_next(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, curr)))), ==(old(_dryad_S0, sll_lseg_max_key(x, curr)), old(_dryad_S1, sll_lseg_max_key(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, curr)))), ==(old(_dryad_S0, sll_lseg_min_key(x, curr)), old(_dryad_S1, sll_lseg_min_key(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, curr)))), ==(old(_dryad_S0, srtl_lseg(x, curr)), old(_dryad_S1, srtl_lseg(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, curr)))), ==(old(_dryad_S0, srtl_lseg_reach(x, curr)), old(_dryad_S1, srtl_lseg_reach(x, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, sll_lseg(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, sll_lseg(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, sll_lseg_keys(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, sll_lseg_keys(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, sll_lseg_len_next(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, sll_lseg_len_next(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, sll_lseg_max_key(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, sll_lseg_max_key(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, sll_lseg_min_key(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, sll_lseg_min_key(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, srtl_lseg(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, srtl_lseg(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))), ==(old(_dryad_S0, srtl_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)), old(_dryad_S1, srtl_lseg_reach(old(_dryad_S0, *((tmp->next))), curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, tmp)))), ==(old(_dryad_S0, sll_lseg(x, tmp)), old(_dryad_S1, sll_lseg(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, tmp)))), ==(old(_dryad_S0, sll_lseg_reach(x, tmp)), old(_dryad_S1, sll_lseg_reach(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, tmp)))), ==(old(_dryad_S0, sll_lseg_keys(x, tmp)), old(_dryad_S1, sll_lseg_keys(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, tmp)))), ==(old(_dryad_S0, sll_lseg_len_next(x, tmp)), old(_dryad_S1, sll_lseg_len_next(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, tmp)))), ==(old(_dryad_S0, sll_lseg_max_key(x, tmp)), old(_dryad_S1, sll_lseg_max_key(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, tmp)))), ==(old(_dryad_S0, sll_lseg_min_key(x, tmp)), old(_dryad_S1, sll_lseg_min_key(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, tmp)))), ==(old(_dryad_S0, srtl_lseg(x, tmp)), old(_dryad_S1, srtl_lseg(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, tmp)))), ==(old(_dryad_S0, srtl_lseg_reach(x, tmp)), old(_dryad_S1, srtl_lseg_reach(x, tmp)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#tmp, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg(z, curr)), old(_dryad_S1, sll_lseg(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_reach(z, curr)), old(_dryad_S1, sll_lseg_reach(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_keys(z, curr)), old(_dryad_S1, sll_lseg_keys(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_len_next(z, curr)), old(_dryad_S1, sll_lseg_len_next(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_max_key(z, curr)), old(_dryad_S1, sll_lseg_max_key(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_min_key(z, curr)), old(_dryad_S1, sll_lseg_min_key(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(z, curr)))), ==(old(_dryad_S0, srtl_lseg(z, curr)), old(_dryad_S1, srtl_lseg(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(z, curr)))), ==(old(_dryad_S0, srtl_lseg_reach(z, curr)), old(_dryad_S1, srtl_lseg_reach(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg(x, z)), old(_dryad_S1, sll_lseg(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_reach(x, z)), old(_dryad_S1, sll_lseg_reach(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_keys(x, z)), old(_dryad_S1, sll_lseg_keys(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_len_next(x, z)), old(_dryad_S1, sll_lseg_len_next(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_max_key(x, z)), old(_dryad_S1, sll_lseg_max_key(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(x, z)))), ==(old(_dryad_S0, sll_lseg_min_key(x, z)), old(_dryad_S1, sll_lseg_min_key(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, z)))), ==(old(_dryad_S0, srtl_lseg(x, z)), old(_dryad_S1, srtl_lseg(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(x, z)))), ==(old(_dryad_S0, srtl_lseg_reach(x, z)), old(_dryad_S1, srtl_lseg_reach(x, z)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg(z, curr)), old(_dryad_S1, sll_lseg(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_reach(z, curr)), old(_dryad_S1, sll_lseg_reach(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_keys(z, curr)), old(_dryad_S1, sll_lseg_keys(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_len_next(z, curr)), old(_dryad_S1, sll_lseg_len_next(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_max_key(z, curr)), old(_dryad_S1, sll_lseg_max_key(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, sll_lseg_reach(z, curr)))), ==(old(_dryad_S0, sll_lseg_min_key(z, curr)), old(_dryad_S1, sll_lseg_min_key(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(z, curr)))), ==(old(_dryad_S0, srtl_lseg(z, curr)), old(_dryad_S1, srtl_lseg(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(tmp, old(_dryad_S0, srtl_lseg_reach(z, curr)))), ==(old(_dryad_S0, srtl_lseg_reach(z, curr)), old(_dryad_S1, srtl_lseg_reach(z, curr)))); 
        assume !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, z0#0)), ==(*((z0#0->key)), old(_dryad_S0, *((z0#0->key))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(z0#0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(z0#0, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(z0#0, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, z0#0)), @_vcc_ptr_eq_pure(*((z0#0->next)), old(_dryad_S0, *((z0#0->next))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(z0#0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, z)), ==(*((z->key)), old(_dryad_S0, *((z->key))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(L#z, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(L#z, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, z)), @_vcc_ptr_eq_pure(*((z->next)), old(_dryad_S0, *((z->next))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(L#z, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, curr)), ==(*((curr->key)), old(_dryad_S0, *((curr->key))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S0, *((curr->next))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, x)), ==(*((x->key)), old(_dryad_S0, *((x->key))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(P#x, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) == $rd_inv(SL#_dryad_S0, s_node.key, $phys_ptr_cast(P#x, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(tmp, x)), @_vcc_ptr_eq_pure(*((x->next)), old(_dryad_S0, *((x->next))))); 
        assume !($phys_ptr_cast(L#tmp, ^s_node) == $phys_ptr_cast(P#x, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S0, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(z0#0), ==(sll_keys(z0#0), @_vcc_intset_union(sll_keys(*((z0#0->next))), @_vcc_intset_singleton(*((z0#0->key)))))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(z0#0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(z0#0, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z0#0), ==(sll_list_len_next(z0#0), unchecked+(sll_list_len_next(*((z0#0->next))), 1))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(z0#0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(z0#0), @_vcc_ptr_neq_null(*((z0#0->next)))), ==(rsrtl(z0#0), &&(&&(rsrtl(*((z0#0->next))), unchecked!(@_vcc_oset_in(z0#0, rsrtl_reach(*((z0#0->next)))))), >=(*((z0#0->key)), sll_max_key(*((z0#0->next))))))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(z0#0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(z0#0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(z0#0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z0#0), ==(rsrtl_reach(z0#0), @_vcc_oset_union(rsrtl_reach(*((z0#0->next))), @_vcc_oset_singleton(z0#0)))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(z0#0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(z0#0, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z0#0), ==(sll(z0#0), &&(sll(*((z0#0->next))), unchecked!(@_vcc_oset_in(z0#0, sll_reach(*((z0#0->next)))))))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(z0#0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(z0#0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z0#0), ==(sll_reach(z0#0), @_vcc_oset_union(sll_reach(*((z0#0->next))), @_vcc_oset_singleton(z0#0)))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(z0#0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(z0#0, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z0#0), @_vcc_ptr_neq_null(*((z0#0->next)))), ==(sll_max_key(z0#0), @\int_max(*((z0#0->key)), sll_max_key(*((z0#0->next)))))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(z0#0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(z0#0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z0#0), @_vcc_ptr_neq_null(*((z0#0->next)))), ==(sll_min_key(z0#0), @\int_min(*((z0#0->key)), sll_min_key(*((z0#0->next)))))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(z0#0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(z0#0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z0#0), @_vcc_ptr_neq_null(*((z0#0->next)))), ==(srtl(z0#0), &&(&&(srtl(*((z0#0->next))), unchecked!(@_vcc_oset_in(z0#0, srtl_reach(*((z0#0->next)))))), <=(*((z0#0->key)), sll_min_key(*((z0#0->next))))))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(z0#0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(z0#0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(z0#0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z0#0), ==(srtl_reach(z0#0), @_vcc_oset_union(srtl_reach(*((z0#0->next))), @_vcc_oset_singleton(z0#0)))); 
        assume $non_null($phys_ptr_cast(z0#0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(z0#0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(z0#0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(z0#0, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_keys(z), @_vcc_intset_union(sll_keys(*((z->next))), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_list_len_next(z), unchecked+(sll_list_len_next(*((z->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(rsrtl(z), &&(&&(rsrtl(*((z->next))), unchecked!(@_vcc_oset_in(z, rsrtl_reach(*((z->next)))))), >=(*((z->key)), sll_max_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(rsrtl_reach(z), @_vcc_oset_union(rsrtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll(z), &&(sll(*((z->next))), unchecked!(@_vcc_oset_in(z, sll_reach(*((z->next)))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#z, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(sll_reach(z), @_vcc_oset_union(sll_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_max_key(z), @\int_max(*((z->key)), sll_max_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(sll_min_key(z), @\int_min(*((z->key)), sll_min_key(*((z->next)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_null(*((z->next)))), ==(srtl(z), &&(&&(srtl(*((z->next))), unchecked!(@_vcc_oset_in(z, srtl_reach(*((z->next)))))), <=(*((z->key)), sll_min_key(*((z->next))))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#z, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(z), ==(srtl_reach(z), @_vcc_oset_union(srtl_reach(*((z->next))), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
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
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_keys(x), @_vcc_intset_union(sll_keys(*((x->next))), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#x, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_list_len_next(x), unchecked+(sll_list_len_next(*((x->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#x, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(rsrtl(x), &&(&&(rsrtl(*((x->next))), unchecked!(@_vcc_oset_in(x, rsrtl_reach(*((x->next)))))), >=(*((x->key)), sll_max_key(*((x->next))))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(rsrtl_reach(x), @_vcc_oset_union(rsrtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll(x), &&(sll(*((x->next))), unchecked!(@_vcc_oset_in(x, sll_reach(*((x->next)))))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#x, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(sll_reach(x), @_vcc_oset_union(sll_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_max_key(x), @\int_max(*((x->key)), sll_max_key(*((x->next)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(sll_min_key(x), @\int_min(*((x->key)), sll_min_key(*((x->next)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#x, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_null(*((x->next)))), ==(srtl(x), &&(&&(srtl(*((x->next))), unchecked!(@_vcc_oset_in(x, srtl_reach(*((x->next)))))), <=(*((x->key)), sll_min_key(*((x->next))))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#x, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(x), ==(srtl_reach(x), @_vcc_oset_union(srtl_reach(*((x->next))), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#x, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_keys(tmp), @_vcc_intset_union(sll_keys(*((tmp->next))), @_vcc_intset_singleton(*((tmp->key)))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tmp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_list_len_next(tmp), unchecked+(sll_list_len_next(*((tmp->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#tmp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_null(*((tmp->next)))), ==(rsrtl(tmp), &&(&&(rsrtl(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, rsrtl_reach(*((tmp->next)))))), >=(*((tmp->key)), sll_max_key(*((tmp->next))))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(rsrtl_reach(tmp), @_vcc_oset_union(rsrtl_reach(*((tmp->next))), @_vcc_oset_singleton(tmp)))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#tmp, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll(tmp), &&(sll(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, sll_reach(*((tmp->next)))))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(sll_reach(tmp), @_vcc_oset_union(sll_reach(*((tmp->next))), @_vcc_oset_singleton(tmp)))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#tmp, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_null(*((tmp->next)))), ==(sll_max_key(tmp), @\int_max(*((tmp->key)), sll_max_key(*((tmp->next)))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#tmp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_null(*((tmp->next)))), ==(sll_min_key(tmp), @\int_min(*((tmp->key)), sll_min_key(*((tmp->next)))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#tmp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_null(*((tmp->next)))), ==(srtl(tmp), &&(&&(srtl(*((tmp->next))), unchecked!(@_vcc_oset_in(tmp, srtl_reach(*((tmp->next)))))), <=(*((tmp->key)), sll_min_key(*((tmp->next))))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#tmp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(tmp), ==(srtl_reach(tmp), @_vcc_oset_union(srtl_reach(*((tmp->next))), @_vcc_oset_singleton(tmp)))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#tmp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#tmp, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg(x, z), &&(sll_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), z)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_reach(x, z), @_vcc_oset_union(sll_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_keys(x, z), @_vcc_intset_union(sll_lseg_keys(*((x->next)), z), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_len_next(x, z), unchecked+(sll_lseg_len_next(*((x->next)), z), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_max_key(x, z), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_min_key(x, z), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(srtl_lseg(x, z), &&(&&(srtl_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), z)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), z))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(srtl_lseg_reach(x, z), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg(x, curr), &&(sll_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_reach(x, curr), @_vcc_oset_union(sll_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_keys(x, curr), @_vcc_intset_union(sll_lseg_keys(*((x->next)), curr), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(sll_lseg_len_next(x, curr), unchecked+(sll_lseg_len_next(*((x->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_max_key(x, curr), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), curr)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(sll_lseg_min_key(x, curr), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), curr)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), @_vcc_ptr_neq_pure(*((x->next)), curr)), ==(srtl_lseg(x, curr), &&(&&(srtl_lseg(*((x->next)), curr), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), curr)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), curr))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, curr)), ==(srtl_lseg_reach(x, curr), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), curr), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), ==(sll_lseg(tmp, curr), &&(sll_lseg(*((tmp->next)), curr), unchecked!(@_vcc_oset_in(tmp, sll_lseg_reach(*((tmp->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), ==(sll_lseg_reach(tmp, curr), @_vcc_oset_union(sll_lseg_reach(*((tmp->next)), curr), @_vcc_oset_singleton(tmp)))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#tmp, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), ==(sll_lseg_keys(tmp, curr), @_vcc_intset_union(sll_lseg_keys(*((tmp->next)), curr), @_vcc_intset_singleton(*((tmp->key)))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), ==(sll_lseg_len_next(tmp, curr), unchecked+(sll_lseg_len_next(*((tmp->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), @_vcc_ptr_neq_pure(*((tmp->next)), curr)), ==(sll_lseg_max_key(tmp, curr), @\int_max(*((tmp->key)), sll_lseg_max_key(*((tmp->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), @_vcc_ptr_neq_pure(*((tmp->next)), curr)), ==(sll_lseg_min_key(tmp, curr), @\int_min(*((tmp->key)), sll_lseg_min_key(*((tmp->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), @_vcc_ptr_neq_pure(*((tmp->next)), curr)), ==(srtl_lseg(tmp, curr), &&(&&(srtl_lseg(*((tmp->next)), curr), unchecked!(@_vcc_oset_in(tmp, srtl_lseg_reach(*((tmp->next)), curr)))), <=(*((tmp->key)), sll_lseg_min_key(*((tmp->next)), curr))))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#tmp, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#tmp, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(tmp), @_vcc_ptr_neq_pure(tmp, curr)), ==(srtl_lseg_reach(tmp, curr), @_vcc_oset_union(srtl_lseg_reach(*((tmp->next)), curr), @_vcc_oset_singleton(tmp)))); 
        assume $non_null($phys_ptr_cast(L#tmp, ^s_node)) && $phys_ptr_cast(L#tmp, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#tmp, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tmp, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#tmp, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg(x, z), &&(sll_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, sll_lseg_reach(*((x->next)), z)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_reach(x, z), @_vcc_oset_union(sll_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_keys(x, z), @_vcc_intset_union(sll_lseg_keys(*((x->next)), z), @_vcc_intset_singleton(*((x->key)))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(sll_lseg_len_next(x, z), unchecked+(sll_lseg_len_next(*((x->next)), z), 1))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_max_key(x, z), @\int_max(*((x->key)), sll_lseg_max_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(sll_lseg_min_key(x, z), @\int_min(*((x->key)), sll_lseg_min_key(*((x->next)), z)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), @_vcc_ptr_neq_pure(*((x->next)), z)), ==(srtl_lseg(x, z), &&(&&(srtl_lseg(*((x->next)), z), unchecked!(@_vcc_oset_in(x, srtl_lseg_reach(*((x->next)), z)))), <=(*((x->key)), sll_lseg_min_key(*((x->next)), z))))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)) && !$oset_in($phys_ptr_cast(P#x, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#x, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(x), @_vcc_ptr_neq_pure(x, z)), ==(srtl_lseg_reach(x, z), @_vcc_oset_union(srtl_lseg_reach(*((x->next)), z), @_vcc_oset_singleton(x)))); 
        assume $non_null($phys_ptr_cast(P#x, ^s_node)) && $phys_ptr_cast(P#x, ^s_node) != $phys_ptr_cast(L#z, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#x, ^s_node), $phys_ptr_cast(L#z, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#x, ^s_node), ^s_node), $phys_ptr_cast(L#z, ^s_node)), $oset_singleton($phys_ptr_cast(P#x, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg(z, curr), &&(sll_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, sll_lseg_reach(*((z->next)), curr)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_reach(z, curr), @_vcc_oset_union(sll_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_keys(z, curr), @_vcc_intset_union(sll_lseg_keys(*((z->next)), curr), @_vcc_intset_singleton(*((z->key)))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(sll_lseg_len_next(z, curr), unchecked+(sll_lseg_len_next(*((z->next)), curr), 1))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_max_key(z, curr), @\int_max(*((z->key)), sll_lseg_max_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(sll_lseg_min_key(z, curr), @\int_min(*((z->key)), sll_lseg_min_key(*((z->next)), curr)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), @_vcc_ptr_neq_pure(*((z->next)), curr)), ==(srtl_lseg(z, curr), &&(&&(srtl_lseg(*((z->next)), curr), unchecked!(@_vcc_oset_in(z, srtl_lseg_reach(*((z->next)), curr)))), <=(*((z->key)), sll_lseg_min_key(*((z->next)), curr))))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(L#z, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#z, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(z), @_vcc_ptr_neq_pure(z, curr)), ==(srtl_lseg_reach(z, curr), @_vcc_oset_union(srtl_lseg_reach(*((z->next)), curr), @_vcc_oset_singleton(z)))); 
        assume $non_null($phys_ptr_cast(L#z, ^s_node)) && $phys_ptr_cast(L#z, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#z, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#z, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(L#z, ^s_node)));
    }
    else
    {
      anon8:
        // assert @_vcc_possibly_unreachable; 
        assert {:PossiblyUnreachable true} true;
    }

  anon11:
    // return z; 
    $result := $phys_ptr_cast(L#z, ^s_node);
    assume true;
    assert $position_marker();
    goto #exit;

  anon12:
    // skip

  #exit:
}



axiom (forall Q#__vcc_state$1^687.9#tc2#1653: $state, Q#x$1^687.9#dt1#1622: $ptr :: {:weight 10} { F#srtl(Q#__vcc_state$1^687.9#tc2#1653, $phys_ptr_cast(Q#x$1^687.9#dt1#1622, ^s_node)) } { F#sll(Q#__vcc_state$1^687.9#tc2#1653, $phys_ptr_cast(Q#x$1^687.9#dt1#1622, ^s_node)) } $good_state(Q#__vcc_state$1^687.9#tc2#1653) && true ==> F#srtl(Q#__vcc_state$1^687.9#tc2#1653, $phys_ptr_cast(Q#x$1^687.9#dt1#1622, ^s_node)) ==> F#sll(Q#__vcc_state$1^687.9#tc2#1653, $phys_ptr_cast(Q#x$1^687.9#dt1#1622, ^s_node)));

axiom (forall Q#__vcc_state$1^688.9#tc2#1654: $state, Q#x$1^688.9#dt1#1623: $ptr :: {:weight 10} { F#rsrtl(Q#__vcc_state$1^688.9#tc2#1654, $phys_ptr_cast(Q#x$1^688.9#dt1#1623, ^s_node)) } { F#sll(Q#__vcc_state$1^688.9#tc2#1654, $phys_ptr_cast(Q#x$1^688.9#dt1#1623, ^s_node)) } $good_state(Q#__vcc_state$1^688.9#tc2#1654) && true ==> F#rsrtl(Q#__vcc_state$1^688.9#tc2#1654, $phys_ptr_cast(Q#x$1^688.9#dt1#1623, ^s_node)) ==> F#sll(Q#__vcc_state$1^688.9#tc2#1654, $phys_ptr_cast(Q#x$1^688.9#dt1#1623, ^s_node)));

axiom (forall Q#__vcc_state$1^689.9#tc2#1655: $state, Q#x$1^689.9#dt1#1624: $ptr :: {:weight 10} { F#sll_reach(Q#__vcc_state$1^689.9#tc2#1655, $phys_ptr_cast(Q#x$1^689.9#dt1#1624, ^s_node)) } { F#srtl_reach(Q#__vcc_state$1^689.9#tc2#1655, $phys_ptr_cast(Q#x$1^689.9#dt1#1624, ^s_node)) } $good_state(Q#__vcc_state$1^689.9#tc2#1655) && true ==> F#sll_reach(Q#__vcc_state$1^689.9#tc2#1655, $phys_ptr_cast(Q#x$1^689.9#dt1#1624, ^s_node)) == F#srtl_reach(Q#__vcc_state$1^689.9#tc2#1655, $phys_ptr_cast(Q#x$1^689.9#dt1#1624, ^s_node)));

axiom (forall Q#__vcc_state$1^690.9#tc2#1656: $state, Q#x$1^690.9#dt1#1625: $ptr :: {:weight 10} { F#srtl_reach(Q#__vcc_state$1^690.9#tc2#1656, $phys_ptr_cast(Q#x$1^690.9#dt1#1625, ^s_node)) } { F#rsrtl_reach(Q#__vcc_state$1^690.9#tc2#1656, $phys_ptr_cast(Q#x$1^690.9#dt1#1625, ^s_node)) } $good_state(Q#__vcc_state$1^690.9#tc2#1656) && true ==> F#srtl_reach(Q#__vcc_state$1^690.9#tc2#1656, $phys_ptr_cast(Q#x$1^690.9#dt1#1625, ^s_node)) == F#rsrtl_reach(Q#__vcc_state$1^690.9#tc2#1656, $phys_ptr_cast(Q#x$1^690.9#dt1#1625, ^s_node)));

axiom (forall Q#__vcc_state$1^691.9#tc2#1657: $state, Q#x$1^691.9#dt1#1626: $ptr, Q#y$1^691.9#dt1#1627: $ptr :: {:weight 10} { F#sll_lseg_reach(Q#__vcc_state$1^691.9#tc2#1657, $phys_ptr_cast(Q#x$1^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1627, ^s_node)) } { F#srtl_lseg_reach(Q#__vcc_state$1^691.9#tc2#1657, $phys_ptr_cast(Q#x$1^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1627, ^s_node)) } $good_state(Q#__vcc_state$1^691.9#tc2#1657) && true ==> F#sll_lseg_reach(Q#__vcc_state$1^691.9#tc2#1657, $phys_ptr_cast(Q#x$1^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1627, ^s_node)) == F#srtl_lseg_reach(Q#__vcc_state$1^691.9#tc2#1657, $phys_ptr_cast(Q#x$1^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$1^691.9#dt1#1627, ^s_node)));

const unique l#public: $label;

axiom $type_code_is(2, ^$#state_t);

const unique #tok$2^45.5: $token;

const unique #tok$2^22.3: $token;

const unique #tok$3^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(3, #file^?3Cno?20file?3E);

const unique #tok$2^9.3: $token;

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgrass?5Csls_split.c: $token;

axiom $file_name_is(2, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgrass?5Csls_split.c);

const unique #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgrass?5Cdryad_sls.h: $token;

axiom $file_name_is(1, #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgrass?5Cdryad_sls.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

