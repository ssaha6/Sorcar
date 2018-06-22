
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

const unique ^$#g_slist_copy.c..36263#3: $ctype;

axiom $def_fnptr_type(^$#g_slist_copy.c..36263#3);

type $#g_slist_copy.c..36263#3;

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



procedure g_slist_copy(P#list: $ptr) returns ($result: $ptr);
  requires F#sll($s, $phys_ptr_cast(P#list, ^s_node));
  modifies $s, $cev_pc;
  ensures F#sll($s, $phys_ptr_cast(P#list, ^s_node)) && F#sll($s, $phys_ptr_cast($result, ^s_node)) && $oset_disjoint(F#sll_reach($s, $phys_ptr_cast(P#list, ^s_node)), F#sll_reach($s, $phys_ptr_cast($result, ^s_node)));
  ensures F#sll_keys($s, $phys_ptr_cast($result, ^s_node)) == F#sll_keys($s, $phys_ptr_cast(P#list, ^s_node));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation g_slist_copy(P#list: $ptr) returns ($result: $ptr)
{
  var stmtexpr11#13: $ptr;
  var SL#list9: $ptr;
  var stmtexpr10#12: $ptr;
  var SL#last8: $ptr;
  var stmtexpr9#11: $state;
  var SL#_dryad_S13: $state;
  var stmtexpr8#10: $state;
  var SL#_dryad_S12: $state;
  var stmtexpr7#9: $state;
  var SL#_dryad_S11: $state;
  var stmtexpr6#8: $state;
  var SL#_dryad_S10: $state;
  var stmtexpr5#7: $state;
  var SL#_dryad_S9: $state;
  var stmtexpr4#6: $state;
  var SL#_dryad_S8: $state;
  var stmtexpr3#5: $ptr;
  var SL#list4: $ptr;
  var stmtexpr2#4: $state;
  var SL#_dryad_S7: $state;
  var stmtexpr1#3: $oset;
  var stmtexpr0#2: $state;
  var SL#_dryad_S6: $state;
  var L#tail: $ptr;
  var list_key#0: int where $in_range_i4(list_key#0);
  var loopState#0: $state;
  var stmtexpr8#22: $ptr;
  var SL#list3: $ptr;
  var stmtexpr7#21: $state;
  var SL#_dryad_S5: $state;
  var stmtexpr6#20: $state;
  var SL#_dryad_S4: $state;
  var stmtexpr5#19: $state;
  var SL#_dryad_S3: $state;
  var stmtexpr4#18: $state;
  var SL#_dryad_S2: $state;
  var stmtexpr3#17: $ptr;
  var SL#list0: $ptr;
  var stmtexpr2#16: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr1#15: $oset;
  var stmtexpr0#14: $state;
  var SL#_dryad_S0: $state;
  var L#last: $ptr;
  var L#list_key: int where $in_range_i4(L#list_key);
  var SL#ALL_REACH: $oset;
  var L#new_list: $ptr;
  var stmtexpr1#24: $oset;
  var stmtexpr0#23: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var local.list: $ptr;
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

// INV:PTR: P#list, L#new_list, L#last, local.list
// INV:INT: L#list_key
// INV:LST: sll

  anon7:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$3^3.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$3^3.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$3^3.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // struct s_node* local.list; 
    // local.list := list; 
    local.list := $phys_ptr_cast(P#list, ^s_node);
    // assume true
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := sll_reach(local.list); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(local.list, ^s_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#23; 
    // stmtexpr0#23 := _dryad_G0; 
    stmtexpr0#23 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#24; 
    // stmtexpr1#24 := _dryad_G1; 
    stmtexpr1#24 := SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
    // struct s_node* new_list; 
    // _math \oset ALL_REACH; 
    // assume ==>(@_vcc_ptr_neq_null(local.list), &&(@_vcc_mutable(@state, local.list), @writes_check(local.list))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(local.list, ^s_node));
    // ALL_REACH := sll_reach(local.list); 
    call SL#ALL_REACH := sll_reach($phys_ptr_cast(local.list, ^s_node));
    assume $full_stop_ext(#tok$3^11.29, $s);
    // new_list := (struct s_node*)@null; 
    L#new_list := $phys_ptr_cast($null, ^s_node);
    // assert sll_lseg(new_list, new_list); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#new_list, ^s_node));
    // assume sll_lseg(new_list, new_list); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#new_list, ^s_node));
    // assert sll_lseg(local.list, local.list); 
    assert F#sll_lseg($s, $phys_ptr_cast(local.list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
    // assume sll_lseg(local.list, local.list); 
    assume F#sll_lseg($s, $phys_ptr_cast(local.list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
    assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
    assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
    assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
    assume true;
    // if (@_vcc_ptr_neq_null(local.list)) ...
    if ($non_null($phys_ptr_cast(local.list, ^s_node)))
    {
      anon4:
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
        // int32_t list_key; 
        // struct s_node* last; 
        // last := (struct s_node*)@null; 
        L#last := $phys_ptr_cast($null, ^s_node);
        // assert sll_lseg(last, last); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#last, ^s_node), $phys_ptr_cast(L#last, ^s_node));
        // assume sll_lseg(last, last); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#last, ^s_node), $phys_ptr_cast(L#last, ^s_node));
        // assert sll_lseg(new_list, new_list); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#new_list, ^s_node));
        // assume sll_lseg(new_list, new_list); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#new_list, ^s_node));
        // assert sll_lseg(local.list, local.list); 
        assert F#sll_lseg($s, $phys_ptr_cast(local.list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
        // assume sll_lseg(local.list, local.list); 
        assume F#sll_lseg($s, $phys_ptr_cast(local.list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
        // _math \state _dryad_S0; 
        // _dryad_S0 := @_vcc_current_state(@state); 
        SL#_dryad_S0 := $current_state($s);
        // _math \state stmtexpr0#14; 
        // stmtexpr0#14 := _dryad_S0; 
        stmtexpr0#14 := SL#_dryad_S0;
        // new_list := _vcc_alloc(@_vcc_typeof((struct s_node*)@null)); 
        call L#new_list := $alloc(^s_node);
        assume $full_stop_ext(#tok$3^17.14, $s);
        // assume !(@_vcc_oset_in(new_list, @_vcc_oset_union(_dryad_G0, _dryad_G1))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), $oset_union(SL#_dryad_G0, SL#_dryad_G1));
        // _dryad_G1 := @_vcc_oset_union(_dryad_G0, @_vcc_oset_singleton(new_list)); 
        SL#_dryad_G1 := $oset_union(SL#_dryad_G0, $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
        // _math \oset stmtexpr1#15; 
        // stmtexpr1#15 := _dryad_G1; 
        stmtexpr1#15 := SL#_dryad_G1;
        // assume ==(glob_reach(), _dryad_G1); 
        assume F#glob_reach() == SL#_dryad_G1;
        // _math \state _dryad_S1; 
        // _dryad_S1 := @_vcc_current_state(@state); 
        SL#_dryad_S1 := $current_state($s);
        // _math \state stmtexpr2#16; 
        // stmtexpr2#16 := _dryad_S1; 
        stmtexpr2#16 := SL#_dryad_S1;
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(last)))), ==(old(_dryad_S0, sll_keys(last)), old(_dryad_S1, sll_keys(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(last)))), ==(old(_dryad_S0, sll_list_len_next(last)), old(_dryad_S1, sll_list_len_next(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(last)))), ==(old(_dryad_S0, sll(last)), old(_dryad_S1, sll(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(last)))), ==(old(_dryad_S0, sll_reach(last)), old(_dryad_S1, sll_reach(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(local.list)))), ==(old(_dryad_S0, sll_keys(local.list)), old(_dryad_S1, sll_keys(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(local.list)))), ==(old(_dryad_S0, sll_list_len_next(local.list)), old(_dryad_S1, sll_list_len_next(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(local.list)))), ==(old(_dryad_S0, sll(local.list)), old(_dryad_S1, sll(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S0, sll_reach(local.list)))), ==(old(_dryad_S0, sll_reach(local.list)), old(_dryad_S1, sll_reach(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(local.list, ^s_node));
        // assume @_vcc_ptr_neq_null(new_list); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node));
        // assume unchecked!(@_vcc_oset_in(new_list, ALL_REACH)); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), SL#ALL_REACH);
        // ALL_REACH := @_vcc_oset_union(ALL_REACH, @_vcc_oset_singleton(new_list)); 
        SL#ALL_REACH := $oset_union(SL#ALL_REACH, $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
        // struct s_node* list0; 
        // list0 := local.list; 
        SL#list0 := $phys_ptr_cast(local.list, ^s_node);
        // struct s_node* stmtexpr3#17; 
        // stmtexpr3#17 := list0; 
        stmtexpr3#17 := $phys_ptr_cast(SL#list0, ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // assert @reads_check_normal((local.list->key)); 
        assert $thread_local($s, $phys_ptr_cast(local.list, ^s_node));
        // list_key := *((local.list->key)); 
        L#list_key := $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // _math \state _dryad_S2; 
        // _dryad_S2 := @_vcc_current_state(@state); 
        SL#_dryad_S2 := $current_state($s);
        // _math \state stmtexpr4#18; 
        // stmtexpr4#18 := _dryad_S2; 
        stmtexpr4#18 := SL#_dryad_S2;
        // assert @prim_writes_check((new_list->key)); 
        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#new_list, ^s_node), s_node.key));
        // *(new_list->key) := list_key; 
        call $write_int(s_node.key, $phys_ptr_cast(L#new_list, ^s_node), L#list_key);
        assume $full_stop_ext(#tok$3^23.3, $s);
        // _math \state _dryad_S3; 
        // _dryad_S3 := @_vcc_current_state(@state); 
        SL#_dryad_S3 := $current_state($s);
        // _math \state stmtexpr5#19; 
        // stmtexpr5#19 := _dryad_S3; 
        stmtexpr5#19 := SL#_dryad_S3;
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(*((new_list->next)))))), ==(old(_dryad_S2, sll_keys(*((new_list->next)))), old(_dryad_S3, sll_keys(*((new_list->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) == F#sll_keys(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(*((new_list->next)))))), ==(old(_dryad_S2, sll_list_len_next(*((new_list->next)))), old(_dryad_S3, sll_list_len_next(*((new_list->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(*((new_list->next)))))), ==(old(_dryad_S2, sll(*((new_list->next)))), old(_dryad_S3, sll(*((new_list->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))) ==> F#sll(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) == F#sll(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(*((new_list->next)))))), ==(old(_dryad_S2, sll_reach(*((new_list->next)))), old(_dryad_S3, sll_reach(*((new_list->next)))))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) == F#sll_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(list0)), old(_dryad_S3, sll_list_len_next(list0))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==(old(_dryad_S2, sll(list0)), old(_dryad_S3, sll(list0))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(list0)), old(_dryad_S3, sll_reach(list0))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(last)), old(_dryad_S3, sll_list_len_next(last))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#last, ^s_node));
        // assume ==(old(_dryad_S2, sll(last)), old(_dryad_S3, sll(last))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#last, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(last)), old(_dryad_S3, sll_reach(last))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#last, ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(new_list)), old(_dryad_S3, sll_list_len_next(new_list))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#new_list, ^s_node));
        // assume ==(old(_dryad_S2, sll(new_list)), old(_dryad_S3, sll(new_list))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#new_list, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(new_list)), old(_dryad_S3, sll_reach(new_list))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#new_list, ^s_node));
        // assume ==(old(_dryad_S2, sll_list_len_next(local.list)), old(_dryad_S3, sll_list_len_next(local.list))); 
        assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==(old(_dryad_S2, sll(local.list)), old(_dryad_S3, sll(local.list))); 
        assume F#sll(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==(old(_dryad_S2, sll_reach(local.list)), old(_dryad_S3, sll_reach(local.list))); 
        assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(list0)))), ==(old(_dryad_S2, sll_keys(list0)), old(_dryad_S3, sll_keys(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(list0)))), ==(old(_dryad_S2, sll_list_len_next(list0)), old(_dryad_S3, sll_list_len_next(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(list0)))), ==(old(_dryad_S2, sll(list0)), old(_dryad_S3, sll(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(list0)))), ==(old(_dryad_S2, sll_reach(list0)), old(_dryad_S3, sll_reach(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(last)))), ==(old(_dryad_S2, sll_keys(last)), old(_dryad_S3, sll_keys(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(last)))), ==(old(_dryad_S2, sll_list_len_next(last)), old(_dryad_S3, sll_list_len_next(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(last)))), ==(old(_dryad_S2, sll(last)), old(_dryad_S3, sll(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(last)))), ==(old(_dryad_S2, sll_reach(last)), old(_dryad_S3, sll_reach(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(local.list)))), ==(old(_dryad_S2, sll_keys(local.list)), old(_dryad_S3, sll_keys(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(local.list)))), ==(old(_dryad_S2, sll_list_len_next(local.list)), old(_dryad_S3, sll_list_len_next(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(local.list)))), ==(old(_dryad_S2, sll(local.list)), old(_dryad_S3, sll(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S2, sll_reach(local.list)))), ==(old(_dryad_S2, sll_reach(local.list)), old(_dryad_S3, sll_reach(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, list0)), ==(*((list0->key)), old(_dryad_S2, *((list0->key))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, list0)), @_vcc_ptr_eq_pure(*((list0->next)), old(_dryad_S2, *((list0->next))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, last)), ==(*((last->key)), old(_dryad_S2, *((last->key))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, last)), @_vcc_ptr_eq_pure(*((last->next)), old(_dryad_S2, *((last->next))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, local.list)), ==(*((local.list->key)), old(_dryad_S2, *((local.list->key))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, local.list)), @_vcc_ptr_eq_pure(*((local.list->next)), old(_dryad_S2, *((local.list->next))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
        // _math \state _dryad_S4; 
        // _dryad_S4 := @_vcc_current_state(@state); 
        SL#_dryad_S4 := $current_state($s);
        // _math \state stmtexpr6#20; 
        // stmtexpr6#20 := _dryad_S4; 
        stmtexpr6#20 := SL#_dryad_S4;
        // assert @prim_writes_check((new_list->next)); 
        assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#new_list, ^s_node), s_node.next));
        // *(new_list->next) := (struct s_node*)@null; 
        call $write_int(s_node.next, $phys_ptr_cast(L#new_list, ^s_node), $ptr_to_int($phys_ptr_cast($null, ^s_node)));
        assume $full_stop_ext(#tok$3^24.3, $s);
        // _math \state _dryad_S5; 
        // _dryad_S5 := @_vcc_current_state(@state); 
        SL#_dryad_S5 := $current_state($s);
        // _math \state stmtexpr7#21; 
        // stmtexpr7#21 := _dryad_S5; 
        stmtexpr7#21 := SL#_dryad_S5;
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(list0)))), ==(old(_dryad_S4, sll_keys(list0)), old(_dryad_S5, sll_keys(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(list0)))), ==(old(_dryad_S4, sll_list_len_next(list0)), old(_dryad_S5, sll_list_len_next(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(list0)))), ==(old(_dryad_S4, sll(list0)), old(_dryad_S5, sll(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(list0)))), ==(old(_dryad_S4, sll_reach(list0)), old(_dryad_S5, sll_reach(list0)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(last)))), ==(old(_dryad_S4, sll_keys(last)), old(_dryad_S5, sll_keys(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(last)))), ==(old(_dryad_S4, sll_list_len_next(last)), old(_dryad_S5, sll_list_len_next(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(last)))), ==(old(_dryad_S4, sll(last)), old(_dryad_S5, sll(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(last)))), ==(old(_dryad_S4, sll_reach(last)), old(_dryad_S5, sll_reach(last)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(local.list)))), ==(old(_dryad_S4, sll_keys(local.list)), old(_dryad_S5, sll_keys(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(local.list)))), ==(old(_dryad_S4, sll_list_len_next(local.list)), old(_dryad_S5, sll_list_len_next(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(local.list)))), ==(old(_dryad_S4, sll(local.list)), old(_dryad_S5, sll(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(unchecked!(@_vcc_oset_in(new_list, old(_dryad_S4, sll_reach(local.list)))), ==(old(_dryad_S4, sll_reach(local.list)), old(_dryad_S5, sll_reach(local.list)))); 
        assume !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, list0)), ==(*((list0->key)), old(_dryad_S4, *((list0->key))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(SL#list0, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, list0)), @_vcc_ptr_eq_pure(*((list0->next)), old(_dryad_S4, *((list0->next))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, last)), ==(*((last->key)), old(_dryad_S4, *((last->key))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(L#last, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, last)), @_vcc_ptr_eq_pure(*((last->next)), old(_dryad_S4, *((last->next))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node);
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, local.list)), ==(*((local.list->key)), old(_dryad_S4, *((local.list->key))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(!(@_vcc_ptr_eq_pure(new_list, local.list)), @_vcc_ptr_eq_pure(*((local.list->next)), old(_dryad_S4, *((local.list->next))))); 
        assume !($phys_ptr_cast(L#new_list, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
        // last := new_list; 
        L#last := $phys_ptr_cast(L#new_list, ^s_node);
        // assert sll_lseg(list0, list0); 
        assert F#sll_lseg($s, $phys_ptr_cast(SL#list0, ^s_node), $phys_ptr_cast(SL#list0, ^s_node));
        // assume sll_lseg(list0, list0); 
        assume F#sll_lseg($s, $phys_ptr_cast(SL#list0, ^s_node), $phys_ptr_cast(SL#list0, ^s_node));
        // assert sll_lseg(last, last); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#last, ^s_node), $phys_ptr_cast(L#last, ^s_node));
        // assume sll_lseg(last, last); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#last, ^s_node), $phys_ptr_cast(L#last, ^s_node));
        // assert sll_lseg(new_list, new_list); 
        assert F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#new_list, ^s_node));
        // assume sll_lseg(new_list, new_list); 
        assume F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#new_list, ^s_node));
        // assert sll_lseg(local.list, local.list); 
        assert F#sll_lseg($s, $phys_ptr_cast(local.list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
        // assume sll_lseg(local.list, local.list); 
        assume F#sll_lseg($s, $phys_ptr_cast(local.list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(local.list), &&(@_vcc_mutable(@state, local.list), @writes_check(local.list))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(local.list, ^s_node));
        // struct s_node* list3; 
        // list3 := local.list; 
        SL#list3 := $phys_ptr_cast(local.list, ^s_node);
        // struct s_node* stmtexpr8#22; 
        // stmtexpr8#22 := list3; 
        stmtexpr8#22 := $phys_ptr_cast(SL#list3, ^s_node);
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
        // assume ==>(@_vcc_ptr_neq_null(local.list), &&(@_vcc_mutable(@state, local.list), @writes_check(local.list))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(last), &&(@_vcc_mutable(@state, last), @writes_check(last))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#last, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#last, ^s_node));
        loopState#0 := $s;
        assume true;
p0000 := (F#sll($s,$phys_ptr_cast(P#list,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#new_list,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(L#last,^s_node)));
p0003 := (F#sll($s,$phys_ptr_cast(local.list,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)));
p0009 := (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0010 := (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0011 := (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)));
p0012 := (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0013 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0014 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)));
p0015 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)));
p0016 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0017 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0018 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0019 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0020 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0021 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0022 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0023 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0024 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0025 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0026 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0027 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0028 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0029 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0030 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0031 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0032 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0033 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0034 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0035 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0036 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0037 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0038 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0039 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0040 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0041 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0042 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0043 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0044 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0045 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0046 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0047 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0048 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0049 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0050 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0051 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0052 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0053 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0054 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0055 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0056 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0057 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0058 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0059 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0060 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0061 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0062 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0063 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0100 := ($non_null($phys_ptr_cast(P#list,^s_node)));
p0101 := ($non_null($phys_ptr_cast(L#new_list,^s_node)));
p0102 := ($non_null($phys_ptr_cast(L#last,^s_node)));
p0103 := ($non_null($phys_ptr_cast(local.list,^s_node)));
p0104 := ($is_null($phys_ptr_cast(P#list,^s_node)));
p0105 := ($is_null($phys_ptr_cast(L#new_list,^s_node)));
p0106 := ($is_null($phys_ptr_cast(L#last,^s_node)));
p0107 := ($is_null($phys_ptr_cast(local.list,^s_node)));
p0108 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)));
p0109 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node)));
p0110 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0111 := (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0112 := (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node)));
p0113 := (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0114 := (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0115 := (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node)));
p0116 := (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0117 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0118 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)));
p0119 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node)));
p0120 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0121 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node))));
p0122 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node))));
p0123 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0124 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0125 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node))));
p0126 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node))));
p0127 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0128 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0129 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0130 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0131 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0132 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0133 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0134 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0135 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0136 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0137 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0138 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0139 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0164 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0165 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0166 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0167 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0168 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0169 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0170 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0171 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0172 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0173 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0174 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0175 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0176 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0177 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0178 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0179 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0180 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0181 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0182 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0183 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0184 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0185 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0186 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0187 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));

        while (true)

