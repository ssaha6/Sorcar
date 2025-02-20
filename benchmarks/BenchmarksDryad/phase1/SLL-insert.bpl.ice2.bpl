
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

const unique ^$#SLL_insert.c..36263#3: $ctype;

axiom $def_fnptr_type(^$#SLL_insert.c..36263#3);

type $#SLL_insert.c..36263#3;

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



procedure SLL_insert(P#h: $ptr, P#v: int) returns ($result: $ptr);
  requires F#srtl($s, $phys_ptr_cast(P#h, ^s_node));
  modifies $s, $cev_pc;
  ensures F#srtl($s, $phys_ptr_cast(P#h, ^s_node));
  ensures F#srtl($s, $phys_ptr_cast($result, ^s_node));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation SLL_insert(P#h: $ptr, P#v: int) returns ($result: $ptr)
{
  var stmtexpr8#19: $state;
  var SL#_dryad_S7: $state;
  var stmtexpr7#18: $state;
  var SL#_dryad_S6: $state;
  var stmtexpr6#17: $state;
  var _dryad_S5#5: $state;
  var stmtexpr5#16: $state;
  var _dryad_S4#4: $state;
  var stmtexpr4#15: $state;
  var _dryad_S3#3: $state;
  var stmtexpr3#14: $state;
  var _dryad_S2#2: $state;
  var stmtexpr2#13: $state;
  var _dryad_S1#1: $state;
  var stmtexpr1#12: $oset;
  var stmtexpr0#11: $state;
  var _dryad_S0#0: $state;
  var L#e: $ptr;
  var stmtexpr6#10: $state;
  var SL#_dryad_S5: $state;
  var stmtexpr5#9: $state;
  var SL#_dryad_S4: $state;
  var stmtexpr4#8: $state;
  var SL#_dryad_S3: $state;
  var stmtexpr3#7: $state;
  var SL#_dryad_S2: $state;
  var stmtexpr2#6: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr1#5: $oset;
  var stmtexpr0#4: $state;
  var SL#_dryad_S0: $state;
  var L#hd: $ptr;
  var stmtexpr0#3: $ptr;
  var SL#i0: $ptr;
  var ite#1: bool;
  var loopState#0: $state;
  var SL#ALL_REACH: $oset;
  var L#i: $ptr;
  var L#j: $ptr;
  var stmtexpr1#21: $oset;
  var stmtexpr0#20: $oset;
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

// INV:PTR: P#h, L#i, L#j
// INV:INT: P#v
// INV:LST: srtl

  anon9:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$3^3.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$3^3.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$3^3.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @in_range_i4(v); 
    assume $in_range_i4(P#v);
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // assume true
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := srtl_reach(h); 
    call SL#_dryad_G0 := srtl_reach($phys_ptr_cast(P#h, ^s_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#20; 
    // stmtexpr0#20 := _dryad_G0; 
    stmtexpr0#20 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#21; 
    // stmtexpr1#21 := _dryad_G1; 
    stmtexpr1#21 := SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
    // struct s_node* j; 
    // struct s_node* i; 
    // _math \oset ALL_REACH; 
    // ALL_REACH := srtl_reach(h); 
    call SL#ALL_REACH := srtl_reach($phys_ptr_cast(P#h, ^s_node));
    assume $full_stop_ext(#tok$3^9.29, $s);
    // assume ==>(@_vcc_ptr_neq_null(h), &&(@_vcc_mutable(@state, h), @writes_check(h))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#h, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(P#h, ^s_node));
    // i := h; 
    L#i := $phys_ptr_cast(P#h, ^s_node);
    // assert sll_lseg(i, i); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume sll_lseg(i, i); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert srtl_lseg(i, i); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume srtl_lseg(i, i); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert sll_lseg(j, j); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assume sll_lseg(j, j); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assert srtl_lseg(j, j); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assume srtl_lseg(j, j); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assert sll_lseg(h, h); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume sll_lseg(h, h); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assert srtl_lseg(h, h); 
    assert F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume srtl_lseg(h, h); 
    assume F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // j := (struct s_node*)@null; 
    L#j := $phys_ptr_cast($null, ^s_node);
    // assert sll_lseg(i, i); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume sll_lseg(i, i); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert srtl_lseg(i, i); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assume srtl_lseg(i, i); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
    // assert sll_lseg(j, j); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assume sll_lseg(j, j); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assert srtl_lseg(j, j); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assume srtl_lseg(j, j); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
    // assert sll_lseg(h, h); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume sll_lseg(h, h); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assert srtl_lseg(h, h); 
    assert F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume srtl_lseg(h, h); 
    assume F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
    loopState#0 := $s;
    assume true;
p0000 := (F#srtl($s,$phys_ptr_cast(P#h,^s_node)));
p0001 := (F#srtl($s,$phys_ptr_cast(L#i,^s_node)));
p0002 := (F#srtl($s,$phys_ptr_cast(L#j,^s_node)));
p0003 := (F#srtl_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0004 := (F#srtl_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0005 := (F#srtl_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0006 := (F#srtl_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0007 := (F#srtl_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0008 := (F#srtl_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0009 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0010 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0011 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0012 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0013 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0014 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0015 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0016 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0017 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0018 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0019 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0020 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0021 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0022 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0023 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0024 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0025 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0026 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
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
p0063 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0071 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0072 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0073 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0074 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node))));

    while (true)

invariant (p0000 == (F#srtl($s,$phys_ptr_cast(P#h,^s_node))));
invariant (p0001 == (F#srtl($s,$phys_ptr_cast(L#i,^s_node))));
invariant (p0002 == (F#srtl($s,$phys_ptr_cast(L#j,^s_node))));
invariant (p0003 == (F#srtl_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
invariant (p0004 == (F#srtl_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
invariant (p0005 == (F#srtl_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
invariant (p0006 == (F#srtl_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
invariant (p0007 == (F#srtl_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
invariant (p0008 == (F#srtl_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
invariant (p0009 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0010 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0011 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0012 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0013 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0014 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0015 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0016 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0027 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0028 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0029 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0030 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)))));
invariant (p0031 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)))));
invariant (p0032 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)))));
invariant (p0033 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)))));
invariant (p0034 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)))));
invariant (p0035 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)))));
invariant (p0036 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)))));
invariant (p0037 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)))));
invariant (p0038 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)))));
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
invariant (p0063 == ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)))))));
invariant (p0064 == ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)))))));
invariant (p0065 == ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)))))));
invariant (p0066 == ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)))))));
invariant (p0067 == ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)))))));
invariant (p0068 == ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)))))));
invariant (p0069 == (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node)))));
invariant (p0070 == (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node)))));
invariant (p0071 == (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node)))));
invariant (p0072 == (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node)))));
invariant (p0073 == (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node)))));
invariant (p0074 == (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node)))));

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

      invariant $oset_subset(F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)), SL#ALL_REACH);
      invariant $oset_subset(F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)), SL#ALL_REACH);
      invariant $oset_subset(F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)), SL#ALL_REACH);
      invariant $oset_subset(F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)), SL#ALL_REACH);
    {
      anon5:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#0, $s);
        assume $full_stop_ext(#tok$3^13.3, $s);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#0, $s);
        // _Bool ite#1; 
        assume true;
        // if (@_vcc_ptr_neq_null(i)) ...
        if ($non_null($phys_ptr_cast(L#i, ^s_node)))
        {
          anon1:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // assert @reads_check_normal((i->key)); 
            assert $thread_local($s, $phys_ptr_cast(L#i, ^s_node));
            // ite#1 := <=(*((i->key)), v); 
            ite#1 := $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= P#v;
        }
        else
        {
          anon2:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // ite#1 := false; 
            ite#1 := false;
        }

      anon6:
        assume true;
        // if (ite#1) ...
        if (ite#1)
        {
          anon3:
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
            assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // j := i; 
            L#j := $phys_ptr_cast(L#i, ^s_node);
            // assert sll_lseg(i, i); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assume sll_lseg(i, i); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assert srtl_lseg(i, i); 
            assert F#srtl_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assume srtl_lseg(i, i); 
            assume F#srtl_lseg($s, $phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(L#i, ^s_node));
            // assert sll_lseg(j, j); 
            assert F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assume sll_lseg(j, j); 
            assume F#sll_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assert srtl_lseg(j, j); 
            assert F#srtl_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assume srtl_lseg(j, j); 
            assume F#srtl_lseg($s, $phys_ptr_cast(L#j, ^s_node), $phys_ptr_cast(L#j, ^s_node));
            // assert sll_lseg(h, h); 
            assert F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // assume sll_lseg(h, h); 
            assume F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // assert srtl_lseg(h, h); 
            assert F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // assume srtl_lseg(h, h); 
            assume F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(P#h, ^s_node));
            // struct s_node* i0; 
            // i0 := i; 
            SL#i0 := $phys_ptr_cast(L#i, ^s_node);
            // struct s_node* stmtexpr0#3; 
            // stmtexpr0#3 := i0; 
            stmtexpr0#3 := $phys_ptr_cast(SL#i0, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(sll_lseg(i, *((i->next))), &&(sll_lseg(*((i->next)), *((i->next))), unchecked!(@_vcc_oset_in(i, sll_lseg_reach(*((i->next)), *((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(sll_lseg_reach(i, *((i->next))), @_vcc_oset_union(sll_lseg_reach(*((i->next)), *((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(sll_lseg_keys(i, *((i->next))), @_vcc_intset_union(sll_lseg_keys(*((i->next)), *((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(sll_lseg_len_next(i, *((i->next))), unchecked+(sll_lseg_len_next(*((i->next)), *((i->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), @_vcc_ptr_neq_pure(*((i->next)), *((i->next)))), ==(sll_lseg_max_key(i, *((i->next))), @\int_max(*((i->key)), sll_lseg_max_key(*((i->next)), *((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), @_vcc_ptr_neq_pure(*((i->next)), *((i->next)))), ==(sll_lseg_min_key(i, *((i->next))), @\int_min(*((i->key)), sll_lseg_min_key(*((i->next)), *((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), @_vcc_ptr_neq_pure(*((i->next)), *((i->next)))), ==(srtl_lseg(i, *((i->next))), &&(&&(srtl_lseg(*((i->next)), *((i->next))), unchecked!(@_vcc_oset_in(i, srtl_lseg_reach(*((i->next)), *((i->next)))))), <=(*((i->key)), sll_lseg_min_key(*((i->next)), *((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_pure(i, *((i->next)))), ==(srtl_lseg_reach(i, *((i->next))), @_vcc_oset_union(srtl_lseg_reach(*((i->next)), *((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $phys_ptr_cast(L#i, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#i, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assert @reads_check_normal((i->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#i, ^s_node));
            // i := *((i->next)); 
            L#i := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
            assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
            assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        }
        else
        {
          anon4:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_2; 
            goto #break_2;
        }

      #continue_2:
        assume true;
p0000 := (F#srtl($s,$phys_ptr_cast(P#h,^s_node)));
p0001 := (F#srtl($s,$phys_ptr_cast(L#i,^s_node)));
p0002 := (F#srtl($s,$phys_ptr_cast(L#j,^s_node)));
p0003 := (F#srtl_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0004 := (F#srtl_lseg($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0005 := (F#srtl_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0006 := (F#srtl_lseg($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)));
p0007 := (F#srtl_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)));
p0008 := (F#srtl_lseg($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)));
p0009 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0010 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0011 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0012 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0013 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0014 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0015 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0016 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0017 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0018 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0019 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0020 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0021 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0022 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0023 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0024 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0025 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0026 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#j,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#h,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#i,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#h,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#i,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#j,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))));
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
p0063 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#h,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#j,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(L#i,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#j,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#h,^s_node),$phys_ptr_cast(L#i,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(L#j,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#i,^s_node),$phys_ptr_cast(P#h,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#h,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0071 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#j,^s_node))));
p0072 := (($is_null($phys_ptr_cast(L#i,^s_node)) ==> ($phys_ptr_cast(L#j,^s_node) == $phys_ptr_cast(P#h,^s_node))));
p0073 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(P#h,^s_node) == $phys_ptr_cast(L#i,^s_node))));
p0074 := (($is_null($phys_ptr_cast(L#j,^s_node)) ==> ($phys_ptr_cast(L#i,^s_node) == $phys_ptr_cast(P#h,^s_node))));

    }

  anon10:
    assume $full_stop_ext(#tok$3^13.3, $s);

  #break_2:
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
    assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
    assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
    assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
    assume true;
    // if (@_vcc_ptr_eq(i, h)) ...
    if ($ptr_eq($phys_ptr_cast(L#i, ^s_node), $phys_ptr_cast(P#h, ^s_node)))
    {
      anon7:
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // struct s_node* hd; 
        // _math \state _dryad_S0; 
        // _dryad_S0 := @_vcc_current_state(@state); 
        SL#_dryad_S0 := $current_state($s);
        // _math \state stmtexpr0#4; 
        // stmtexpr0#4 := _dryad_S0; 
        stmtexpr0#4 := SL#_dryad_S0;
        // hd := _vcc_alloc(@_vcc_typeof((struct s_node*)@null)); 
        call L#hd := $alloc(^s_node);
        assume $full_stop_ext(#tok$3^33.17, $s);
        // assume !(@_vcc_oset_in(hd, @_vcc_oset_union(_dryad_G0, _dryad_G1))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), $oset_union(SL#_dryad_G0, SL#_dryad_G1));
        // _dryad_G1 := @_vcc_oset_union(_dryad_G0, @_vcc_oset_singleton(hd)); 
        SL#_dryad_G1 := $oset_union(SL#_dryad_G0, $oset_singleton($phys_ptr_cast(L#hd, ^s_node)));
        // _math \oset stmtexpr1#5; 
        // stmtexpr1#5 := _dryad_G1; 
        stmtexpr1#5 := SL#_dryad_G1;
        // assume ==(glob_reach(), _dryad_G1); 
        assume F#glob_reach() == SL#_dryad_G1;
        // _math \state _dryad_S1; 
        // _dryad_S1 := @_vcc_current_state(@state); 
        SL#_dryad_S1 := $current_state($s);
        // _math \state stmtexpr2#6; 
        // stmtexpr2#6 := _dryad_S1; 
        stmtexpr2#6 := SL#_dryad_S1;
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll_keys(hd), @_vcc_intset_union(sll_keys(*((hd->next))), @_vcc_intset_singleton(*((hd->key)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#hd, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll_list_len_next(hd), unchecked+(sll_list_len_next(*((hd->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#hd, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(rsrtl(hd), &&(&&(rsrtl(*((hd->next))), unchecked!(@_vcc_oset_in(hd, rsrtl_reach(*((hd->next)))))), >=(*((hd->key)), sll_max_key(*((hd->next))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(rsrtl_reach(hd), @_vcc_oset_union(rsrtl_reach(*((hd->next))), @_vcc_oset_singleton(hd)))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#hd, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#hd, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll(hd), &&(sll(*((hd->next))), unchecked!(@_vcc_oset_in(hd, sll_reach(*((hd->next)))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll_reach(hd), @_vcc_oset_union(sll_reach(*((hd->next))), @_vcc_oset_singleton(hd)))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#hd, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#hd, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(sll_max_key(hd), @\int_max(*((hd->key)), sll_max_key(*((hd->next)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#hd, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(sll_min_key(hd), @\int_min(*((hd->key)), sll_min_key(*((hd->next)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#hd, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(srtl(hd), &&(&&(srtl(*((hd->next))), unchecked!(@_vcc_oset_in(hd, srtl_reach(*((hd->next)))))), <=(*((hd->key)), sll_min_key(*((hd->next))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(srtl_reach(hd), @_vcc_oset_union(srtl_reach(*((hd->next))), @_vcc_oset_singleton(hd)))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#hd, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#hd, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll_keys(i)), old(_dryad_S1, sll_keys(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll_list_len_next(i)), old(_dryad_S1, sll_list_len_next(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, rsrtl_reach(i)))), ==(old(_dryad_S0, rsrtl(i)), old(_dryad_S1, rsrtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, rsrtl_reach(i)))), ==(old(_dryad_S0, rsrtl_reach(i)), old(_dryad_S1, rsrtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll(i)), old(_dryad_S1, sll(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll_reach(i)), old(_dryad_S1, sll_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll_max_key(i)), old(_dryad_S1, sll_max_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(i)))), ==(old(_dryad_S0, sll_min_key(i)), old(_dryad_S1, sll_min_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_reach(i)))), ==(old(_dryad_S0, srtl(i)), old(_dryad_S1, srtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_reach(i)))), ==(old(_dryad_S0, srtl_reach(i)), old(_dryad_S1, srtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(j)))), ==(old(_dryad_S0, sll_keys(j)), old(_dryad_S1, sll_keys(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(j)))), ==(old(_dryad_S0, sll_list_len_next(j)), old(_dryad_S1, sll_list_len_next(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, rsrtl_reach(j)))), ==(old(_dryad_S0, rsrtl(j)), old(_dryad_S1, rsrtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, rsrtl_reach(j)))), ==(old(_dryad_S0, rsrtl_reach(j)), old(_dryad_S1, rsrtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(j)))), ==(old(_dryad_S0, sll(j)), old(_dryad_S1, sll(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(j)))), ==(old(_dryad_S0, sll_reach(j)), old(_dryad_S1, sll_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(j)))), ==(old(_dryad_S0, sll_max_key(j)), old(_dryad_S1, sll_max_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(j)))), ==(old(_dryad_S0, sll_min_key(j)), old(_dryad_S1, sll_min_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_reach(j)))), ==(old(_dryad_S0, srtl(j)), old(_dryad_S1, srtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_reach(j)))), ==(old(_dryad_S0, srtl_reach(j)), old(_dryad_S1, srtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll_keys(h)), old(_dryad_S1, sll_keys(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll_list_len_next(h)), old(_dryad_S1, sll_list_len_next(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, rsrtl_reach(h)))), ==(old(_dryad_S0, rsrtl(h)), old(_dryad_S1, rsrtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, rsrtl_reach(h)))), ==(old(_dryad_S0, rsrtl_reach(h)), old(_dryad_S1, rsrtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll(h)), old(_dryad_S1, sll(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll_reach(h)), old(_dryad_S1, sll_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll_max_key(h)), old(_dryad_S1, sll_max_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_reach(h)))), ==(old(_dryad_S0, sll_min_key(h)), old(_dryad_S1, sll_min_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_reach(h)))), ==(old(_dryad_S0, srtl(h)), old(_dryad_S1, srtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_reach(h)))), ==(old(_dryad_S0, srtl_reach(h)), old(_dryad_S1, srtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0, sll_lseg(h, j)), old(_dryad_S1, sll_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0, sll_lseg_reach(h, j)), old(_dryad_S1, sll_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0, sll_lseg_keys(h, j)), old(_dryad_S1, sll_lseg_keys(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0, sll_lseg_len_next(h, j)), old(_dryad_S1, sll_lseg_len_next(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0, sll_lseg_max_key(h, j)), old(_dryad_S1, sll_lseg_max_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0, sll_lseg_min_key(h, j)), old(_dryad_S1, sll_lseg_min_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_lseg_reach(h, j)))), ==(old(_dryad_S0, srtl_lseg(h, j)), old(_dryad_S1, srtl_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_lseg_reach(h, j)))), ==(old(_dryad_S0, srtl_lseg_reach(h, j)), old(_dryad_S1, srtl_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0, sll_lseg(h, i)), old(_dryad_S1, sll_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0, sll_lseg_reach(h, i)), old(_dryad_S1, sll_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0, sll_lseg_keys(h, i)), old(_dryad_S1, sll_lseg_keys(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0, sll_lseg_len_next(h, i)), old(_dryad_S1, sll_lseg_len_next(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0, sll_lseg_max_key(h, i)), old(_dryad_S1, sll_lseg_max_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0, sll_lseg_min_key(h, i)), old(_dryad_S1, sll_lseg_min_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_lseg_reach(h, i)))), ==(old(_dryad_S0, srtl_lseg(h, i)), old(_dryad_S1, srtl_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S0, srtl_lseg_reach(h, i)))), ==(old(_dryad_S0, srtl_lseg_reach(h, i)), old(_dryad_S1, srtl_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume @_vcc_ptr_neq_null(hd); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node));
        // _math \state _dryad_S2; 
        // _dryad_S2 := @_vcc_current_state(@state); 
        SL#_dryad_S2 := $current_state($s);
        // _math \state stmtexpr3#7; 
        // stmtexpr3#7 := _dryad_S2; 
        stmtexpr3#7 := SL#_dryad_S2;
        // assert @prim_writes_check((hd->key)); 
        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#hd, ^s_node), s_node.key));
        // *(hd->key) := v; 
        call $write_int(s_node.key, $phys_ptr_cast(L#hd, ^s_node), P#v);
        assume $full_stop_ext(#tok$3^35.5, $s);
        // _math \state _dryad_S3; 
        // _dryad_S3 := @_vcc_current_state(@state); 
        SL#_dryad_S3 := $current_state($s);
        // _math \state stmtexpr4#8; 
        // stmtexpr4#8 := _dryad_S3; 
        stmtexpr4#8 := SL#_dryad_S3;
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(*((hd->next)))))), ==(old(_dryad_S2, sll_keys(*((hd->next)))), old(_dryad_S3, sll_keys(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#sll_keys(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(*((hd->next)))))), ==(old(_dryad_S2, sll_list_len_next(*((hd->next)))), old(_dryad_S3, sll_list_len_next(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(*((hd->next)))))), ==(old(_dryad_S2, rsrtl(*((hd->next)))), old(_dryad_S3, rsrtl(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#rsrtl(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(*((hd->next)))))), ==(old(_dryad_S2, rsrtl_reach(*((hd->next)))), old(_dryad_S3, rsrtl_reach(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(*((hd->next)))))), ==(old(_dryad_S2, sll(*((hd->next)))), old(_dryad_S3, sll(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#sll(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#sll(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(*((hd->next)))))), ==(old(_dryad_S2, sll_reach(*((hd->next)))), old(_dryad_S3, sll_reach(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#sll_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(*((hd->next)))))), ==(old(_dryad_S2, sll_max_key(*((hd->next)))), old(_dryad_S3, sll_max_key(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#sll_max_key(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(*((hd->next)))))), ==(old(_dryad_S2, sll_min_key(*((hd->next)))), old(_dryad_S3, sll_min_key(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#sll_min_key(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(*((hd->next)))))), ==(old(_dryad_S2, srtl(*((hd->next)))), old(_dryad_S3, srtl(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#srtl(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#srtl(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(*((hd->next)))))), ==(old(_dryad_S2, srtl_reach(*((hd->next)))), old(_dryad_S3, srtl_reach(*((hd->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) == F#srtl_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(hd)), old(_dryad_S3, sll_list_len_next(hd))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#hd, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#hd, ^s_node));
        // assume ==(old(_dryad_S2, rsrtl_reach(hd)), old(_dryad_S3, rsrtl_reach(hd))); 
        assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#hd, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#hd, ^s_node));
        // assume ==(old(_dryad_S2, sll(hd)), old(_dryad_S3, sll(hd))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#hd, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#hd, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(hd)), old(_dryad_S3, sll_reach(hd))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#hd, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#hd, ^s_node));
        // assume ==(old(_dryad_S2, srtl_reach(hd)), old(_dryad_S3, srtl_reach(hd))); 
        assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#hd, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#hd, ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(i)), old(_dryad_S3, sll_list_len_next(i))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2, rsrtl_reach(i)), old(_dryad_S3, rsrtl_reach(i))); 
        assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2, sll(i)), old(_dryad_S3, sll(i))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(i)), old(_dryad_S3, sll_reach(i))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2, srtl_reach(i)), old(_dryad_S3, srtl_reach(i))); 
        assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(j)), old(_dryad_S3, sll_list_len_next(j))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2, rsrtl_reach(j)), old(_dryad_S3, rsrtl_reach(j))); 
        assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2, sll(j)), old(_dryad_S3, sll(j))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(j)), old(_dryad_S3, sll_reach(j))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2, srtl_reach(j)), old(_dryad_S3, srtl_reach(j))); 
        assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(h)), old(_dryad_S3, sll_list_len_next(h))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2, rsrtl_reach(h)), old(_dryad_S3, rsrtl_reach(h))); 
        assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2, sll(h)), old(_dryad_S3, sll(h))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(h)), old(_dryad_S3, sll_reach(h))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2, srtl_reach(h)), old(_dryad_S3, srtl_reach(h))); 
        assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll_keys(i)), old(_dryad_S3, sll_keys(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll_list_len_next(i)), old(_dryad_S3, sll_list_len_next(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(i)))), ==(old(_dryad_S2, rsrtl(i)), old(_dryad_S3, rsrtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(i)))), ==(old(_dryad_S2, rsrtl_reach(i)), old(_dryad_S3, rsrtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll(i)), old(_dryad_S3, sll(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll_reach(i)), old(_dryad_S3, sll_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll_max_key(i)), old(_dryad_S3, sll_max_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_max_key(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(i)))), ==(old(_dryad_S2, sll_min_key(i)), old(_dryad_S3, sll_min_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_min_key(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(i)))), ==(old(_dryad_S2, srtl(i)), old(_dryad_S3, srtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#srtl(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(i)))), ==(old(_dryad_S2, srtl_reach(i)), old(_dryad_S3, srtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(j)))), ==(old(_dryad_S2, sll_keys(j)), old(_dryad_S3, sll_keys(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(j)))), ==(old(_dryad_S2, sll_list_len_next(j)), old(_dryad_S3, sll_list_len_next(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(j)))), ==(old(_dryad_S2, rsrtl(j)), old(_dryad_S3, rsrtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(j)))), ==(old(_dryad_S2, rsrtl_reach(j)), old(_dryad_S3, rsrtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(j)))), ==(old(_dryad_S2, sll(j)), old(_dryad_S3, sll(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(j)))), ==(old(_dryad_S2, sll_reach(j)), old(_dryad_S3, sll_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(j)))), ==(old(_dryad_S2, sll_max_key(j)), old(_dryad_S3, sll_max_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_max_key(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(j)))), ==(old(_dryad_S2, sll_min_key(j)), old(_dryad_S3, sll_min_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_min_key(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(j)))), ==(old(_dryad_S2, srtl(j)), old(_dryad_S3, srtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#srtl(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(j)))), ==(old(_dryad_S2, srtl_reach(j)), old(_dryad_S3, srtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll_keys(h)), old(_dryad_S3, sll_keys(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll_list_len_next(h)), old(_dryad_S3, sll_list_len_next(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(h)))), ==(old(_dryad_S2, rsrtl(h)), old(_dryad_S3, rsrtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, rsrtl_reach(h)))), ==(old(_dryad_S2, rsrtl_reach(h)), old(_dryad_S3, rsrtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll(h)), old(_dryad_S3, sll(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll_reach(h)), old(_dryad_S3, sll_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll_max_key(h)), old(_dryad_S3, sll_max_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_max_key(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_reach(h)))), ==(old(_dryad_S2, sll_min_key(h)), old(_dryad_S3, sll_min_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_min_key(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(h)))), ==(old(_dryad_S2, srtl(h)), old(_dryad_S3, srtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#srtl(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_reach(h)))), ==(old(_dryad_S2, srtl_reach(h)), old(_dryad_S3, srtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2, sll_lseg(h, j)), old(_dryad_S3, sll_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2, sll_lseg_reach(h, j)), old(_dryad_S3, sll_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2, sll_lseg_keys(h, j)), old(_dryad_S3, sll_lseg_keys(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2, sll_lseg_len_next(h, j)), old(_dryad_S3, sll_lseg_len_next(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2, sll_lseg_max_key(h, j)), old(_dryad_S3, sll_lseg_max_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2, sll_lseg_min_key(h, j)), old(_dryad_S3, sll_lseg_min_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_lseg_reach(h, j)))), ==(old(_dryad_S2, srtl_lseg(h, j)), old(_dryad_S3, srtl_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_lseg_reach(h, j)))), ==(old(_dryad_S2, srtl_lseg_reach(h, j)), old(_dryad_S3, srtl_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2, sll_lseg(h, i)), old(_dryad_S3, sll_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2, sll_lseg_reach(h, i)), old(_dryad_S3, sll_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2, sll_lseg_keys(h, i)), old(_dryad_S3, sll_lseg_keys(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2, sll_lseg_len_next(h, i)), old(_dryad_S3, sll_lseg_len_next(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2, sll_lseg_max_key(h, i)), old(_dryad_S3, sll_lseg_max_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2, sll_lseg_min_key(h, i)), old(_dryad_S3, sll_lseg_min_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_lseg_reach(h, i)))), ==(old(_dryad_S2, srtl_lseg(h, i)), old(_dryad_S3, srtl_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S2, srtl_lseg_reach(h, i)))), ==(old(_dryad_S2, srtl_lseg_reach(h, i)), old(_dryad_S3, srtl_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, i)), ==(*((i->key)), old(_dryad_S2, *((i->key))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, i)), @_vcc_ptr_eq_pure(*((i->next)), old(_dryad_S2, *((i->next))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, j)), ==(*((j->key)), old(_dryad_S2, *((j->key))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, j)), @_vcc_ptr_eq_pure(*((j->next)), old(_dryad_S2, *((j->next))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, h)), ==(*((h->key)), old(_dryad_S2, *((h->key))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, h)), @_vcc_ptr_eq_pure(*((h->next)), old(_dryad_S2, *((h->next))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll_keys(hd), @_vcc_intset_union(sll_keys(*((hd->next))), @_vcc_intset_singleton(*((hd->key)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#hd, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(rsrtl(hd), &&(&&(rsrtl(*((hd->next))), unchecked!(@_vcc_oset_in(hd, rsrtl_reach(*((hd->next)))))), >=(*((hd->key)), sll_max_key(*((hd->next))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(sll_max_key(hd), @\int_max(*((hd->key)), sll_max_key(*((hd->next)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#hd, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(sll_min_key(hd), @\int_min(*((hd->key)), sll_min_key(*((hd->next)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#hd, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(srtl(hd), &&(&&(srtl(*((hd->next))), unchecked!(@_vcc_oset_in(hd, srtl_reach(*((hd->next)))))), <=(*((hd->key)), sll_min_key(*((hd->next))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // _math \state _dryad_S4; 
        // _dryad_S4 := @_vcc_current_state(@state); 
        SL#_dryad_S4 := $current_state($s);
        // _math \state stmtexpr5#9; 
        // stmtexpr5#9 := _dryad_S4; 
        stmtexpr5#9 := SL#_dryad_S4;
        // assert @prim_writes_check((hd->next)); 
        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#hd, ^s_node), s_node.next));
        // *(hd->next) := i; 
        call $write_int(s_node.next, $phys_ptr_cast(L#hd, ^s_node), $ptr_to_int($phys_ptr_cast(L#i, ^s_node)));
        assume $full_stop_ext(#tok$3^36.5, $s);
        // _math \state _dryad_S5; 
        // _dryad_S5 := @_vcc_current_state(@state); 
        SL#_dryad_S5 := $current_state($s);
        // _math \state stmtexpr6#10; 
        // stmtexpr6#10 := _dryad_S5; 
        stmtexpr6#10 := SL#_dryad_S5;
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(i)))), ==(old(_dryad_S4, sll_keys(i)), old(_dryad_S5, sll_keys(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(i)))), ==(old(_dryad_S4, sll_list_len_next(i)), old(_dryad_S5, sll_list_len_next(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, rsrtl_reach(i)))), ==(old(_dryad_S4, rsrtl(i)), old(_dryad_S5, rsrtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, rsrtl_reach(i)))), ==(old(_dryad_S4, rsrtl_reach(i)), old(_dryad_S5, rsrtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(i)))), ==(old(_dryad_S4, sll(i)), old(_dryad_S5, sll(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(i)))), ==(old(_dryad_S4, sll_reach(i)), old(_dryad_S5, sll_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(i)))), ==(old(_dryad_S4, sll_max_key(i)), old(_dryad_S5, sll_max_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_max_key(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_max_key(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(i)))), ==(old(_dryad_S4, sll_min_key(i)), old(_dryad_S5, sll_min_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_min_key(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_min_key(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_reach(i)))), ==(old(_dryad_S4, srtl(i)), old(_dryad_S5, srtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#srtl(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_reach(i)))), ==(old(_dryad_S4, srtl_reach(i)), old(_dryad_S5, srtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(j)))), ==(old(_dryad_S4, sll_keys(j)), old(_dryad_S5, sll_keys(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(j)))), ==(old(_dryad_S4, sll_list_len_next(j)), old(_dryad_S5, sll_list_len_next(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, rsrtl_reach(j)))), ==(old(_dryad_S4, rsrtl(j)), old(_dryad_S5, rsrtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, rsrtl_reach(j)))), ==(old(_dryad_S4, rsrtl_reach(j)), old(_dryad_S5, rsrtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(j)))), ==(old(_dryad_S4, sll(j)), old(_dryad_S5, sll(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(j)))), ==(old(_dryad_S4, sll_reach(j)), old(_dryad_S5, sll_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(j)))), ==(old(_dryad_S4, sll_max_key(j)), old(_dryad_S5, sll_max_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_max_key(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#sll_max_key(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(j)))), ==(old(_dryad_S4, sll_min_key(j)), old(_dryad_S5, sll_min_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_min_key(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#sll_min_key(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_reach(j)))), ==(old(_dryad_S4, srtl(j)), old(_dryad_S5, srtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#srtl(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_reach(j)))), ==(old(_dryad_S4, srtl_reach(j)), old(_dryad_S5, srtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(h)))), ==(old(_dryad_S4, sll_keys(h)), old(_dryad_S5, sll_keys(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(h)))), ==(old(_dryad_S4, sll_list_len_next(h)), old(_dryad_S5, sll_list_len_next(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, rsrtl_reach(h)))), ==(old(_dryad_S4, rsrtl(h)), old(_dryad_S5, rsrtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, rsrtl_reach(h)))), ==(old(_dryad_S4, rsrtl_reach(h)), old(_dryad_S5, rsrtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(h)))), ==(old(_dryad_S4, sll(h)), old(_dryad_S5, sll(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(h)))), ==(old(_dryad_S4, sll_reach(h)), old(_dryad_S5, sll_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(h)))), ==(old(_dryad_S4, sll_max_key(h)), old(_dryad_S5, sll_max_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_max_key(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_max_key(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_reach(h)))), ==(old(_dryad_S4, sll_min_key(h)), old(_dryad_S5, sll_min_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_min_key(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_min_key(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_reach(h)))), ==(old(_dryad_S4, srtl(h)), old(_dryad_S5, srtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#srtl(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_reach(h)))), ==(old(_dryad_S4, srtl_reach(h)), old(_dryad_S5, srtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4, sll_lseg(h, j)), old(_dryad_S5, sll_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4, sll_lseg_reach(h, j)), old(_dryad_S5, sll_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4, sll_lseg_keys(h, j)), old(_dryad_S5, sll_lseg_keys(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4, sll_lseg_len_next(h, j)), old(_dryad_S5, sll_lseg_len_next(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4, sll_lseg_max_key(h, j)), old(_dryad_S5, sll_lseg_max_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4, sll_lseg_min_key(h, j)), old(_dryad_S5, sll_lseg_min_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_lseg_reach(h, j)))), ==(old(_dryad_S4, srtl_lseg(h, j)), old(_dryad_S5, srtl_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_lseg_reach(h, j)))), ==(old(_dryad_S4, srtl_lseg_reach(h, j)), old(_dryad_S5, srtl_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4, sll_lseg(h, i)), old(_dryad_S5, sll_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4, sll_lseg_reach(h, i)), old(_dryad_S5, sll_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4, sll_lseg_keys(h, i)), old(_dryad_S5, sll_lseg_keys(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4, sll_lseg_len_next(h, i)), old(_dryad_S5, sll_lseg_len_next(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4, sll_lseg_max_key(h, i)), old(_dryad_S5, sll_lseg_max_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4, sll_lseg_min_key(h, i)), old(_dryad_S5, sll_lseg_min_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_lseg_reach(h, i)))), ==(old(_dryad_S4, srtl_lseg(h, i)), old(_dryad_S5, srtl_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(hd, old(_dryad_S4, srtl_lseg_reach(h, i)))), ==(old(_dryad_S4, srtl_lseg_reach(h, i)), old(_dryad_S5, srtl_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, i)), ==(*((i->key)), old(_dryad_S4, *((i->key))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, i)), @_vcc_ptr_eq_pure(*((i->next)), old(_dryad_S4, *((i->next))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, j)), ==(*((j->key)), old(_dryad_S4, *((j->key))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, j)), @_vcc_ptr_eq_pure(*((j->next)), old(_dryad_S4, *((j->next))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, h)), ==(*((h->key)), old(_dryad_S4, *((h->key))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(hd, h)), @_vcc_ptr_eq_pure(*((h->next)), old(_dryad_S4, *((h->next))))); 
        assume !($phys_ptr_cast(L#hd, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll_keys(hd), @_vcc_intset_union(sll_keys(*((hd->next))), @_vcc_intset_singleton(*((hd->key)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#hd, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll_list_len_next(hd), unchecked+(sll_list_len_next(*((hd->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#hd, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(rsrtl(hd), &&(&&(rsrtl(*((hd->next))), unchecked!(@_vcc_oset_in(hd, rsrtl_reach(*((hd->next)))))), >=(*((hd->key)), sll_max_key(*((hd->next))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(rsrtl_reach(hd), @_vcc_oset_union(rsrtl_reach(*((hd->next))), @_vcc_oset_singleton(hd)))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#hd, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#hd, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll(hd), &&(sll(*((hd->next))), unchecked!(@_vcc_oset_in(hd, sll_reach(*((hd->next)))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(sll_reach(hd), @_vcc_oset_union(sll_reach(*((hd->next))), @_vcc_oset_singleton(hd)))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#hd, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#hd, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(sll_max_key(hd), @\int_max(*((hd->key)), sll_max_key(*((hd->next)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#hd, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(sll_min_key(hd), @\int_min(*((hd->key)), sll_min_key(*((hd->next)))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#hd, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(hd), @_vcc_ptr_neq_null(*((hd->next)))), ==(srtl(hd), &&(&&(srtl(*((hd->next))), unchecked!(@_vcc_oset_in(hd, srtl_reach(*((hd->next)))))), <=(*((hd->key)), sll_min_key(*((hd->next))))))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#hd, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#hd, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#hd, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(hd), ==(srtl_reach(hd), @_vcc_oset_union(srtl_reach(*((hd->next))), @_vcc_oset_singleton(hd)))); 
        assume $non_null($phys_ptr_cast(L#hd, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#hd, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#hd, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#hd, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // return hd; 
        $result := $phys_ptr_cast(L#hd, ^s_node);
        assume true;
        assert $position_marker();
        goto #exit;
    }
    else
    {
      anon8:
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // struct s_node* e; 
        // _math \state _dryad_S0#0; 
        // _dryad_S0#0 := @_vcc_current_state(@state); 
        _dryad_S0#0 := $current_state($s);
        // _math \state stmtexpr0#11; 
        // stmtexpr0#11 := _dryad_S0#0; 
        stmtexpr0#11 := _dryad_S0#0;
        // e := _vcc_alloc(@_vcc_typeof((struct s_node*)@null)); 
        call L#e := $alloc(^s_node);
        assume $full_stop_ext(#tok$3^40.16, $s);
        // assume !(@_vcc_oset_in(e, @_vcc_oset_union(_dryad_G0, _dryad_G1))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), $oset_union(SL#_dryad_G0, SL#_dryad_G1));
        // _dryad_G1 := @_vcc_oset_union(_dryad_G0, @_vcc_oset_singleton(e)); 
        SL#_dryad_G1 := $oset_union(SL#_dryad_G0, $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // _math \oset stmtexpr1#12; 
        // stmtexpr1#12 := _dryad_G1; 
        stmtexpr1#12 := SL#_dryad_G1;
        // assume ==(glob_reach(), _dryad_G1); 
        assume F#glob_reach() == SL#_dryad_G1;
        // _math \state _dryad_S1#1; 
        // _dryad_S1#1 := @_vcc_current_state(@state); 
        _dryad_S1#1 := $current_state($s);
        // _math \state stmtexpr2#13; 
        // stmtexpr2#13 := _dryad_S1#1; 
        stmtexpr2#13 := _dryad_S1#1;
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_keys(e), @_vcc_intset_union(sll_keys(*((e->next))), @_vcc_intset_singleton(*((e->key)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#e, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_list_len_next(e), unchecked+(sll_list_len_next(*((e->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#e, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(rsrtl(e), &&(&&(rsrtl(*((e->next))), unchecked!(@_vcc_oset_in(e, rsrtl_reach(*((e->next)))))), >=(*((e->key)), sll_max_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(rsrtl_reach(e), @_vcc_oset_union(rsrtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll(e), &&(sll(*((e->next))), unchecked!(@_vcc_oset_in(e, sll_reach(*((e->next)))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#e, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_reach(e), @_vcc_oset_union(sll_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_max_key(e), @\int_max(*((e->key)), sll_max_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_min_key(e), @\int_min(*((e->key)), sll_min_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(srtl(e), &&(&&(srtl(*((e->next))), unchecked!(@_vcc_oset_in(e, srtl_reach(*((e->next)))))), <=(*((e->key)), sll_min_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(srtl_reach(e), @_vcc_oset_union(srtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(i)))), ==(old(_dryad_S0#0, sll_keys(i)), old(_dryad_S1#1, sll_keys(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(i)))), ==(old(_dryad_S0#0, sll_list_len_next(i)), old(_dryad_S1#1, sll_list_len_next(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_list_len_next(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, rsrtl_reach(i)))), ==(old(_dryad_S0#0, rsrtl(i)), old(_dryad_S1#1, rsrtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, rsrtl_reach(i)))), ==(old(_dryad_S0#0, rsrtl_reach(i)), old(_dryad_S1#1, rsrtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(i)))), ==(old(_dryad_S0#0, sll(i)), old(_dryad_S1#1, sll(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#sll(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(i)))), ==(old(_dryad_S0#0, sll_reach(i)), old(_dryad_S1#1, sll_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(i)))), ==(old(_dryad_S0#0, sll_max_key(i)), old(_dryad_S1#1, sll_max_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_max_key(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_max_key(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(i)))), ==(old(_dryad_S0#0, sll_min_key(i)), old(_dryad_S1#1, sll_min_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_min_key(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#sll_min_key(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_reach(i)))), ==(old(_dryad_S0#0, srtl(i)), old(_dryad_S1#1, srtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#srtl(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_reach(i)))), ==(old(_dryad_S0#0, srtl_reach(i)), old(_dryad_S1#1, srtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(_dryad_S1#1, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(j)))), ==(old(_dryad_S0#0, sll_keys(j)), old(_dryad_S1#1, sll_keys(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_keys(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_keys(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(j)))), ==(old(_dryad_S0#0, sll_list_len_next(j)), old(_dryad_S1#1, sll_list_len_next(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_list_len_next(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, rsrtl_reach(j)))), ==(old(_dryad_S0#0, rsrtl(j)), old(_dryad_S1#1, rsrtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, rsrtl_reach(j)))), ==(old(_dryad_S0#0, rsrtl_reach(j)), old(_dryad_S1#1, rsrtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(j)))), ==(old(_dryad_S0#0, sll(j)), old(_dryad_S1#1, sll(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#sll(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(j)))), ==(old(_dryad_S0#0, sll_reach(j)), old(_dryad_S1#1, sll_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(j)))), ==(old(_dryad_S0#0, sll_max_key(j)), old(_dryad_S1#1, sll_max_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_max_key(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_max_key(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(j)))), ==(old(_dryad_S0#0, sll_min_key(j)), old(_dryad_S1#1, sll_min_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_min_key(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#sll_min_key(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_reach(j)))), ==(old(_dryad_S0#0, srtl(j)), old(_dryad_S1#1, srtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#srtl(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_reach(j)))), ==(old(_dryad_S0#0, srtl_reach(j)), old(_dryad_S1#1, srtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(_dryad_S1#1, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(h)))), ==(old(_dryad_S0#0, sll_keys(h)), old(_dryad_S1#1, sll_keys(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(h)))), ==(old(_dryad_S0#0, sll_list_len_next(h)), old(_dryad_S1#1, sll_list_len_next(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_list_len_next(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, rsrtl_reach(h)))), ==(old(_dryad_S0#0, rsrtl(h)), old(_dryad_S1#1, rsrtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, rsrtl_reach(h)))), ==(old(_dryad_S0#0, rsrtl_reach(h)), old(_dryad_S1#1, rsrtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(h)))), ==(old(_dryad_S0#0, sll(h)), old(_dryad_S1#1, sll(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#sll(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(h)))), ==(old(_dryad_S0#0, sll_reach(h)), old(_dryad_S1#1, sll_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(h)))), ==(old(_dryad_S0#0, sll_max_key(h)), old(_dryad_S1#1, sll_max_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_max_key(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_max_key(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_reach(h)))), ==(old(_dryad_S0#0, sll_min_key(h)), old(_dryad_S1#1, sll_min_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_min_key(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#sll_min_key(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_reach(h)))), ==(old(_dryad_S0#0, srtl(h)), old(_dryad_S1#1, srtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#srtl(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_reach(h)))), ==(old(_dryad_S0#0, srtl_reach(h)), old(_dryad_S1#1, srtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0#0, sll_lseg(h, j)), old(_dryad_S1#1, sll_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0#0, sll_lseg_reach(h, j)), old(_dryad_S1#1, sll_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_reach(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0#0, sll_lseg_keys(h, j)), old(_dryad_S1#1, sll_lseg_keys(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_keys(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_keys(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0#0, sll_lseg_len_next(h, j)), old(_dryad_S1#1, sll_lseg_len_next(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_len_next(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_len_next(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0#0, sll_lseg_max_key(h, j)), old(_dryad_S1#1, sll_lseg_max_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_max_key(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_max_key(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, j)))), ==(old(_dryad_S0#0, sll_lseg_min_key(h, j)), old(_dryad_S1#1, sll_lseg_min_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_min_key(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_min_key(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_lseg_reach(h, j)))), ==(old(_dryad_S0#0, srtl_lseg(h, j)), old(_dryad_S1#1, srtl_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_lseg_reach(h, j)))), ==(old(_dryad_S0#0, srtl_lseg_reach(h, j)), old(_dryad_S1#1, srtl_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg_reach(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0#0, sll_lseg(h, i)), old(_dryad_S1#1, sll_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0#0, sll_lseg_reach(h, i)), old(_dryad_S1#1, sll_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_reach(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0#0, sll_lseg_keys(h, i)), old(_dryad_S1#1, sll_lseg_keys(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_keys(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_keys(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0#0, sll_lseg_len_next(h, i)), old(_dryad_S1#1, sll_lseg_len_next(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_len_next(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_len_next(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0#0, sll_lseg_max_key(h, i)), old(_dryad_S1#1, sll_lseg_max_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_max_key(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_max_key(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, sll_lseg_reach(h, i)))), ==(old(_dryad_S0#0, sll_lseg_min_key(h, i)), old(_dryad_S1#1, sll_lseg_min_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_min_key(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_min_key(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_lseg_reach(h, i)))), ==(old(_dryad_S0#0, srtl_lseg(h, i)), old(_dryad_S1#1, srtl_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S0#0, srtl_lseg_reach(h, i)))), ==(old(_dryad_S0#0, srtl_lseg_reach(h, i)), old(_dryad_S1#1, srtl_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg_reach(_dryad_S0#0, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg_reach(_dryad_S1#1, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume @_vcc_ptr_neq_null(e); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node));
        // _math \state _dryad_S2#2; 
        // _dryad_S2#2 := @_vcc_current_state(@state); 
        _dryad_S2#2 := $current_state($s);
        // _math \state stmtexpr3#14; 
        // stmtexpr3#14 := _dryad_S2#2; 
        stmtexpr3#14 := _dryad_S2#2;
        // assert @prim_writes_check((e->key)); 
        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#e, ^s_node), s_node.key));
        // *(e->key) := v; 
        call $write_int(s_node.key, $phys_ptr_cast(L#e, ^s_node), P#v);
        assume $full_stop_ext(#tok$3^43.5, $s);
        // _math \state _dryad_S3#3; 
        // _dryad_S3#3 := @_vcc_current_state(@state); 
        _dryad_S3#3 := $current_state($s);
        // _math \state stmtexpr4#15; 
        // stmtexpr4#15 := _dryad_S3#3; 
        stmtexpr4#15 := _dryad_S3#3;
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(*((e->next)))))), ==(old(_dryad_S2#2, sll_keys(*((e->next)))), old(_dryad_S3#3, sll_keys(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#sll_keys(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#sll_keys(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(*((e->next)))))), ==(old(_dryad_S2#2, sll_list_len_next(*((e->next)))), old(_dryad_S3#3, sll_list_len_next(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#sll_list_len_next(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(*((e->next)))))), ==(old(_dryad_S2#2, rsrtl(*((e->next)))), old(_dryad_S3#3, rsrtl(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#rsrtl(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#rsrtl(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(*((e->next)))))), ==(old(_dryad_S2#2, rsrtl_reach(*((e->next)))), old(_dryad_S3#3, rsrtl_reach(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#rsrtl_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(*((e->next)))))), ==(old(_dryad_S2#2, sll(*((e->next)))), old(_dryad_S3#3, sll(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#sll(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#sll(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(*((e->next)))))), ==(old(_dryad_S2#2, sll_reach(*((e->next)))), old(_dryad_S3#3, sll_reach(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#sll_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#sll_reach(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(*((e->next)))))), ==(old(_dryad_S2#2, sll_max_key(*((e->next)))), old(_dryad_S3#3, sll_max_key(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#sll_max_key(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#sll_max_key(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(*((e->next)))))), ==(old(_dryad_S2#2, sll_min_key(*((e->next)))), old(_dryad_S3#3, sll_min_key(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#sll_min_key(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#sll_min_key(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(*((e->next)))))), ==(old(_dryad_S2#2, srtl(*((e->next)))), old(_dryad_S3#3, srtl(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#srtl(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#srtl(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(*((e->next)))))), ==(old(_dryad_S2#2, srtl_reach(*((e->next)))), old(_dryad_S3#3, srtl_reach(*((e->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) ==> F#srtl_reach(_dryad_S2#2, $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) == F#srtl_reach(_dryad_S3#3, $rd_phys_ptr(_dryad_S3#3, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node));
        // assume ==(old(_dryad_S2#2, sll_list_len_next(e)), old(_dryad_S3#3, sll_list_len_next(e))); 
        assume F#sll_list_len_next(_dryad_S2#2, $phys_ptr_cast(L#e, ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $phys_ptr_cast(L#e, ^s_node));
        // assume ==(old(_dryad_S2#2, rsrtl_reach(e)), old(_dryad_S3#3, rsrtl_reach(e))); 
        assume F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#e, ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $phys_ptr_cast(L#e, ^s_node));
        // assume ==(old(_dryad_S2#2, sll(e)), old(_dryad_S3#3, sll(e))); 
        assume F#sll(_dryad_S2#2, $phys_ptr_cast(L#e, ^s_node)) == F#sll(_dryad_S3#3, $phys_ptr_cast(L#e, ^s_node));
        // assume ==(old(_dryad_S2#2, sll_reach(e)), old(_dryad_S3#3, sll_reach(e))); 
        assume F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#e, ^s_node)) == F#sll_reach(_dryad_S3#3, $phys_ptr_cast(L#e, ^s_node));
        // assume ==(old(_dryad_S2#2, srtl_reach(e)), old(_dryad_S3#3, srtl_reach(e))); 
        assume F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#e, ^s_node)) == F#srtl_reach(_dryad_S3#3, $phys_ptr_cast(L#e, ^s_node));
        // assume ==(old(_dryad_S2#2, sll_list_len_next(i)), old(_dryad_S3#3, sll_list_len_next(i))); 
        assume F#sll_list_len_next(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2#2, rsrtl_reach(i)), old(_dryad_S3#3, rsrtl_reach(i))); 
        assume F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2#2, sll(i)), old(_dryad_S3#3, sll(i))); 
        assume F#sll(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2#2, sll_reach(i)), old(_dryad_S3#3, sll_reach(i))); 
        assume F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2#2, srtl_reach(i)), old(_dryad_S3#3, srtl_reach(i))); 
        assume F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==(old(_dryad_S2#2, sll_list_len_next(j)), old(_dryad_S3#3, sll_list_len_next(j))); 
        assume F#sll_list_len_next(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2#2, rsrtl_reach(j)), old(_dryad_S3#3, rsrtl_reach(j))); 
        assume F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2#2, sll(j)), old(_dryad_S3#3, sll(j))); 
        assume F#sll(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2#2, sll_reach(j)), old(_dryad_S3#3, sll_reach(j))); 
        assume F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2#2, srtl_reach(j)), old(_dryad_S3#3, srtl_reach(j))); 
        assume F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==(old(_dryad_S2#2, sll_list_len_next(h)), old(_dryad_S3#3, sll_list_len_next(h))); 
        assume F#sll_list_len_next(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2#2, rsrtl_reach(h)), old(_dryad_S3#3, rsrtl_reach(h))); 
        assume F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2#2, sll(h)), old(_dryad_S3#3, sll(h))); 
        assume F#sll(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2#2, sll_reach(h)), old(_dryad_S3#3, sll_reach(h))); 
        assume F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==(old(_dryad_S2#2, srtl_reach(h)), old(_dryad_S3#3, srtl_reach(h))); 
        assume F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(i)))), ==(old(_dryad_S2#2, sll_keys(i)), old(_dryad_S3#3, sll_keys(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(i)))), ==(old(_dryad_S2#2, sll_list_len_next(i)), old(_dryad_S3#3, sll_list_len_next(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_list_len_next(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(i)))), ==(old(_dryad_S2#2, rsrtl(i)), old(_dryad_S3#3, rsrtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(i)))), ==(old(_dryad_S2#2, rsrtl_reach(i)), old(_dryad_S3#3, rsrtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(i)))), ==(old(_dryad_S2#2, sll(i)), old(_dryad_S3#3, sll(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(i)))), ==(old(_dryad_S2#2, sll_reach(i)), old(_dryad_S3#3, sll_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(i)))), ==(old(_dryad_S2#2, sll_max_key(i)), old(_dryad_S3#3, sll_max_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_max_key(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_max_key(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(i)))), ==(old(_dryad_S2#2, sll_min_key(i)), old(_dryad_S3#3, sll_min_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_min_key(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#sll_min_key(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(i)))), ==(old(_dryad_S2#2, srtl(i)), old(_dryad_S3#3, srtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#srtl(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(i)))), ==(old(_dryad_S2#2, srtl_reach(i)), old(_dryad_S3#3, srtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(_dryad_S3#3, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(j)))), ==(old(_dryad_S2#2, sll_keys(j)), old(_dryad_S3#3, sll_keys(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_keys(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_keys(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(j)))), ==(old(_dryad_S2#2, sll_list_len_next(j)), old(_dryad_S3#3, sll_list_len_next(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_list_len_next(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(j)))), ==(old(_dryad_S2#2, rsrtl(j)), old(_dryad_S3#3, rsrtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(j)))), ==(old(_dryad_S2#2, rsrtl_reach(j)), old(_dryad_S3#3, rsrtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(j)))), ==(old(_dryad_S2#2, sll(j)), old(_dryad_S3#3, sll(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(j)))), ==(old(_dryad_S2#2, sll_reach(j)), old(_dryad_S3#3, sll_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(j)))), ==(old(_dryad_S2#2, sll_max_key(j)), old(_dryad_S3#3, sll_max_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_max_key(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_max_key(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(j)))), ==(old(_dryad_S2#2, sll_min_key(j)), old(_dryad_S3#3, sll_min_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_min_key(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#sll_min_key(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(j)))), ==(old(_dryad_S2#2, srtl(j)), old(_dryad_S3#3, srtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#srtl(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(j)))), ==(old(_dryad_S2#2, srtl_reach(j)), old(_dryad_S3#3, srtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(_dryad_S3#3, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(h)))), ==(old(_dryad_S2#2, sll_keys(h)), old(_dryad_S3#3, sll_keys(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(h)))), ==(old(_dryad_S2#2, sll_list_len_next(h)), old(_dryad_S3#3, sll_list_len_next(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_list_len_next(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(h)))), ==(old(_dryad_S2#2, rsrtl(h)), old(_dryad_S3#3, rsrtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, rsrtl_reach(h)))), ==(old(_dryad_S2#2, rsrtl_reach(h)), old(_dryad_S3#3, rsrtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(h)))), ==(old(_dryad_S2#2, sll(h)), old(_dryad_S3#3, sll(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(h)))), ==(old(_dryad_S2#2, sll_reach(h)), old(_dryad_S3#3, sll_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(h)))), ==(old(_dryad_S2#2, sll_max_key(h)), old(_dryad_S3#3, sll_max_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_max_key(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_max_key(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_reach(h)))), ==(old(_dryad_S2#2, sll_min_key(h)), old(_dryad_S3#3, sll_min_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_min_key(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#sll_min_key(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(h)))), ==(old(_dryad_S2#2, srtl(h)), old(_dryad_S3#3, srtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#srtl(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_reach(h)))), ==(old(_dryad_S2#2, srtl_reach(h)), old(_dryad_S3#3, srtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2#2, sll_lseg(h, j)), old(_dryad_S3#3, sll_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2#2, sll_lseg_reach(h, j)), old(_dryad_S3#3, sll_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2#2, sll_lseg_keys(h, j)), old(_dryad_S3#3, sll_lseg_keys(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_keys(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_keys(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2#2, sll_lseg_len_next(h, j)), old(_dryad_S3#3, sll_lseg_len_next(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_len_next(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_len_next(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2#2, sll_lseg_max_key(h, j)), old(_dryad_S3#3, sll_lseg_max_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_max_key(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_max_key(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, j)))), ==(old(_dryad_S2#2, sll_lseg_min_key(h, j)), old(_dryad_S3#3, sll_lseg_min_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_min_key(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_min_key(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_lseg_reach(h, j)))), ==(old(_dryad_S2#2, srtl_lseg(h, j)), old(_dryad_S3#3, srtl_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_lseg_reach(h, j)))), ==(old(_dryad_S2#2, srtl_lseg_reach(h, j)), old(_dryad_S3#3, srtl_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2#2, sll_lseg(h, i)), old(_dryad_S3#3, sll_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2#2, sll_lseg_reach(h, i)), old(_dryad_S3#3, sll_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2#2, sll_lseg_keys(h, i)), old(_dryad_S3#3, sll_lseg_keys(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_keys(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_keys(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2#2, sll_lseg_len_next(h, i)), old(_dryad_S3#3, sll_lseg_len_next(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_len_next(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_len_next(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2#2, sll_lseg_max_key(h, i)), old(_dryad_S3#3, sll_lseg_max_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_max_key(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_max_key(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, sll_lseg_reach(h, i)))), ==(old(_dryad_S2#2, sll_lseg_min_key(h, i)), old(_dryad_S3#3, sll_lseg_min_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_min_key(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_min_key(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_lseg_reach(h, i)))), ==(old(_dryad_S2#2, srtl_lseg(h, i)), old(_dryad_S3#3, srtl_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S2#2, srtl_lseg_reach(h, i)))), ==(old(_dryad_S2#2, srtl_lseg_reach(h, i)), old(_dryad_S3#3, srtl_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg_reach(_dryad_S2#2, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg_reach(_dryad_S3#3, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, i)), ==(*((i->key)), old(_dryad_S2#2, *((i->key))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) == $rd_inv(_dryad_S2#2, s_node.key, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, i)), @_vcc_ptr_eq_pure(*((i->next)), old(_dryad_S2#2, *((i->next))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(e, j)), ==(*((j->key)), old(_dryad_S2#2, *((j->key))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) == $rd_inv(_dryad_S2#2, s_node.key, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, j)), @_vcc_ptr_eq_pure(*((j->next)), old(_dryad_S2#2, *((j->next))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(e, h)), ==(*((h->key)), old(_dryad_S2#2, *((h->key))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) == $rd_inv(_dryad_S2#2, s_node.key, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, h)), @_vcc_ptr_eq_pure(*((h->next)), old(_dryad_S2#2, *((h->next))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S2#2, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_keys(e), @_vcc_intset_union(sll_keys(*((e->next))), @_vcc_intset_singleton(*((e->key)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#e, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(rsrtl(e), &&(&&(rsrtl(*((e->next))), unchecked!(@_vcc_oset_in(e, rsrtl_reach(*((e->next)))))), >=(*((e->key)), sll_max_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_max_key(e), @\int_max(*((e->key)), sll_max_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_min_key(e), @\int_min(*((e->key)), sll_min_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(srtl(e), &&(&&(srtl(*((e->next))), unchecked!(@_vcc_oset_in(e, srtl_reach(*((e->next)))))), <=(*((e->key)), sll_min_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // _math \state _dryad_S4#4; 
        // _dryad_S4#4 := @_vcc_current_state(@state); 
        _dryad_S4#4 := $current_state($s);
        // _math \state stmtexpr5#16; 
        // stmtexpr5#16 := _dryad_S4#4; 
        stmtexpr5#16 := _dryad_S4#4;
        // assert @prim_writes_check((j->next)); 
        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#j, ^s_node), s_node.next));
        // *(j->next) := e; 
        call $write_int(s_node.next, $phys_ptr_cast(L#j, ^s_node), $ptr_to_int($phys_ptr_cast(L#e, ^s_node)));
        assume $full_stop_ext(#tok$3^44.5, $s);
        // _math \state _dryad_S5#5; 
        // _dryad_S5#5 := @_vcc_current_state(@state); 
        _dryad_S5#5 := $current_state($s);
        // _math \state stmtexpr6#17; 
        // stmtexpr6#17 := _dryad_S5#5; 
        stmtexpr6#17 := _dryad_S5#5;
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(e)))), ==(old(_dryad_S4#4, sll_keys(e)), old(_dryad_S5#5, sll_keys(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#sll_keys(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#sll_keys(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(e)))), ==(old(_dryad_S4#4, sll_list_len_next(e)), old(_dryad_S5#5, sll_list_len_next(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#sll_list_len_next(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#sll_list_len_next(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, rsrtl_reach(e)))), ==(old(_dryad_S4#4, rsrtl(e)), old(_dryad_S5#5, rsrtl(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#rsrtl(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#rsrtl(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, rsrtl_reach(e)))), ==(old(_dryad_S4#4, rsrtl_reach(e)), old(_dryad_S5#5, rsrtl_reach(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#rsrtl_reach(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(e)))), ==(old(_dryad_S4#4, sll(e)), old(_dryad_S5#5, sll(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#sll(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#sll(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(e)))), ==(old(_dryad_S4#4, sll_reach(e)), old(_dryad_S5#5, sll_reach(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#sll_reach(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(e)))), ==(old(_dryad_S4#4, sll_max_key(e)), old(_dryad_S5#5, sll_max_key(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#sll_max_key(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#sll_max_key(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(e)))), ==(old(_dryad_S4#4, sll_min_key(e)), old(_dryad_S5#5, sll_min_key(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#sll_min_key(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#sll_min_key(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_reach(e)))), ==(old(_dryad_S4#4, srtl(e)), old(_dryad_S5#5, srtl(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#srtl(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#srtl(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_reach(e)))), ==(old(_dryad_S4#4, srtl_reach(e)), old(_dryad_S5#5, srtl_reach(e)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node))) ==> F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(L#e, ^s_node)) == F#srtl_reach(_dryad_S5#5, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(i)))), ==(old(_dryad_S4#4, sll_keys(i)), old(_dryad_S5#5, sll_keys(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(i)))), ==(old(_dryad_S4#4, sll_list_len_next(i)), old(_dryad_S5#5, sll_list_len_next(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_list_len_next(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, rsrtl_reach(i)))), ==(old(_dryad_S4#4, rsrtl(i)), old(_dryad_S5#5, rsrtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, rsrtl_reach(i)))), ==(old(_dryad_S4#4, rsrtl_reach(i)), old(_dryad_S5#5, rsrtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(i)))), ==(old(_dryad_S4#4, sll(i)), old(_dryad_S5#5, sll(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#sll(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(i)))), ==(old(_dryad_S4#4, sll_reach(i)), old(_dryad_S5#5, sll_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(i)))), ==(old(_dryad_S4#4, sll_max_key(i)), old(_dryad_S5#5, sll_max_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_max_key(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_max_key(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(i)))), ==(old(_dryad_S4#4, sll_min_key(i)), old(_dryad_S5#5, sll_min_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_min_key(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#sll_min_key(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_reach(i)))), ==(old(_dryad_S4#4, srtl(i)), old(_dryad_S5#5, srtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#srtl(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_reach(i)))), ==(old(_dryad_S4#4, srtl_reach(i)), old(_dryad_S5#5, srtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(_dryad_S5#5, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(h)))), ==(old(_dryad_S4#4, sll_keys(h)), old(_dryad_S5#5, sll_keys(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(h)))), ==(old(_dryad_S4#4, sll_list_len_next(h)), old(_dryad_S5#5, sll_list_len_next(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_list_len_next(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, rsrtl_reach(h)))), ==(old(_dryad_S4#4, rsrtl(h)), old(_dryad_S5#5, rsrtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, rsrtl_reach(h)))), ==(old(_dryad_S4#4, rsrtl_reach(h)), old(_dryad_S5#5, rsrtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(h)))), ==(old(_dryad_S4#4, sll(h)), old(_dryad_S5#5, sll(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#sll(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(h)))), ==(old(_dryad_S4#4, sll_reach(h)), old(_dryad_S5#5, sll_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(h)))), ==(old(_dryad_S4#4, sll_max_key(h)), old(_dryad_S5#5, sll_max_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_max_key(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_max_key(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_reach(h)))), ==(old(_dryad_S4#4, sll_min_key(h)), old(_dryad_S5#5, sll_min_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_min_key(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#sll_min_key(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_reach(h)))), ==(old(_dryad_S4#4, srtl(h)), old(_dryad_S5#5, srtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#srtl(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_reach(h)))), ==(old(_dryad_S4#4, srtl_reach(h)), old(_dryad_S5#5, srtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4#4, sll_lseg(h, j)), old(_dryad_S5#5, sll_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4#4, sll_lseg_reach(h, j)), old(_dryad_S5#5, sll_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_reach(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4#4, sll_lseg_keys(h, j)), old(_dryad_S5#5, sll_lseg_keys(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_keys(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_keys(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4#4, sll_lseg_len_next(h, j)), old(_dryad_S5#5, sll_lseg_len_next(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_len_next(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_len_next(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4#4, sll_lseg_max_key(h, j)), old(_dryad_S5#5, sll_lseg_max_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_max_key(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_max_key(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, j)))), ==(old(_dryad_S4#4, sll_lseg_min_key(h, j)), old(_dryad_S5#5, sll_lseg_min_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_min_key(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_min_key(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_lseg_reach(h, j)))), ==(old(_dryad_S4#4, srtl_lseg(h, j)), old(_dryad_S5#5, srtl_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_lseg_reach(h, j)))), ==(old(_dryad_S4#4, srtl_lseg_reach(h, j)), old(_dryad_S5#5, srtl_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg_reach(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4#4, sll_lseg(h, i)), old(_dryad_S5#5, sll_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4#4, sll_lseg_reach(h, i)), old(_dryad_S5#5, sll_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_reach(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4#4, sll_lseg_keys(h, i)), old(_dryad_S5#5, sll_lseg_keys(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_keys(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_keys(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4#4, sll_lseg_len_next(h, i)), old(_dryad_S5#5, sll_lseg_len_next(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_len_next(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_len_next(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4#4, sll_lseg_max_key(h, i)), old(_dryad_S5#5, sll_lseg_max_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_max_key(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_max_key(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, sll_lseg_reach(h, i)))), ==(old(_dryad_S4#4, sll_lseg_min_key(h, i)), old(_dryad_S5#5, sll_lseg_min_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_min_key(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_min_key(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_lseg_reach(h, i)))), ==(old(_dryad_S4#4, srtl_lseg(h, i)), old(_dryad_S5#5, srtl_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(j, old(_dryad_S4#4, srtl_lseg_reach(h, i)))), ==(old(_dryad_S4#4, srtl_lseg_reach(h, i)), old(_dryad_S5#5, srtl_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg_reach(_dryad_S4#4, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg_reach(_dryad_S5#5, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(j, e)), ==(*((e->key)), old(_dryad_S4#4, *((e->key))))); 
        assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(L#e, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) == $rd_inv(_dryad_S4#4, s_node.key, $phys_ptr_cast(L#e, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(j, e)), @_vcc_ptr_eq_pure(*((e->next)), old(_dryad_S4#4, *((e->next))))); 
        assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(L#e, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S4#4, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(j, i)), ==(*((i->key)), old(_dryad_S4#4, *((i->key))))); 
        assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) == $rd_inv(_dryad_S4#4, s_node.key, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(j, i)), @_vcc_ptr_eq_pure(*((i->next)), old(_dryad_S4#4, *((i->next))))); 
        assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S4#4, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(j, h)), ==(*((h->key)), old(_dryad_S4#4, *((h->key))))); 
        assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) == $rd_inv(_dryad_S4#4, s_node.key, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(j, h)), @_vcc_ptr_eq_pure(*((h->next)), old(_dryad_S4#4, *((h->next))))); 
        assume !($phys_ptr_cast(L#j, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) == $rd_phys_ptr(_dryad_S4#4, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_keys(e), @_vcc_intset_union(sll_keys(*((e->next))), @_vcc_intset_singleton(*((e->key)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#e, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_list_len_next(e), unchecked+(sll_list_len_next(*((e->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#e, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(rsrtl(e), &&(&&(rsrtl(*((e->next))), unchecked!(@_vcc_oset_in(e, rsrtl_reach(*((e->next)))))), >=(*((e->key)), sll_max_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(rsrtl_reach(e), @_vcc_oset_union(rsrtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll(e), &&(sll(*((e->next))), unchecked!(@_vcc_oset_in(e, sll_reach(*((e->next)))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#e, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_reach(e), @_vcc_oset_union(sll_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_max_key(e), @\int_max(*((e->key)), sll_max_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_min_key(e), @\int_min(*((e->key)), sll_min_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(srtl(e), &&(&&(srtl(*((e->next))), unchecked!(@_vcc_oset_in(e, srtl_reach(*((e->next)))))), <=(*((e->key)), sll_min_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(srtl_reach(e), @_vcc_oset_union(srtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_keys(e), @_vcc_intset_union(sll_keys(*((e->next))), @_vcc_intset_singleton(*((e->key)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#e, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_list_len_next(e), unchecked+(sll_list_len_next(*((e->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#e, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(rsrtl(e), &&(&&(rsrtl(*((e->next))), unchecked!(@_vcc_oset_in(e, rsrtl_reach(*((e->next)))))), >=(*((e->key)), sll_max_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(rsrtl_reach(e), @_vcc_oset_union(rsrtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll(e), &&(sll(*((e->next))), unchecked!(@_vcc_oset_in(e, sll_reach(*((e->next)))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#e, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_reach(e), @_vcc_oset_union(sll_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_max_key(e), @\int_max(*((e->key)), sll_max_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_min_key(e), @\int_min(*((e->key)), sll_min_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(srtl(e), &&(&&(srtl(*((e->next))), unchecked!(@_vcc_oset_in(e, srtl_reach(*((e->next)))))), <=(*((e->key)), sll_min_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(srtl_reach(e), @_vcc_oset_union(srtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // _math \state _dryad_S6; 
        // _dryad_S6 := @_vcc_current_state(@state); 
        SL#_dryad_S6 := $current_state($s);
        // _math \state stmtexpr7#18; 
        // stmtexpr7#18 := _dryad_S6; 
        stmtexpr7#18 := SL#_dryad_S6;
        // assert @prim_writes_check((e->next)); 
        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#e, ^s_node), s_node.next));
        // *(e->next) := i; 
        call $write_int(s_node.next, $phys_ptr_cast(L#e, ^s_node), $ptr_to_int($phys_ptr_cast(L#i, ^s_node)));
        assume $full_stop_ext(#tok$3^45.5, $s);
        // _math \state _dryad_S7; 
        // _dryad_S7 := @_vcc_current_state(@state); 
        SL#_dryad_S7 := $current_state($s);
        // _math \state stmtexpr8#19; 
        // stmtexpr8#19 := _dryad_S7; 
        stmtexpr8#19 := SL#_dryad_S7;
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(i)))), ==(old(_dryad_S6, sll_keys(i)), old(_dryad_S7, sll_keys(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(i)))), ==(old(_dryad_S6, sll_list_len_next(i)), old(_dryad_S7, sll_list_len_next(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, rsrtl_reach(i)))), ==(old(_dryad_S6, rsrtl(i)), old(_dryad_S7, rsrtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, rsrtl_reach(i)))), ==(old(_dryad_S6, rsrtl_reach(i)), old(_dryad_S7, rsrtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(i)))), ==(old(_dryad_S6, sll(i)), old(_dryad_S7, sll(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(i)))), ==(old(_dryad_S6, sll_reach(i)), old(_dryad_S7, sll_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(i)))), ==(old(_dryad_S6, sll_max_key(i)), old(_dryad_S7, sll_max_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(i)))), ==(old(_dryad_S6, sll_min_key(i)), old(_dryad_S7, sll_min_key(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_reach(i)))), ==(old(_dryad_S6, srtl(i)), old(_dryad_S7, srtl(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_reach(i)))), ==(old(_dryad_S6, srtl_reach(i)), old(_dryad_S7, srtl_reach(i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#i, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(j)))), ==(old(_dryad_S6, sll_keys(j)), old(_dryad_S7, sll_keys(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(j)))), ==(old(_dryad_S6, sll_list_len_next(j)), old(_dryad_S7, sll_list_len_next(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, rsrtl_reach(j)))), ==(old(_dryad_S6, rsrtl(j)), old(_dryad_S7, rsrtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, rsrtl_reach(j)))), ==(old(_dryad_S6, rsrtl_reach(j)), old(_dryad_S7, rsrtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(j)))), ==(old(_dryad_S6, sll(j)), old(_dryad_S7, sll(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(j)))), ==(old(_dryad_S6, sll_reach(j)), old(_dryad_S7, sll_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(j)))), ==(old(_dryad_S6, sll_max_key(j)), old(_dryad_S7, sll_max_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(j)))), ==(old(_dryad_S6, sll_min_key(j)), old(_dryad_S7, sll_min_key(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_reach(j)))), ==(old(_dryad_S6, srtl(j)), old(_dryad_S7, srtl(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_reach(j)))), ==(old(_dryad_S6, srtl_reach(j)), old(_dryad_S7, srtl_reach(j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#j, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(h)))), ==(old(_dryad_S6, sll_keys(h)), old(_dryad_S7, sll_keys(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(h)))), ==(old(_dryad_S6, sll_list_len_next(h)), old(_dryad_S7, sll_list_len_next(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, rsrtl_reach(h)))), ==(old(_dryad_S6, rsrtl(h)), old(_dryad_S7, rsrtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, rsrtl_reach(h)))), ==(old(_dryad_S6, rsrtl_reach(h)), old(_dryad_S7, rsrtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(h)))), ==(old(_dryad_S6, sll(h)), old(_dryad_S7, sll(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(h)))), ==(old(_dryad_S6, sll_reach(h)), old(_dryad_S7, sll_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(h)))), ==(old(_dryad_S6, sll_max_key(h)), old(_dryad_S7, sll_max_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_reach(h)))), ==(old(_dryad_S6, sll_min_key(h)), old(_dryad_S7, sll_min_key(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_reach(h)))), ==(old(_dryad_S6, srtl(h)), old(_dryad_S7, srtl(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_reach(h)))), ==(old(_dryad_S6, srtl_reach(h)), old(_dryad_S7, srtl_reach(h)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, j)))), ==(old(_dryad_S6, sll_lseg(h, j)), old(_dryad_S7, sll_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, j)))), ==(old(_dryad_S6, sll_lseg_reach(h, j)), old(_dryad_S7, sll_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, j)))), ==(old(_dryad_S6, sll_lseg_keys(h, j)), old(_dryad_S7, sll_lseg_keys(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, j)))), ==(old(_dryad_S6, sll_lseg_len_next(h, j)), old(_dryad_S7, sll_lseg_len_next(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, j)))), ==(old(_dryad_S6, sll_lseg_max_key(h, j)), old(_dryad_S7, sll_lseg_max_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, j)))), ==(old(_dryad_S6, sll_lseg_min_key(h, j)), old(_dryad_S7, sll_lseg_min_key(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_lseg_reach(h, j)))), ==(old(_dryad_S6, srtl_lseg(h, j)), old(_dryad_S7, srtl_lseg(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_lseg_reach(h, j)))), ==(old(_dryad_S6, srtl_lseg_reach(h, j)), old(_dryad_S7, srtl_lseg_reach(h, j)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, i)))), ==(old(_dryad_S6, sll_lseg(h, i)), old(_dryad_S7, sll_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, i)))), ==(old(_dryad_S6, sll_lseg_reach(h, i)), old(_dryad_S7, sll_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, i)))), ==(old(_dryad_S6, sll_lseg_keys(h, i)), old(_dryad_S7, sll_lseg_keys(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, i)))), ==(old(_dryad_S6, sll_lseg_len_next(h, i)), old(_dryad_S7, sll_lseg_len_next(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, i)))), ==(old(_dryad_S6, sll_lseg_max_key(h, i)), old(_dryad_S7, sll_lseg_max_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, sll_lseg_reach(h, i)))), ==(old(_dryad_S6, sll_lseg_min_key(h, i)), old(_dryad_S7, sll_lseg_min_key(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_lseg_reach(h, i)))), ==(old(_dryad_S6, srtl_lseg(h, i)), old(_dryad_S7, srtl_lseg(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(e, old(_dryad_S6, srtl_lseg_reach(h, i)))), ==(old(_dryad_S6, srtl_lseg_reach(h, i)), old(_dryad_S7, srtl_lseg_reach(h, i)))); 
        assume !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, i)), ==(*((i->key)), old(_dryad_S6, *((i->key))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) == $rd_inv(SL#_dryad_S6, s_node.key, $phys_ptr_cast(L#i, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, i)), @_vcc_ptr_eq_pure(*((i->next)), old(_dryad_S6, *((i->next))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#i, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S6, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(e, j)), ==(*((j->key)), old(_dryad_S6, *((j->key))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) == $rd_inv(SL#_dryad_S6, s_node.key, $phys_ptr_cast(L#j, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, j)), @_vcc_ptr_eq_pure(*((j->next)), old(_dryad_S6, *((j->next))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(L#j, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S6, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(e, h)), ==(*((h->key)), old(_dryad_S6, *((h->key))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) == $rd_inv(SL#_dryad_S6, s_node.key, $phys_ptr_cast(P#h, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(e, h)), @_vcc_ptr_eq_pure(*((h->next)), old(_dryad_S6, *((h->next))))); 
        assume !($phys_ptr_cast(L#e, ^s_node) == $phys_ptr_cast(P#h, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S6, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_keys(j), @_vcc_intset_union(sll_keys(*((j->next))), @_vcc_intset_singleton(*((j->key)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_list_len_next(j), unchecked+(sll_list_len_next(*((j->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(rsrtl(j), &&(&&(rsrtl(*((j->next))), unchecked!(@_vcc_oset_in(j, rsrtl_reach(*((j->next)))))), >=(*((j->key)), sll_max_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(rsrtl_reach(j), @_vcc_oset_union(rsrtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll(j), &&(sll(*((j->next))), unchecked!(@_vcc_oset_in(j, sll_reach(*((j->next)))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#j, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(sll_reach(j), @_vcc_oset_union(sll_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_max_key(j), @\int_max(*((j->key)), sll_max_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(sll_min_key(j), @\int_min(*((j->key)), sll_min_key(*((j->next)))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(j), @_vcc_ptr_neq_null(*((j->next)))), ==(srtl(j), &&(&&(srtl(*((j->next))), unchecked!(@_vcc_oset_in(j, srtl_reach(*((j->next)))))), <=(*((j->key)), sll_min_key(*((j->next))))))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#j, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#j, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#j, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(j), ==(srtl_reach(j), @_vcc_oset_union(srtl_reach(*((j->next))), @_vcc_oset_singleton(j)))); 
        assume $non_null($phys_ptr_cast(L#j, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#j, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_keys(h), @_vcc_intset_union(sll_keys(*((h->next))), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#h, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_list_len_next(h), unchecked+(sll_list_len_next(*((h->next))), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#h, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(rsrtl(h), &&(&&(rsrtl(*((h->next))), unchecked!(@_vcc_oset_in(h, rsrtl_reach(*((h->next)))))), >=(*((h->key)), sll_max_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(rsrtl_reach(h), @_vcc_oset_union(rsrtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll(h), &&(sll(*((h->next))), unchecked!(@_vcc_oset_in(h, sll_reach(*((h->next)))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#h, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(sll_reach(h), @_vcc_oset_union(sll_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_max_key(h), @\int_max(*((h->key)), sll_max_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(sll_min_key(h), @\int_min(*((h->key)), sll_min_key(*((h->next)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#h, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_null(*((h->next)))), ==(srtl(h), &&(&&(srtl(*((h->next))), unchecked!(@_vcc_oset_in(h, srtl_reach(*((h->next)))))), <=(*((h->key)), sll_min_key(*((h->next))))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#h, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(h), ==(srtl_reach(h), @_vcc_oset_union(srtl_reach(*((h->next))), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#h, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_keys(e), @_vcc_intset_union(sll_keys(*((e->next))), @_vcc_intset_singleton(*((e->key)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#e, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_list_len_next(e), unchecked+(sll_list_len_next(*((e->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#e, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(rsrtl(e), &&(&&(rsrtl(*((e->next))), unchecked!(@_vcc_oset_in(e, rsrtl_reach(*((e->next)))))), >=(*((e->key)), sll_max_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(rsrtl_reach(e), @_vcc_oset_union(rsrtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll(e), &&(sll(*((e->next))), unchecked!(@_vcc_oset_in(e, sll_reach(*((e->next)))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#e, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(sll_reach(e), @_vcc_oset_union(sll_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_max_key(e), @\int_max(*((e->key)), sll_max_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(sll_min_key(e), @\int_min(*((e->key)), sll_min_key(*((e->next)))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#e, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(e), @_vcc_ptr_neq_null(*((e->next)))), ==(srtl(e), &&(&&(srtl(*((e->next))), unchecked!(@_vcc_oset_in(e, srtl_reach(*((e->next)))))), <=(*((e->key)), sll_min_key(*((e->next))))))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#e, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#e, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#e, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(e), ==(srtl_reach(e), @_vcc_oset_union(srtl_reach(*((e->next))), @_vcc_oset_singleton(e)))); 
        assume $non_null($phys_ptr_cast(L#e, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#e, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#e, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#e, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_keys(i), @_vcc_intset_union(sll_keys(*((i->next))), @_vcc_intset_singleton(*((i->key)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_list_len_next(i), unchecked+(sll_list_len_next(*((i->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), 1);
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(rsrtl(i), &&(&&(rsrtl(*((i->next))), unchecked!(@_vcc_oset_in(i, rsrtl_reach(*((i->next)))))), >=(*((i->key)), sll_max_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(rsrtl_reach(i), @_vcc_oset_union(rsrtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll(i), &&(sll(*((i->next))), unchecked!(@_vcc_oset_in(i, sll_reach(*((i->next)))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#i, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(sll_reach(i), @_vcc_oset_union(sll_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_max_key(i), @\int_max(*((i->key)), sll_max_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(sll_min_key(i), @\int_min(*((i->key)), sll_min_key(*((i->next)))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(i), @_vcc_ptr_neq_null(*((i->next)))), ==(srtl(i), &&(&&(srtl(*((i->next))), unchecked!(@_vcc_oset_in(i, srtl_reach(*((i->next)))))), <=(*((i->key)), sll_min_key(*((i->next))))))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#i, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#i, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#i, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(i), ==(srtl_reach(i), @_vcc_oset_union(srtl_reach(*((i->next))), @_vcc_oset_singleton(i)))); 
        assume $non_null($phys_ptr_cast(L#i, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#i, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg(h, j), &&(sll_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), j)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_reach(h, j), @_vcc_oset_union(sll_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_keys(h, j), @_vcc_intset_union(sll_lseg_keys(*((h->next)), j), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(sll_lseg_len_next(h, j), unchecked+(sll_lseg_len_next(*((h->next)), j), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_max_key(h, j), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(sll_lseg_min_key(h, j), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), j)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), @_vcc_ptr_neq_pure(*((h->next)), j)), ==(srtl_lseg(h, j), &&(&&(srtl_lseg(*((h->next)), j), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), j)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), j))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, j)), ==(srtl_lseg_reach(h, j), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), j), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#j, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#j, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#j, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg(h, i), &&(sll_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, sll_lseg_reach(*((h->next)), i)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_reach(h, i), @_vcc_oset_union(sll_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_keys(h, i), @_vcc_intset_union(sll_lseg_keys(*((h->next)), i), @_vcc_intset_singleton(*((h->key)))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node))));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(sll_lseg_len_next(h, i), unchecked+(sll_lseg_len_next(*((h->next)), i), 1))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), 1);
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_max_key(h, i), @\int_max(*((h->key)), sll_lseg_max_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(sll_lseg_min_key(h, i), @\int_min(*((h->key)), sll_lseg_min_key(*((h->next)), i)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), @_vcc_ptr_neq_pure(*((h->next)), i)), ==(srtl_lseg(h, i), &&(&&(srtl_lseg(*((h->next)), i), unchecked!(@_vcc_oset_in(h, srtl_lseg_reach(*((h->next)), i)))), <=(*((h->key)), sll_lseg_min_key(*((h->next)), i))))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)) && !$oset_in($phys_ptr_cast(P#h, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#h, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)));
        // assume ==>(&&(@_vcc_ptr_neq_null(h), @_vcc_ptr_neq_pure(h, i)), ==(srtl_lseg_reach(h, i), @_vcc_oset_union(srtl_lseg_reach(*((h->next)), i), @_vcc_oset_singleton(h)))); 
        assume $non_null($phys_ptr_cast(P#h, ^s_node)) && $phys_ptr_cast(P#h, ^s_node) != $phys_ptr_cast(L#i, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#h, ^s_node), $phys_ptr_cast(L#i, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#h, ^s_node), ^s_node), $phys_ptr_cast(L#i, ^s_node)), $oset_singleton($phys_ptr_cast(P#h, ^s_node)));
        // return h; 
        $result := $phys_ptr_cast(P#h, ^s_node);
        assume true;
        assert $position_marker();
        goto #exit;
    }

  anon11:
    // skip

  #exit:
}



axiom (forall Q#__vcc_state$2^687.9#tc2#1679: $state, Q#x$2^687.9#dt1#1622: $ptr :: {:weight 10} { F#srtl(Q#__vcc_state$2^687.9#tc2#1679, $phys_ptr_cast(Q#x$2^687.9#dt1#1622, ^s_node)) } { F#sll(Q#__vcc_state$2^687.9#tc2#1679, $phys_ptr_cast(Q#x$2^687.9#dt1#1622, ^s_node)) } $good_state(Q#__vcc_state$2^687.9#tc2#1679) && true ==> F#srtl(Q#__vcc_state$2^687.9#tc2#1679, $phys_ptr_cast(Q#x$2^687.9#dt1#1622, ^s_node)) ==> F#sll(Q#__vcc_state$2^687.9#tc2#1679, $phys_ptr_cast(Q#x$2^687.9#dt1#1622, ^s_node)));

axiom (forall Q#__vcc_state$2^688.9#tc2#1680: $state, Q#x$2^688.9#dt1#1623: $ptr :: {:weight 10} { F#rsrtl(Q#__vcc_state$2^688.9#tc2#1680, $phys_ptr_cast(Q#x$2^688.9#dt1#1623, ^s_node)) } { F#sll(Q#__vcc_state$2^688.9#tc2#1680, $phys_ptr_cast(Q#x$2^688.9#dt1#1623, ^s_node)) } $good_state(Q#__vcc_state$2^688.9#tc2#1680) && true ==> F#rsrtl(Q#__vcc_state$2^688.9#tc2#1680, $phys_ptr_cast(Q#x$2^688.9#dt1#1623, ^s_node)) ==> F#sll(Q#__vcc_state$2^688.9#tc2#1680, $phys_ptr_cast(Q#x$2^688.9#dt1#1623, ^s_node)));

axiom (forall Q#__vcc_state$2^689.9#tc2#1681: $state, Q#x$2^689.9#dt1#1624: $ptr :: {:weight 10} { F#sll_reach(Q#__vcc_state$2^689.9#tc2#1681, $phys_ptr_cast(Q#x$2^689.9#dt1#1624, ^s_node)) } { F#srtl_reach(Q#__vcc_state$2^689.9#tc2#1681, $phys_ptr_cast(Q#x$2^689.9#dt1#1624, ^s_node)) } $good_state(Q#__vcc_state$2^689.9#tc2#1681) && true ==> F#sll_reach(Q#__vcc_state$2^689.9#tc2#1681, $phys_ptr_cast(Q#x$2^689.9#dt1#1624, ^s_node)) == F#srtl_reach(Q#__vcc_state$2^689.9#tc2#1681, $phys_ptr_cast(Q#x$2^689.9#dt1#1624, ^s_node)));

axiom (forall Q#__vcc_state$2^690.9#tc2#1682: $state, Q#x$2^690.9#dt1#1625: $ptr :: {:weight 10} { F#srtl_reach(Q#__vcc_state$2^690.9#tc2#1682, $phys_ptr_cast(Q#x$2^690.9#dt1#1625, ^s_node)) } { F#rsrtl_reach(Q#__vcc_state$2^690.9#tc2#1682, $phys_ptr_cast(Q#x$2^690.9#dt1#1625, ^s_node)) } $good_state(Q#__vcc_state$2^690.9#tc2#1682) && true ==> F#srtl_reach(Q#__vcc_state$2^690.9#tc2#1682, $phys_ptr_cast(Q#x$2^690.9#dt1#1625, ^s_node)) == F#rsrtl_reach(Q#__vcc_state$2^690.9#tc2#1682, $phys_ptr_cast(Q#x$2^690.9#dt1#1625, ^s_node)));

axiom (forall Q#__vcc_state$2^691.9#tc2#1683: $state, Q#x$2^691.9#dt1#1626: $ptr, Q#y$2^691.9#dt1#1627: $ptr :: {:weight 10} { F#sll_lseg_reach(Q#__vcc_state$2^691.9#tc2#1683, $phys_ptr_cast(Q#x$2^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1627, ^s_node)) } { F#srtl_lseg_reach(Q#__vcc_state$2^691.9#tc2#1683, $phys_ptr_cast(Q#x$2^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1627, ^s_node)) } $good_state(Q#__vcc_state$2^691.9#tc2#1683) && true ==> F#sll_lseg_reach(Q#__vcc_state$2^691.9#tc2#1683, $phys_ptr_cast(Q#x$2^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1627, ^s_node)) == F#srtl_lseg_reach(Q#__vcc_state$2^691.9#tc2#1683, $phys_ptr_cast(Q#x$2^691.9#dt1#1626, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1627, ^s_node)));

const unique l#public: $label;

axiom $type_code_is(2, ^$#state_t);

const unique #tok$3^45.5: $token;

const unique #tok$3^44.5: $token;

const unique #tok$3^43.5: $token;

const unique #tok$3^40.16: $token;

const unique #tok$3^36.5: $token;

const unique #tok$3^35.5: $token;

const unique #tok$3^33.17: $token;

const unique #tok$3^13.3: $token;

const unique #tok$3^9.29: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^3.3: $token;

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cafwp?5CSLL?2Dinsert.c: $token;

axiom $file_name_is(3, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cafwp?5CSLL?2Dinsert.c);

const unique #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cafwp?5Cdryad_SRTL.h: $token;

axiom $file_name_is(2, #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cafwp?5Cdryad_SRTL.h);

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?2Dbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?2Dbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