invariant (p0000 == (F#sll($s,$phys_ptr_cast(P#list,^s_node))));
invariant (p0001 == (F#sll($s,$phys_ptr_cast(L#new_list,^s_node))));
invariant (p0002 == (F#sll($s,$phys_ptr_cast(L#last,^s_node))));
invariant (p0003 == (F#sll($s,$phys_ptr_cast(local.list,^s_node))));
invariant (p0004 == (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
invariant (p0005 == (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))));
invariant (p0006 == (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
invariant (p0007 == (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
invariant (p0008 == (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))));
invariant (p0009 == (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
invariant (p0010 == (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))));
invariant (p0011 == (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
invariant (p0012 == (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))));
invariant (p0013 == (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
invariant (p0014 == (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
invariant (p0015 == (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))));
invariant (p0016 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0027 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0028 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0029 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0030 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0031 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0032 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0033 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0034 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0035 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0036 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0037 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0038 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0039 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0040 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0041 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0042 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0043 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0044 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0045 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0046 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0047 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0048 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0049 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0050 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0051 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0052 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0053 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0054 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0055 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0056 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0057 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0058 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0059 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0060 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0061 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0062 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0063 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0064 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0065 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0066 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0067 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0068 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0069 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0070 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0071 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0072 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0073 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0074 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0075 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)))));
invariant (p0076 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)))));
invariant (p0077 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0078 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0079 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0080 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0081 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)))));
invariant (p0082 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)))));
invariant (p0083 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0084 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0085 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0086 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0087 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)))));
invariant (p0088 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0089 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0090 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0091 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0092 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0093 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0094 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0095 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)))));
invariant (p0096 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0097 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)))));
invariant (p0098 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0099 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0100 == ($non_null($phys_ptr_cast(P#list,^s_node))));
invariant (p0101 == ($non_null($phys_ptr_cast(L#new_list,^s_node))));
invariant (p0102 == ($non_null($phys_ptr_cast(L#last,^s_node))));
invariant (p0103 == ($non_null($phys_ptr_cast(local.list,^s_node))));
invariant (p0104 == ($is_null($phys_ptr_cast(P#list,^s_node))));
invariant (p0105 == ($is_null($phys_ptr_cast(L#new_list,^s_node))));
invariant (p0106 == ($is_null($phys_ptr_cast(L#last,^s_node))));
invariant (p0107 == ($is_null($phys_ptr_cast(local.list,^s_node))));
invariant (p0108 == (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
invariant (p0109 == (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
invariant (p0110 == (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
invariant (p0111 == (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
invariant (p0112 == (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
invariant (p0113 == (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
invariant (p0114 == (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node))));
invariant (p0115 == (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
invariant (p0116 == (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node))));
invariant (p0117 == (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
invariant (p0118 == (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
invariant (p0119 == (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
invariant (p0120 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node)))));
invariant (p0121 == (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node)))));
invariant (p0122 == (($non_null($phys_ptr_cast(L#last,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node)))));
invariant (p0123 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node)))));
invariant (p0124 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node)))));
invariant (p0125 == (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node)))));
invariant (p0126 == (($non_null($phys_ptr_cast(L#last,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node)))));
invariant (p0127 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node)))));
invariant (p0128 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0129 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0130 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0131 == (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0132 == (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0133 == (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0134 == (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0135 == (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0136 == (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0137 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0138 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0139 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0140 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)))))));
invariant (p0141 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0142 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)))))));
invariant (p0143 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0144 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))))));
invariant (p0145 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)))))));
invariant (p0146 == ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)))))));
invariant (p0147 == ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0148 == ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0149 == ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0150 == ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0151 == ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)))))));
invariant (p0152 == ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))))));
invariant (p0153 == ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0154 == ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0155 == ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0156 == ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0157 == ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))))));
invariant (p0158 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)))))));
invariant (p0159 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)))))));
invariant (p0160 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0161 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)))))));
invariant (p0162 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0163 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)))))));
invariant (p0164 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0165 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0166 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0167 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0168 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0169 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0170 == (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0171 == (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0172 == (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0173 == (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0174 == (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0175 == (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0176 == (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0177 == (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0178 == (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0179 == (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0180 == (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0181 == (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0182 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));
invariant (p0183 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0184 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0185 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node)))));
invariant (p0186 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0187 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node)))));

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

          invariant $oset_subset(F#sll_reach($s, $phys_ptr_cast(P#list, ^s_node)), SL#ALL_REACH);
          invariant $oset_subset(F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)), SL#ALL_REACH);
          invariant $oset_subset(F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)), SL#ALL_REACH);
          invariant $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node));
          invariant $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(local.list, ^s_node));
          invariant $non_null($phys_ptr_cast(L#last, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#last, ^s_node));
          invariant $non_null($phys_ptr_cast(L#last, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#last, ^s_node));
        {
          anon3:
            assume $writes_nothing(old($s), $s);
            assume $timestamp_post(loopState#0, $s);
            assume $full_stop_ext(#tok$3^33.3, $s);
            // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
            assume $meta_eq(loopState#0, $s);
            assume true;
            // if (@_vcc_ptr_neq_null(local.list)) ...
            if ($non_null($phys_ptr_cast(local.list, ^s_node)))
            {
              anon1:
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_keys(list3), @_vcc_intset_union(sll_keys(*((list3->next))), @_vcc_intset_singleton(*((list3->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_list_len_next(list3), unchecked+(sll_list_len_next(*((list3->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll(list3), &&(sll(*((list3->next))), unchecked!(@_vcc_oset_in(list3, sll_reach(*((list3->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_reach(list3), @_vcc_oset_union(sll_reach(*((list3->next))), @_vcc_oset_singleton(list3)))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list3, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg(new_list, last), &&(sll_lseg(*((new_list->next)), last), unchecked!(@_vcc_oset_in(new_list, sll_lseg_reach(*((new_list->next)), last)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_reach(new_list, last), @_vcc_oset_union(sll_lseg_reach(*((new_list->next)), last), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_keys(new_list, last), @_vcc_intset_union(sll_lseg_keys(*((new_list->next)), last), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_len_next(new_list, last), unchecked+(sll_lseg_len_next(*((new_list->next)), last), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // int32_t list_key#0; 
                // struct s_node* tail; 
                // _math \state _dryad_S6; 
                // _dryad_S6 := @_vcc_current_state(@state); 
                SL#_dryad_S6 := $current_state($s);
                // _math \state stmtexpr0#2; 
                // stmtexpr0#2 := _dryad_S6; 
                stmtexpr0#2 := SL#_dryad_S6;
                // tail := _vcc_alloc(@_vcc_typeof((struct s_node*)@null)); 
                call L#tail := $alloc(^s_node);
                assume $full_stop_ext(#tok$3^49.18, $s);
                // assume !(@_vcc_oset_in(tail, @_vcc_oset_union(_dryad_G0, _dryad_G1))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), $oset_union(SL#_dryad_G0, SL#_dryad_G1));
                // _dryad_G1 := @_vcc_oset_union(_dryad_G0, @_vcc_oset_singleton(tail)); 
                SL#_dryad_G1 := $oset_union(SL#_dryad_G0, $oset_singleton($phys_ptr_cast(L#tail, ^s_node)));
                // _math \oset stmtexpr1#3; 
                // stmtexpr1#3 := _dryad_G1; 
                stmtexpr1#3 := SL#_dryad_G1;
                // assume ==(glob_reach(), _dryad_G1); 
                assume F#glob_reach() == SL#_dryad_G1;
                // _math \state _dryad_S7; 
                // _dryad_S7 := @_vcc_current_state(@state); 
                SL#_dryad_S7 := $current_state($s);
                // _math \state stmtexpr2#4; 
                // stmtexpr2#4 := _dryad_S7; 
                stmtexpr2#4 := SL#_dryad_S7;
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_keys(tail), @_vcc_intset_union(sll_keys(*((tail->next))), @_vcc_intset_singleton(*((tail->key)))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tail, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tail, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_list_len_next(tail), unchecked+(sll_list_len_next(*((tail->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#tail, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll(tail), &&(sll(*((tail->next))), unchecked!(@_vcc_oset_in(tail, sll_reach(*((tail->next)))))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tail, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_reach(tail), @_vcc_oset_union(sll_reach(*((tail->next))), @_vcc_oset_singleton(tail)))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tail, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#tail, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_keys(list3), @_vcc_intset_union(sll_keys(*((list3->next))), @_vcc_intset_singleton(*((list3->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_list_len_next(list3), unchecked+(sll_list_len_next(*((list3->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll(list3), &&(sll(*((list3->next))), unchecked!(@_vcc_oset_in(list3, sll_reach(*((list3->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_reach(list3), @_vcc_oset_union(sll_reach(*((list3->next))), @_vcc_oset_singleton(list3)))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list3, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg(new_list, last), &&(sll_lseg(*((new_list->next)), last), unchecked!(@_vcc_oset_in(new_list, sll_lseg_reach(*((new_list->next)), last)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_reach(new_list, last), @_vcc_oset_union(sll_lseg_reach(*((new_list->next)), last), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_keys(new_list, last), @_vcc_intset_union(sll_lseg_keys(*((new_list->next)), last), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_len_next(new_list, last), unchecked+(sll_lseg_len_next(*((new_list->next)), last), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list3)))), ==(old(_dryad_S6, sll_keys(list3)), old(_dryad_S7, sll_keys(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list3)))), ==(old(_dryad_S6, sll_list_len_next(list3)), old(_dryad_S7, sll_list_len_next(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list3)))), ==(old(_dryad_S6, sll(list3)), old(_dryad_S7, sll(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list3)))), ==(old(_dryad_S6, sll_reach(list3)), old(_dryad_S7, sll_reach(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list0)))), ==(old(_dryad_S6, sll_keys(list0)), old(_dryad_S7, sll_keys(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list0)))), ==(old(_dryad_S6, sll_list_len_next(list0)), old(_dryad_S7, sll_list_len_next(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list0)))), ==(old(_dryad_S6, sll(list0)), old(_dryad_S7, sll(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(list0)))), ==(old(_dryad_S6, sll_reach(list0)), old(_dryad_S7, sll_reach(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(last)))), ==(old(_dryad_S6, sll_keys(last)), old(_dryad_S7, sll_keys(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(last)))), ==(old(_dryad_S6, sll_list_len_next(last)), old(_dryad_S7, sll_list_len_next(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(last)))), ==(old(_dryad_S6, sll(last)), old(_dryad_S7, sll(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(last)))), ==(old(_dryad_S6, sll_reach(last)), old(_dryad_S7, sll_reach(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(new_list)))), ==(old(_dryad_S6, sll_keys(new_list)), old(_dryad_S7, sll_keys(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(new_list)))), ==(old(_dryad_S6, sll_list_len_next(new_list)), old(_dryad_S7, sll_list_len_next(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(new_list)))), ==(old(_dryad_S6, sll(new_list)), old(_dryad_S7, sll(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(new_list)))), ==(old(_dryad_S6, sll_reach(new_list)), old(_dryad_S7, sll_reach(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(local.list)))), ==(old(_dryad_S6, sll_keys(local.list)), old(_dryad_S7, sll_keys(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(local.list)))), ==(old(_dryad_S6, sll_list_len_next(local.list)), old(_dryad_S7, sll_list_len_next(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(local.list)))), ==(old(_dryad_S6, sll(local.list)), old(_dryad_S7, sll(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_reach(local.list)))), ==(old(_dryad_S6, sll_reach(local.list)), old(_dryad_S7, sll_reach(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S6, sll_lseg(new_list, last)), old(_dryad_S7, sll_lseg(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S6, sll_lseg_reach(new_list, last)), old(_dryad_S7, sll_lseg_reach(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S6, sll_lseg_keys(new_list, last)), old(_dryad_S7, sll_lseg_keys(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S6, sll_lseg_len_next(new_list, last)), old(_dryad_S7, sll_lseg_len_next(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S6, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S7, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S6, sll_lseg(list, local.list)), old(_dryad_S7, sll_lseg(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg(SL#_dryad_S7, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S6, sll_lseg_reach(list, local.list)), old(_dryad_S7, sll_lseg_reach(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S6, sll_lseg_keys(list, local.list)), old(_dryad_S7, sll_lseg_keys(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S7, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S6, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S6, sll_lseg_len_next(list, local.list)), old(_dryad_S7, sll_lseg_len_next(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S6, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S7, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume @_vcc_ptr_neq_null(tail); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node));
                // assume unchecked!(@_vcc_oset_in(tail, ALL_REACH)); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), SL#ALL_REACH);
                // ALL_REACH := @_vcc_oset_union(ALL_REACH, @_vcc_oset_singleton(tail)); 
                SL#ALL_REACH := $oset_union(SL#ALL_REACH, $oset_singleton($phys_ptr_cast(L#tail, ^s_node)));
                // struct s_node* list4; 
                // list4 := local.list; 
                SL#list4 := $phys_ptr_cast(local.list, ^s_node);
                // struct s_node* stmtexpr3#5; 
                // stmtexpr3#5 := list4; 
                stmtexpr3#5 := $phys_ptr_cast(SL#list4, ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
                // assert @reads_check_normal((local.list->key)); 
                assert $thread_local($s, $phys_ptr_cast(local.list, ^s_node));
                // list_key#0 := *((local.list->key)); 
                list_key#0 := $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
                // _math \state _dryad_S8; 
                // _dryad_S8 := @_vcc_current_state(@state); 
                SL#_dryad_S8 := $current_state($s);
                // _math \state stmtexpr4#6; 
                // stmtexpr4#6 := _dryad_S8; 
                stmtexpr4#6 := SL#_dryad_S8;
                // assert @prim_writes_check((tail->key)); 
                assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#tail, ^s_node), s_node.key));
                // *(tail->key) := list_key#0; 
                call $write_int(s_node.key, $phys_ptr_cast(L#tail, ^s_node), list_key#0);
                assume $full_stop_ext(#tok$3^55.5, $s);
                // _math \state _dryad_S9; 
                // _dryad_S9 := @_vcc_current_state(@state); 
                SL#_dryad_S9 := $current_state($s);
                // _math \state stmtexpr5#7; 
                // stmtexpr5#7 := _dryad_S9; 
                stmtexpr5#7 := SL#_dryad_S9;
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(*((tail->next)))))), ==(old(_dryad_S8, sll_keys(*((tail->next)))), old(_dryad_S9, sll_keys(*((tail->next)))))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) == F#sll_keys(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(*((tail->next)))))), ==(old(_dryad_S8, sll_list_len_next(*((tail->next)))), old(_dryad_S9, sll_list_len_next(*((tail->next)))))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(*((tail->next)))))), ==(old(_dryad_S8, sll(*((tail->next)))), old(_dryad_S9, sll(*((tail->next)))))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))) ==> F#sll(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) == F#sll(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(*((tail->next)))))), ==(old(_dryad_S8, sll_reach(*((tail->next)))), old(_dryad_S9, sll_reach(*((tail->next)))))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) == F#sll_reach(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node));
                // assume ==(old(_dryad_S8, sll_list_len_next(list4)), old(_dryad_S9, sll_list_len_next(list4))); 
                assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==(old(_dryad_S8, sll(list4)), old(_dryad_S9, sll(list4))); 
                assume F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==(old(_dryad_S8, sll_reach(list4)), old(_dryad_S9, sll_reach(list4))); 
                assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==(old(_dryad_S8, sll_list_len_next(tail)), old(_dryad_S9, sll_list_len_next(tail))); 
                assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#tail, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==(old(_dryad_S8, sll(tail)), old(_dryad_S9, sll(tail))); 
                assume F#sll(SL#_dryad_S8, $phys_ptr_cast(L#tail, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==(old(_dryad_S8, sll_reach(tail)), old(_dryad_S9, sll_reach(tail))); 
                assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#tail, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==(old(_dryad_S8, sll_list_len_next(list3)), old(_dryad_S9, sll_list_len_next(list3))); 
                assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==(old(_dryad_S8, sll(list3)), old(_dryad_S9, sll(list3))); 
                assume F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==(old(_dryad_S8, sll_reach(list3)), old(_dryad_S9, sll_reach(list3))); 
                assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==(old(_dryad_S8, sll_list_len_next(list0)), old(_dryad_S9, sll_list_len_next(list0))); 
                assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==(old(_dryad_S8, sll(list0)), old(_dryad_S9, sll(list0))); 
                assume F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==(old(_dryad_S8, sll_reach(list0)), old(_dryad_S9, sll_reach(list0))); 
                assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==(old(_dryad_S8, sll_list_len_next(last)), old(_dryad_S9, sll_list_len_next(last))); 
                assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#last, ^s_node));
                // assume ==(old(_dryad_S8, sll(last)), old(_dryad_S9, sll(last))); 
                assume F#sll(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#last, ^s_node));
                // assume ==(old(_dryad_S8, sll_reach(last)), old(_dryad_S9, sll_reach(last))); 
                assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#last, ^s_node));
                // assume ==(old(_dryad_S8, sll_list_len_next(new_list)), old(_dryad_S9, sll_list_len_next(new_list))); 
                assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==(old(_dryad_S8, sll(new_list)), old(_dryad_S9, sll(new_list))); 
                assume F#sll(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==(old(_dryad_S8, sll_reach(new_list)), old(_dryad_S9, sll_reach(new_list))); 
                assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==(old(_dryad_S8, sll_list_len_next(local.list)), old(_dryad_S9, sll_list_len_next(local.list))); 
                assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(local.list, ^s_node));
                // assume ==(old(_dryad_S8, sll(local.list)), old(_dryad_S9, sll(local.list))); 
                assume F#sll(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(local.list, ^s_node));
                // assume ==(old(_dryad_S8, sll_reach(local.list)), old(_dryad_S9, sll_reach(local.list))); 
                assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list4)))), ==(old(_dryad_S8, sll_keys(list4)), old(_dryad_S9, sll_keys(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list4)))), ==(old(_dryad_S8, sll_list_len_next(list4)), old(_dryad_S9, sll_list_len_next(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list4)))), ==(old(_dryad_S8, sll(list4)), old(_dryad_S9, sll(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list4)))), ==(old(_dryad_S8, sll_reach(list4)), old(_dryad_S9, sll_reach(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list3)))), ==(old(_dryad_S8, sll_keys(list3)), old(_dryad_S9, sll_keys(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list3)))), ==(old(_dryad_S8, sll_list_len_next(list3)), old(_dryad_S9, sll_list_len_next(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list3)))), ==(old(_dryad_S8, sll(list3)), old(_dryad_S9, sll(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list3)))), ==(old(_dryad_S8, sll_reach(list3)), old(_dryad_S9, sll_reach(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list0)))), ==(old(_dryad_S8, sll_keys(list0)), old(_dryad_S9, sll_keys(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list0)))), ==(old(_dryad_S8, sll_list_len_next(list0)), old(_dryad_S9, sll_list_len_next(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list0)))), ==(old(_dryad_S8, sll(list0)), old(_dryad_S9, sll(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(list0)))), ==(old(_dryad_S8, sll_reach(list0)), old(_dryad_S9, sll_reach(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(last)))), ==(old(_dryad_S8, sll_keys(last)), old(_dryad_S9, sll_keys(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(last)))), ==(old(_dryad_S8, sll_list_len_next(last)), old(_dryad_S9, sll_list_len_next(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(last)))), ==(old(_dryad_S8, sll(last)), old(_dryad_S9, sll(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(last)))), ==(old(_dryad_S8, sll_reach(last)), old(_dryad_S9, sll_reach(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(new_list)))), ==(old(_dryad_S8, sll_keys(new_list)), old(_dryad_S9, sll_keys(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(new_list)))), ==(old(_dryad_S8, sll_list_len_next(new_list)), old(_dryad_S9, sll_list_len_next(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(new_list)))), ==(old(_dryad_S8, sll(new_list)), old(_dryad_S9, sll(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(new_list)))), ==(old(_dryad_S8, sll_reach(new_list)), old(_dryad_S9, sll_reach(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(local.list)))), ==(old(_dryad_S8, sll_keys(local.list)), old(_dryad_S9, sll_keys(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(local.list)))), ==(old(_dryad_S8, sll_list_len_next(local.list)), old(_dryad_S9, sll_list_len_next(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(local.list)))), ==(old(_dryad_S8, sll(local.list)), old(_dryad_S9, sll(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_reach(local.list)))), ==(old(_dryad_S8, sll_reach(local.list)), old(_dryad_S9, sll_reach(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S8, sll_lseg(new_list, last)), old(_dryad_S9, sll_lseg(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S8, sll_lseg_reach(new_list, last)), old(_dryad_S9, sll_lseg_reach(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S8, sll_lseg_keys(new_list, last)), old(_dryad_S9, sll_lseg_keys(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S8, sll_lseg_len_next(new_list, last)), old(_dryad_S9, sll_lseg_len_next(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S8, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S9, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg(list, local.list)), old(_dryad_S9, sll_lseg(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg_reach(list, local.list)), old(_dryad_S9, sll_lseg_reach(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg_keys(list, local.list)), old(_dryad_S9, sll_lseg_keys(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg_len_next(list, local.list)), old(_dryad_S9, sll_lseg_len_next(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg(list, local.list)), old(_dryad_S9, sll_lseg(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg_reach(list, local.list)), old(_dryad_S9, sll_lseg_reach(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg_keys(list, local.list)), old(_dryad_S9, sll_lseg_keys(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S8, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S8, sll_lseg_len_next(list, local.list)), old(_dryad_S9, sll_lseg_len_next(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S8, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S9, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list4)), ==(*((list4->key)), old(_dryad_S8, *((list4->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list4, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list4, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list4)), @_vcc_ptr_eq_pure(*((list4->next)), old(_dryad_S8, *((list4->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list4, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list3)), ==(*((list3->key)), old(_dryad_S8, *((list3->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list3, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list3)), @_vcc_ptr_eq_pure(*((list3->next)), old(_dryad_S8, *((list3->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list3, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list0)), ==(*((list0->key)), old(_dryad_S8, *((list0->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list0)), @_vcc_ptr_eq_pure(*((list0->next)), old(_dryad_S8, *((list0->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, last)), ==(*((last->key)), old(_dryad_S8, *((last->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, last)), @_vcc_ptr_eq_pure(*((last->next)), old(_dryad_S8, *((last->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, new_list)), ==(*((new_list->key)), old(_dryad_S8, *((new_list->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#new_list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, new_list)), @_vcc_ptr_eq_pure(*((new_list->next)), old(_dryad_S8, *((new_list->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#new_list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, local.list)), ==(*((local.list->key)), old(_dryad_S8, *((local.list->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, local.list)), @_vcc_ptr_eq_pure(*((local.list->next)), old(_dryad_S8, *((local.list->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_keys(list4), @_vcc_intset_union(sll_keys(*((list4->next))), @_vcc_intset_singleton(*((list4->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list4, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list4, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_list_len_next(list4), unchecked+(sll_list_len_next(*((list4->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list4, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll(list4), &&(sll(*((list4->next))), unchecked!(@_vcc_oset_in(list4, sll_reach(*((list4->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list4, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list4, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_reach(list4), @_vcc_oset_union(sll_reach(*((list4->next))), @_vcc_oset_singleton(list4)))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list4, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list4, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_keys(list3), @_vcc_intset_union(sll_keys(*((list3->next))), @_vcc_intset_singleton(*((list3->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_list_len_next(list3), unchecked+(sll_list_len_next(*((list3->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll(list3), &&(sll(*((list3->next))), unchecked!(@_vcc_oset_in(list3, sll_reach(*((list3->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_reach(list3), @_vcc_oset_union(sll_reach(*((list3->next))), @_vcc_oset_singleton(list3)))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list3, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_keys(tail), @_vcc_intset_union(sll_keys(*((tail->next))), @_vcc_intset_singleton(*((tail->key)))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tail, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tail, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg(new_list, last), &&(sll_lseg(*((new_list->next)), last), unchecked!(@_vcc_oset_in(new_list, sll_lseg_reach(*((new_list->next)), last)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_reach(new_list, last), @_vcc_oset_union(sll_lseg_reach(*((new_list->next)), last), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_keys(new_list, last), @_vcc_intset_union(sll_lseg_keys(*((new_list->next)), last), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_len_next(new_list, last), unchecked+(sll_lseg_len_next(*((new_list->next)), last), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // _math \state _dryad_S10; 
                // _dryad_S10 := @_vcc_current_state(@state); 
                SL#_dryad_S10 := $current_state($s);
                // _math \state stmtexpr6#8; 
                // stmtexpr6#8 := _dryad_S10; 
                stmtexpr6#8 := SL#_dryad_S10;
                // assert @prim_writes_check((tail->next)); 
                assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#tail, ^s_node), s_node.next));
                // *(tail->next) := (struct s_node*)@null; 
                call $write_int(s_node.next, $phys_ptr_cast(L#tail, ^s_node), $ptr_to_int($phys_ptr_cast($null, ^s_node)));
                assume $full_stop_ext(#tok$3^56.4, $s);
                // _math \state _dryad_S11; 
                // _dryad_S11 := @_vcc_current_state(@state); 
                SL#_dryad_S11 := $current_state($s);
                // _math \state stmtexpr7#9; 
                // stmtexpr7#9 := _dryad_S11; 
                stmtexpr7#9 := SL#_dryad_S11;
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list4)))), ==(old(_dryad_S10, sll_keys(list4)), old(_dryad_S11, sll_keys(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list4)))), ==(old(_dryad_S10, sll_list_len_next(list4)), old(_dryad_S11, sll_list_len_next(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list4)))), ==(old(_dryad_S10, sll(list4)), old(_dryad_S11, sll(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list4)))), ==(old(_dryad_S10, sll_reach(list4)), old(_dryad_S11, sll_reach(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list3)))), ==(old(_dryad_S10, sll_keys(list3)), old(_dryad_S11, sll_keys(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list3)))), ==(old(_dryad_S10, sll_list_len_next(list3)), old(_dryad_S11, sll_list_len_next(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list3)))), ==(old(_dryad_S10, sll(list3)), old(_dryad_S11, sll(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list3)))), ==(old(_dryad_S10, sll_reach(list3)), old(_dryad_S11, sll_reach(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list0)))), ==(old(_dryad_S10, sll_keys(list0)), old(_dryad_S11, sll_keys(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list0)))), ==(old(_dryad_S10, sll_list_len_next(list0)), old(_dryad_S11, sll_list_len_next(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list0)))), ==(old(_dryad_S10, sll(list0)), old(_dryad_S11, sll(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(list0)))), ==(old(_dryad_S10, sll_reach(list0)), old(_dryad_S11, sll_reach(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(last)))), ==(old(_dryad_S10, sll_keys(last)), old(_dryad_S11, sll_keys(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(last)))), ==(old(_dryad_S10, sll_list_len_next(last)), old(_dryad_S11, sll_list_len_next(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(last)))), ==(old(_dryad_S10, sll(last)), old(_dryad_S11, sll(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(last)))), ==(old(_dryad_S10, sll_reach(last)), old(_dryad_S11, sll_reach(last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#last, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(new_list)))), ==(old(_dryad_S10, sll_keys(new_list)), old(_dryad_S11, sll_keys(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(new_list)))), ==(old(_dryad_S10, sll_list_len_next(new_list)), old(_dryad_S11, sll_list_len_next(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(new_list)))), ==(old(_dryad_S10, sll(new_list)), old(_dryad_S11, sll(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(new_list)))), ==(old(_dryad_S10, sll_reach(new_list)), old(_dryad_S11, sll_reach(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(local.list)))), ==(old(_dryad_S10, sll_keys(local.list)), old(_dryad_S11, sll_keys(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(local.list)))), ==(old(_dryad_S10, sll_list_len_next(local.list)), old(_dryad_S11, sll_list_len_next(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(local.list)))), ==(old(_dryad_S10, sll(local.list)), old(_dryad_S11, sll(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_reach(local.list)))), ==(old(_dryad_S10, sll_reach(local.list)), old(_dryad_S11, sll_reach(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S10, sll_lseg(new_list, last)), old(_dryad_S11, sll_lseg(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S10, sll_lseg_reach(new_list, last)), old(_dryad_S11, sll_lseg_reach(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S10, sll_lseg_keys(new_list, last)), old(_dryad_S11, sll_lseg_keys(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S10, sll_lseg_len_next(new_list, last)), old(_dryad_S11, sll_lseg_len_next(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S10, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S11, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg(list, local.list)), old(_dryad_S11, sll_lseg(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg_reach(list, local.list)), old(_dryad_S11, sll_lseg_reach(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg_keys(list, local.list)), old(_dryad_S11, sll_lseg_keys(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg_len_next(list, local.list)), old(_dryad_S11, sll_lseg_len_next(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg(list, local.list)), old(_dryad_S11, sll_lseg(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg_reach(list, local.list)), old(_dryad_S11, sll_lseg_reach(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg_keys(list, local.list)), old(_dryad_S11, sll_lseg_keys(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(tail, old(_dryad_S10, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S10, sll_lseg_len_next(list, local.list)), old(_dryad_S11, sll_lseg_len_next(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S10, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S11, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list4)), ==(*((list4->key)), old(_dryad_S10, *((list4->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list4, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list4, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list4)), @_vcc_ptr_eq_pure(*((list4->next)), old(_dryad_S10, *((list4->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list4, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list3)), ==(*((list3->key)), old(_dryad_S10, *((list3->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list3, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list3)), @_vcc_ptr_eq_pure(*((list3->next)), old(_dryad_S10, *((list3->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list3, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list0)), ==(*((list0->key)), old(_dryad_S10, *((list0->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, list0)), @_vcc_ptr_eq_pure(*((list0->next)), old(_dryad_S10, *((list0->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, last)), ==(*((last->key)), old(_dryad_S10, *((last->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, last)), @_vcc_ptr_eq_pure(*((last->next)), old(_dryad_S10, *((last->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#last, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, new_list)), ==(*((new_list->key)), old(_dryad_S10, *((new_list->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#new_list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, new_list)), @_vcc_ptr_eq_pure(*((new_list->next)), old(_dryad_S10, *((new_list->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(L#new_list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, local.list)), ==(*((local.list->key)), old(_dryad_S10, *((local.list->key))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(tail, local.list)), @_vcc_ptr_eq_pure(*((local.list->next)), old(_dryad_S10, *((local.list->next))))); 
                assume !($phys_ptr_cast(L#tail, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_keys(list4), @_vcc_intset_union(sll_keys(*((list4->next))), @_vcc_intset_singleton(*((list4->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list4, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list4, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_list_len_next(list4), unchecked+(sll_list_len_next(*((list4->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list4, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll(list4), &&(sll(*((list4->next))), unchecked!(@_vcc_oset_in(list4, sll_reach(*((list4->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list4, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list4, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_reach(list4), @_vcc_oset_union(sll_reach(*((list4->next))), @_vcc_oset_singleton(list4)))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list4, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list4, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_keys(list3), @_vcc_intset_union(sll_keys(*((list3->next))), @_vcc_intset_singleton(*((list3->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_list_len_next(list3), unchecked+(sll_list_len_next(*((list3->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll(list3), &&(sll(*((list3->next))), unchecked!(@_vcc_oset_in(list3, sll_reach(*((list3->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_reach(list3), @_vcc_oset_union(sll_reach(*((list3->next))), @_vcc_oset_singleton(list3)))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list3, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_keys(tail), @_vcc_intset_union(sll_keys(*((tail->next))), @_vcc_intset_singleton(*((tail->key)))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tail, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tail, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_list_len_next(tail), unchecked+(sll_list_len_next(*((tail->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#tail, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll(tail), &&(sll(*((tail->next))), unchecked!(@_vcc_oset_in(tail, sll_reach(*((tail->next)))))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tail, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_reach(tail), @_vcc_oset_union(sll_reach(*((tail->next))), @_vcc_oset_singleton(tail)))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tail, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#tail, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg(new_list, last), &&(sll_lseg(*((new_list->next)), last), unchecked!(@_vcc_oset_in(new_list, sll_lseg_reach(*((new_list->next)), last)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_reach(new_list, last), @_vcc_oset_union(sll_lseg_reach(*((new_list->next)), last), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_keys(new_list, last), @_vcc_intset_union(sll_lseg_keys(*((new_list->next)), last), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_len_next(new_list, last), unchecked+(sll_lseg_len_next(*((new_list->next)), last), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // _math \state _dryad_S12; 
                // _dryad_S12 := @_vcc_current_state(@state); 
                SL#_dryad_S12 := $current_state($s);
                // _math \state stmtexpr8#10; 
                // stmtexpr8#10 := _dryad_S12; 
                stmtexpr8#10 := SL#_dryad_S12;
                // assert @prim_writes_check((last->next)); 
                assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#last, ^s_node), s_node.next));
                // *(last->next) := tail; 
                call $write_int(s_node.next, $phys_ptr_cast(L#last, ^s_node), $ptr_to_int($phys_ptr_cast(L#tail, ^s_node)));
                assume $full_stop_ext(#tok$3^58.4, $s);
                // _math \state _dryad_S13; 
                // _dryad_S13 := @_vcc_current_state(@state); 
                SL#_dryad_S13 := $current_state($s);
                // _math \state stmtexpr9#11; 
                // stmtexpr9#11 := _dryad_S13; 
                stmtexpr9#11 := SL#_dryad_S13;
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list4)))), ==(old(_dryad_S12, sll_keys(list4)), old(_dryad_S13, sll_keys(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list4)))), ==(old(_dryad_S12, sll_list_len_next(list4)), old(_dryad_S13, sll_list_len_next(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list4)))), ==(old(_dryad_S12, sll(list4)), old(_dryad_S13, sll(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list4)))), ==(old(_dryad_S12, sll_reach(list4)), old(_dryad_S13, sll_reach(list4)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list4, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(tail)))), ==(old(_dryad_S12, sll_keys(tail)), old(_dryad_S13, sll_keys(tail)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(tail)))), ==(old(_dryad_S12, sll_list_len_next(tail)), old(_dryad_S13, sll_list_len_next(tail)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(tail)))), ==(old(_dryad_S12, sll(tail)), old(_dryad_S13, sll(tail)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(tail)))), ==(old(_dryad_S12, sll_reach(tail)), old(_dryad_S13, sll_reach(tail)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#tail, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list3)))), ==(old(_dryad_S12, sll_keys(list3)), old(_dryad_S13, sll_keys(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list3)))), ==(old(_dryad_S12, sll_list_len_next(list3)), old(_dryad_S13, sll_list_len_next(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list3)))), ==(old(_dryad_S12, sll(list3)), old(_dryad_S13, sll(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list3)))), ==(old(_dryad_S12, sll_reach(list3)), old(_dryad_S13, sll_reach(list3)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list3, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list0)))), ==(old(_dryad_S12, sll_keys(list0)), old(_dryad_S13, sll_keys(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list0)))), ==(old(_dryad_S12, sll_list_len_next(list0)), old(_dryad_S13, sll_list_len_next(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list0)))), ==(old(_dryad_S12, sll(list0)), old(_dryad_S13, sll(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(list0)))), ==(old(_dryad_S12, sll_reach(list0)), old(_dryad_S13, sll_reach(list0)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#list0, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(new_list)))), ==(old(_dryad_S12, sll_keys(new_list)), old(_dryad_S13, sll_keys(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(new_list)))), ==(old(_dryad_S12, sll_list_len_next(new_list)), old(_dryad_S13, sll_list_len_next(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(new_list)))), ==(old(_dryad_S12, sll(new_list)), old(_dryad_S13, sll(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(new_list)))), ==(old(_dryad_S12, sll_reach(new_list)), old(_dryad_S13, sll_reach(new_list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(local.list)))), ==(old(_dryad_S12, sll_keys(local.list)), old(_dryad_S13, sll_keys(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(local.list)))), ==(old(_dryad_S12, sll_list_len_next(local.list)), old(_dryad_S13, sll_list_len_next(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(local.list)))), ==(old(_dryad_S12, sll(local.list)), old(_dryad_S13, sll(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_reach(local.list)))), ==(old(_dryad_S12, sll_reach(local.list)), old(_dryad_S13, sll_reach(local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(local.list, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S12, sll_lseg(new_list, last)), old(_dryad_S13, sll_lseg(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S12, sll_lseg_reach(new_list, last)), old(_dryad_S13, sll_lseg_reach(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S12, sll_lseg_keys(new_list, last)), old(_dryad_S13, sll_lseg_keys(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(new_list, last)))), ==(old(_dryad_S12, sll_lseg_len_next(new_list, last)), old(_dryad_S13, sll_lseg_len_next(new_list, last)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S12, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S13, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg(list, local.list)), old(_dryad_S13, sll_lseg(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg_reach(list, local.list)), old(_dryad_S13, sll_lseg_reach(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg_keys(list, local.list)), old(_dryad_S13, sll_lseg_keys(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg_len_next(list, local.list)), old(_dryad_S13, sll_lseg_len_next(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg(list, local.list)), old(_dryad_S13, sll_lseg(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg_reach(list, local.list)), old(_dryad_S13, sll_lseg_reach(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg_keys(list, local.list)), old(_dryad_S13, sll_lseg_keys(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(unchecked!(@_vcc_oset_in(last, old(_dryad_S12, sll_lseg_reach(list, local.list)))), ==(old(_dryad_S12, sll_lseg_len_next(list, local.list)), old(_dryad_S13, sll_lseg_len_next(list, local.list)))); 
                assume !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S12, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S13, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(last, list4)), ==(*((list4->key)), old(_dryad_S12, *((list4->key))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(SL#list4, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list4, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(SL#list4, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(last, list4)), @_vcc_ptr_eq_pure(*((list4->next)), old(_dryad_S12, *((list4->next))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(SL#list4, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(last, tail)), ==(*((tail->key)), old(_dryad_S12, *((tail->key))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(L#tail, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#tail, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(L#tail, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(last, tail)), @_vcc_ptr_eq_pure(*((tail->next)), old(_dryad_S12, *((tail->next))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(L#tail, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(last, list3)), ==(*((list3->key)), old(_dryad_S12, *((list3->key))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(SL#list3, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(SL#list3, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(last, list3)), @_vcc_ptr_eq_pure(*((list3->next)), old(_dryad_S12, *((list3->next))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(SL#list3, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(last, list0)), ==(*((list0->key)), old(_dryad_S12, *((list0->key))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(SL#list0, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(last, list0)), @_vcc_ptr_eq_pure(*((list0->next)), old(_dryad_S12, *((list0->next))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(SL#list0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(last, new_list)), ==(*((new_list->key)), old(_dryad_S12, *((new_list->key))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(L#new_list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(L#new_list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(last, new_list)), @_vcc_ptr_eq_pure(*((new_list->next)), old(_dryad_S12, *((new_list->next))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(L#new_list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node);
                // assume ==>(!(@_vcc_ptr_eq_pure(last, local.list)), ==(*((local.list->key)), old(_dryad_S12, *((local.list->key))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(!(@_vcc_ptr_eq_pure(last, local.list)), @_vcc_ptr_eq_pure(*((local.list->next)), old(_dryad_S12, *((local.list->next))))); 
                assume !($phys_ptr_cast(L#last, ^s_node) == $phys_ptr_cast(local.list, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_keys(list4), @_vcc_intset_union(sll_keys(*((list4->next))), @_vcc_intset_singleton(*((list4->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list4, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list4, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_list_len_next(list4), unchecked+(sll_list_len_next(*((list4->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list4, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll(list4), &&(sll(*((list4->next))), unchecked!(@_vcc_oset_in(list4, sll_reach(*((list4->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list4, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list4, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list4), ==(sll_reach(list4), @_vcc_oset_union(sll_reach(*((list4->next))), @_vcc_oset_singleton(list4)))); 
                assume $non_null($phys_ptr_cast(SL#list4, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list4, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list4, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_keys(tail), @_vcc_intset_union(sll_keys(*((tail->next))), @_vcc_intset_singleton(*((tail->key)))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tail, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tail, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_list_len_next(tail), unchecked+(sll_list_len_next(*((tail->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#tail, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll(tail), &&(sll(*((tail->next))), unchecked!(@_vcc_oset_in(tail, sll_reach(*((tail->next)))))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tail, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_reach(tail), @_vcc_oset_union(sll_reach(*((tail->next))), @_vcc_oset_singleton(tail)))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tail, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#tail, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_keys(list3), @_vcc_intset_union(sll_keys(*((list3->next))), @_vcc_intset_singleton(*((list3->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_list_len_next(list3), unchecked+(sll_list_len_next(*((list3->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll(list3), &&(sll(*((list3->next))), unchecked!(@_vcc_oset_in(list3, sll_reach(*((list3->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_reach(list3), @_vcc_oset_union(sll_reach(*((list3->next))), @_vcc_oset_singleton(list3)))); 
                assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list3, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
                assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_keys(tail), @_vcc_intset_union(sll_keys(*((tail->next))), @_vcc_intset_singleton(*((tail->key)))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#tail, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#tail, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_list_len_next(tail), unchecked+(sll_list_len_next(*((tail->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#tail, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll(tail), &&(sll(*((tail->next))), unchecked!(@_vcc_oset_in(tail, sll_reach(*((tail->next)))))))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#tail, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#tail, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(tail), ==(sll_reach(tail), @_vcc_oset_union(sll_reach(*((tail->next))), @_vcc_oset_singleton(tail)))); 
                assume $non_null($phys_ptr_cast(L#tail, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#tail, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#tail, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#tail, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // struct s_node* last8; 
                // last8 := last; 
                SL#last8 := $phys_ptr_cast(L#last, ^s_node);
                // struct s_node* stmtexpr10#12; 
                // stmtexpr10#12 := last8; 
                stmtexpr10#12 := $phys_ptr_cast(SL#last8, ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(last), @_vcc_ptr_neq_pure(last, *((last->next)))), ==(sll_lseg(last, *((last->next))), &&(sll_lseg(*((last->next)), *((last->next))), unchecked!(@_vcc_oset_in(last, sll_lseg_reach(*((last->next)), *((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) && $phys_ptr_cast(L#last, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#last, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(last), @_vcc_ptr_neq_pure(last, *((last->next)))), ==(sll_lseg_reach(last, *((last->next))), @_vcc_oset_union(sll_lseg_reach(*((last->next)), *((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) && $phys_ptr_cast(L#last, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#last, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(last), @_vcc_ptr_neq_pure(last, *((last->next)))), ==(sll_lseg_keys(last, *((last->next))), @_vcc_intset_union(sll_lseg_keys(*((last->next)), *((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) && $phys_ptr_cast(L#last, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#last, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(last), @_vcc_ptr_neq_pure(last, *((last->next)))), ==(sll_lseg_len_next(last, *((last->next))), unchecked+(sll_lseg_len_next(*((last->next)), *((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) && $phys_ptr_cast(L#last, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#last, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assert @reads_check_normal((last->next)); 
                assert $thread_local($s, $phys_ptr_cast(L#last, ^s_node));
                // last := *((last->next)); 
                L#last := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
                // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg(new_list, last), &&(sll_lseg(*((new_list->next)), last), unchecked!(@_vcc_oset_in(new_list, sll_lseg_reach(*((new_list->next)), last)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_reach(new_list, last), @_vcc_oset_union(sll_lseg_reach(*((new_list->next)), last), @_vcc_oset_singleton(new_list)))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_keys(new_list, last), @_vcc_intset_union(sll_lseg_keys(*((new_list->next)), last), @_vcc_intset_singleton(*((new_list->key)))))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(new_list), @_vcc_ptr_neq_pure(new_list, last)), ==(sll_lseg_len_next(new_list, last), unchecked+(sll_lseg_len_next(*((new_list->next)), last), 1))); 
                assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) && $phys_ptr_cast(L#new_list, ^s_node) != $phys_ptr_cast(L#last, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#new_list, ^s_node), $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node), $phys_ptr_cast(L#last, ^s_node)), 1);
                // assume ==>(&&(@_vcc_ptr_neq_null(local.list), @_vcc_ptr_neq_null(*((local.list->next)))), &&(==(@_vcc_mutable(@state, local.list), @_vcc_mutable(@state, *((local.list->next)))), ==(@writes_check(local.list), @writes_check(*((local.list->next)))))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) == $mutable($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(local.list, ^s_node)) == $top_writable($s, #wrTime$3^3.3, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node));
                // struct s_node* list9; 
                // list9 := local.list; 
                SL#list9 := $phys_ptr_cast(local.list, ^s_node);
                // struct s_node* stmtexpr11#13; 
                // stmtexpr11#13 := list9; 
                stmtexpr11#13 := $phys_ptr_cast(SL#list9, ^s_node);
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
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg(list, local.list), &&(sll_lseg(*((list->next)), local.list), unchecked!(@_vcc_oset_in(list, sll_lseg_reach(*((list->next)), local.list)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)) && !$oset_in($phys_ptr_cast(P#list, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_reach(list, local.list), @_vcc_oset_union(sll_lseg_reach(*((list->next)), local.list), @_vcc_oset_singleton(list)))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $oset_singleton($phys_ptr_cast(P#list, ^s_node)));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_keys(list, local.list), @_vcc_intset_union(sll_lseg_keys(*((list->next)), local.list), @_vcc_intset_singleton(*((list->key)))))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#list, ^s_node))));
                // assume ==>(&&(@_vcc_ptr_neq_null(list), @_vcc_ptr_neq_pure(list, local.list)), ==(sll_lseg_len_next(list, local.list), unchecked+(sll_lseg_len_next(*((list->next)), local.list), 1))); 
                assume $non_null($phys_ptr_cast(P#list, ^s_node)) && $phys_ptr_cast(P#list, ^s_node) != $phys_ptr_cast(local.list, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#list, ^s_node), ^s_node), $phys_ptr_cast(local.list, ^s_node)), 1);
                // assume ==>(@_vcc_ptr_neq_null(local.list), &&(@_vcc_mutable(@state, local.list), @writes_check(local.list))); 
                assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(local.list, ^s_node));
                // assume ==>(@_vcc_ptr_neq_null(last), &&(@_vcc_mutable(@state, last), @writes_check(last))); 
                assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#last, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#last, ^s_node));
            }
            else
            {
              anon2:
                // assert @_vcc_possibly_unreachable; 
                assert {:PossiblyUnreachable true} true;
                // goto #break_1; 
                goto #break_1;
            }

          #continue_1:
            assume true;
p0000 := (F#sll($s,$phys_ptr_cast(P#list,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(L#new_list,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(L#last,^s_node)));
p0003 := (F#sll($s,$phys_ptr_cast(local.list,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)));
p0009 := (F#sll_lseg($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0010 := (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0011 := (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)));
p0012 := (F#sll_lseg($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0013 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0014 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)));
p0015 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)));
p0016 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0017 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0018 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0019 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0020 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0021 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0022 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0023 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0024 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0025 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0026 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0027 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0028 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0029 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0030 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0031 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0032 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0033 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0034 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0035 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0036 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0037 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0038 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0039 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0040 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0041 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0042 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0043 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0044 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0045 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0046 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0047 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0048 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0049 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0050 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0051 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0052 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0053 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0054 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0055 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0056 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0057 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0058 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0059 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0060 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0061 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0062 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0063 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#new_list,^s_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(L#last,^s_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#new_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#last,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))));
p0100 := ($non_null($phys_ptr_cast(P#list,^s_node)));
p0101 := ($non_null($phys_ptr_cast(L#new_list,^s_node)));
p0102 := ($non_null($phys_ptr_cast(L#last,^s_node)));
p0103 := ($non_null($phys_ptr_cast(local.list,^s_node)));
p0104 := ($is_null($phys_ptr_cast(P#list,^s_node)));
p0105 := ($is_null($phys_ptr_cast(L#new_list,^s_node)));
p0106 := ($is_null($phys_ptr_cast(L#last,^s_node)));
p0107 := ($is_null($phys_ptr_cast(local.list,^s_node)));
p0108 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)));
p0109 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node)));
p0110 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0111 := (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0112 := (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node)));
p0113 := (($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0114 := (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0115 := (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node)));
p0116 := (($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0117 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0118 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node)));
p0119 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node)));
p0120 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0121 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node))));
p0122 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node))));
p0123 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0124 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0125 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node))));
p0126 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node))));
p0127 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0128 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0129 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0130 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0131 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0132 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0133 := (($non_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#new_list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0134 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0135 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0136 := (($non_null($phys_ptr_cast(L#last,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#last,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0137 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0138 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0139 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#new_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#last,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#new_list,^s_node),$phys_ptr_cast(L#last,^s_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(L#last,^s_node),$phys_ptr_cast(L#new_list,^s_node))))));
p0164 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0165 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0166 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0167 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0168 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0169 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0170 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0171 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0172 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0173 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0174 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0175 := (($is_null($phys_ptr_cast(L#new_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0176 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0177 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0178 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0179 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0180 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0181 := (($is_null($phys_ptr_cast(L#last,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0182 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));
p0183 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0184 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0185 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#new_list,^s_node) == $phys_ptr_cast(L#last,^s_node))));
p0186 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0187 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(L#last,^s_node) == $phys_ptr_cast(L#new_list,^s_node))));

        }

      anon5:
        assume $full_stop_ext(#tok$3^33.3, $s);

      #break_1:
        // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_keys(list3), @_vcc_intset_union(sll_keys(*((list3->next))), @_vcc_intset_singleton(*((list3->key)))))); 
        assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list3, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_list_len_next(list3), unchecked+(sll_list_len_next(*((list3->next))), 1))); 
        assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll(list3), &&(sll(*((list3->next))), unchecked!(@_vcc_oset_in(list3, sll_reach(*((list3->next)))))))); 
        assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list3), ==(sll_reach(list3), @_vcc_oset_union(sll_reach(*((list3->next))), @_vcc_oset_singleton(list3)))); 
        assume $non_null($phys_ptr_cast(SL#list3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list3, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_keys(list0), @_vcc_intset_union(sll_keys(*((list0->next))), @_vcc_intset_singleton(*((list0->key)))))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#list0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#list0, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_list_len_next(list0), unchecked+(sll_list_len_next(*((list0->next))), 1))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#list0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll(list0), &&(sll(*((list0->next))), unchecked!(@_vcc_oset_in(list0, sll_reach(*((list0->next)))))))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#list0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#list0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(list0), ==(sll_reach(list0), @_vcc_oset_union(sll_reach(*((list0->next))), @_vcc_oset_singleton(list0)))); 
        assume $non_null($phys_ptr_cast(SL#list0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#list0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#list0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#list0, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_keys(last), @_vcc_intset_union(sll_keys(*((last->next))), @_vcc_intset_singleton(*((last->key)))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#last, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#last, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_list_len_next(last), unchecked+(sll_list_len_next(*((last->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#last, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll(last), &&(sll(*((last->next))), unchecked!(@_vcc_oset_in(last, sll_reach(*((last->next)))))))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#last, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#last, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(last), ==(sll_reach(last), @_vcc_oset_union(sll_reach(*((last->next))), @_vcc_oset_singleton(last)))); 
        assume $non_null($phys_ptr_cast(L#last, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#last, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#last, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#last, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_keys(new_list), @_vcc_intset_union(sll_keys(*((new_list->next))), @_vcc_intset_singleton(*((new_list->key)))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_list_len_next(new_list), unchecked+(sll_list_len_next(*((new_list->next))), 1))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll(new_list), &&(sll(*((new_list->next))), unchecked!(@_vcc_oset_in(new_list, sll_reach(*((new_list->next)))))))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(new_list), ==(sll_reach(new_list), @_vcc_oset_union(sll_reach(*((new_list->next))), @_vcc_oset_singleton(new_list)))); 
        assume $non_null($phys_ptr_cast(L#new_list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_list, ^s_node)));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
    }
    else
    {
      anon6:
        // assert @_vcc_possibly_unreachable; 
        assert {:PossiblyUnreachable true} true;
    }

  anon8:
    // return new_list; 
    $result := $phys_ptr_cast(L#new_list, ^s_node);
    assume true;
    assert $position_marker();
    goto #exit;

  anon9:
    // skip

  #exit:
}



const unique l#public: $label;

const unique #tok$3^58.4: $token;

const unique #tok$3^56.4: $token;

const unique #tok$3^55.5: $token;

const unique #tok$3^49.18: $token;

const unique #tok$3^33.3: $token;

const unique #tok$3^24.3: $token;

const unique #tok$3^23.3: $token;

const unique #tok$3^17.14: $token;

const unique #tok$3^11.29: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^3.3: $token;

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgslist?5Cg_slist_copy.c: $token;

axiom $file_name_is(3, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgslist?5Cg_slist_copy.c);

const unique #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgslist?5Cdryad_gslist_sll.h: $token;

axiom $file_name_is(2, #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgslist?5Cdryad_gslist_sll.h);

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?2Dbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?2Dbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

