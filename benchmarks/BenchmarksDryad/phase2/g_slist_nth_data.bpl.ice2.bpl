
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
b0188 : bool,
b0189 : bool,
b0190 : bool,
b0191 : bool,
b0192 : bool,
b0193 : bool,
b0194 : bool,
b0195 : bool,
b0196 : bool,
b0197 : bool,
b0198 : bool,
b0199 : bool,
b0200 : bool,
b0201 : bool,
b0202 : bool,
b0203 : bool,
b0204 : bool,
b0205 : bool,
b0206 : bool,
b0207 : bool,
b0208 : bool,
b0209 : bool,
b0210 : bool,
b0211 : bool,
b0212 : bool,
b0213 : bool,
b0214 : bool,
b0215 : bool,
b0216 : bool,
b0217 : bool,
b0218 : bool,
b0219 : bool,
b0220 : bool,
b0221 : bool,
b0222 : bool,
b0223 : bool,
b0224 : bool,
b0225 : bool,
b0226 : bool,
b0227 : bool,
b0228 : bool,
b0229 : bool,
b0230 : bool,
b0231 : bool,
b0232 : bool,
b0233 : bool,
b0234 : bool,
b0235 : bool,
b0236 : bool,
b0237 : bool
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

const unique ^$#g_slist_nth_data.c..36263#3: $ctype;

axiom $def_fnptr_type(^$#g_slist_nth_data.c..36263#3);

type $#g_slist_nth_data.c..36263#3;

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



procedure g_slist_nth_data(P#list: $ptr, P#n: int) returns ($result: int, OP#ret_list: $ptr);
  requires F#sll($s, $phys_ptr_cast(P#list, ^s_node));
  requires P#n >= 0;
  free requires -1 == $unchk_sub(^^i4, 0, 1);
  modifies $s, $cev_pc;
  free ensures $in_range_i4($result);
  ensures F#sll($s, $phys_ptr_cast(P#list, ^s_node));
  ensures F#sll($s, $phys_ptr_cast(OP#ret_list, ^s_node));
  ensures F#sll_lseg($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(OP#ret_list, ^s_node)) && $oset_disjoint(F#sll_lseg_reach($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(OP#ret_list, ^s_node)), F#sll_reach($s, $phys_ptr_cast(OP#ret_list, ^s_node)));
  ensures P#n >= F#sll_list_len_next($s, $phys_ptr_cast(P#list, ^s_node)) ==> $result == -1;
  ensures $non_null($phys_ptr_cast(OP#ret_list, ^s_node)) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(OP#ret_list, ^s_node));
  ensures $non_null($phys_ptr_cast(OP#ret_list, ^s_node)) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#list, ^s_node), $phys_ptr_cast(OP#ret_list, ^s_node)) == P#n;
  free ensures -1 == $unchk_sub(^^i4, 0, 1);
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation g_slist_nth_data(P#list: $ptr, P#n: int) returns ($result: int, OP#ret_list: $ptr)
{
  var stmtexpr0#4: $ptr;
  var list0#0: $ptr;
  var stmtexpr0#3: $ptr;
  var SL#list0: $ptr;
  var ite#1: bool;
  var loopState#0: $state;
  var L#res: int where $in_range_i4(L#res);
  var stmtexpr1#6: $oset;
  var stmtexpr0#5: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var local.n: int where $in_range_i4(local.n);
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
var p0188 : bool;
var p0189 : bool;
var p0190 : bool;
var p0191 : bool;
var p0192 : bool;
var p0193 : bool;
var p0194 : bool;
var p0195 : bool;
var p0196 : bool;
var p0197 : bool;
var p0198 : bool;
var p0199 : bool;
var p0200 : bool;
var p0201 : bool;
var p0202 : bool;
var p0203 : bool;
var p0204 : bool;
var p0205 : bool;
var p0206 : bool;
var p0207 : bool;
var p0208 : bool;
var p0209 : bool;
var p0210 : bool;
var p0211 : bool;
var p0212 : bool;
var p0213 : bool;
var p0214 : bool;
var p0215 : bool;
var p0216 : bool;
var p0217 : bool;
var p0218 : bool;
var p0219 : bool;
var p0220 : bool;
var p0221 : bool;
var p0222 : bool;
var p0223 : bool;
var p0224 : bool;
var p0225 : bool;
var p0226 : bool;
var p0227 : bool;
var p0228 : bool;
var p0229 : bool;
var p0230 : bool;
var p0231 : bool;
var p0232 : bool;
var p0233 : bool;
var p0234 : bool;
var p0235 : bool;
var p0236 : bool;

// INV:PTR: P#list, OP#ret_list, local.list
// INV:INT: P#n, L#res, local.n
// INV:LST: sll

  anon6:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$2^3.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$2^3.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$2^3.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @in_range_i4(n); 
    assume $in_range_i4(P#n);
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // struct s_node* local.list; 
    // local.list := list; 
    local.list := $phys_ptr_cast(P#list, ^s_node);
    // int32_t local.n; 
    // local.n := n; 
    local.n := P#n;
    // assume ==(-1, unchecked-(0, 1)); 
    assume -1 == $unchk_sub(^^i4, 0, 1);
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := sll_reach(local.list); 
    call SL#_dryad_G0 := sll_reach($phys_ptr_cast(local.list, ^s_node));
    assume $full_stop_ext(#tok$3^0.0, $s);
    // _math \oset stmtexpr0#5; 
    // stmtexpr0#5 := _dryad_G0; 
    stmtexpr0#5 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#6; 
    // stmtexpr1#6 := _dryad_G1; 
    stmtexpr1#6 := SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
    // int32_t res; 
    // ret_list := local.list; 
    OP#ret_list := $phys_ptr_cast(local.list, ^s_node);
    // assume ==>(@_vcc_ptr_neq_null(local.list), &&(@_vcc_mutable(@state, local.list), @writes_check(local.list))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node)) && $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(local.list, ^s_node));
    // var int32_t res
    loopState#0 := $s;
    assume true;
p0000 := (F#sll($s,$phys_ptr_cast(P#list,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(OP#ret_list,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(local.list,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)));
p0009 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0010 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0011 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0012 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0013 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0014 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0015 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0016 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0017 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0018 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0019 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0020 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0021 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0022 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0023 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0024 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0025 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0026 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#list,^s_node)));
p0040 := ($non_null($phys_ptr_cast(OP#ret_list,^s_node)));
p0041 := ($non_null($phys_ptr_cast(local.list,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#list,^s_node)));
p0043 := ($is_null($phys_ptr_cast(OP#ret_list,^s_node)));
p0044 := ($is_null($phys_ptr_cast(local.list,^s_node)));
p0045 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)));
p0046 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0047 := (($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0048 := (($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0049 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0050 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0059 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0060 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0061 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0062 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(OP#ret_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(OP#ret_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0071 := (($is_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0072 := (($is_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0073 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0074 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0075 := ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
p0076 := ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
p0077 := ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
p0078 := ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
p0079 := ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
p0080 := ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
p0081 := ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
p0082 := ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
p0083 := ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
p0084 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0085 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0086 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0087 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0088 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0089 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0090 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0091 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0092 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0093 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0094 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0095 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0096 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0097 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0098 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0099 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0100 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0101 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0102 := ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0103 := ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0104 := ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0105 := ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0106 := ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0107 := ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0108 := ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0109 := ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0110 := ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0111 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0112 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0113 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0114 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0115 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0116 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0117 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0118 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0119 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0120 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0121 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0122 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0123 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0124 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0125 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0126 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0127 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0128 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0129 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0130 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0131 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0132 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0133 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0134 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0135 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0136 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0137 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0138 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0139 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0140 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0141 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0142 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0143 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0144 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0145 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0146 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0147 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0148 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0149 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0150 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0151 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0152 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0153 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0154 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0155 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0156 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0157 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0158 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0159 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0160 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0161 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0162 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0163 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0164 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0165 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0166 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0167 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0168 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0169 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0170 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0171 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0172 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0173 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0174 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0175 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0176 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0177 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0178 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0179 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0180 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0181 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0182 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0183 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0184 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0185 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0186 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0187 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0188 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0189 := ((P#n < 2147483647));
p0190 := ((L#res < 2147483647));
p0191 := ((local.n < 2147483647));
p0192 := ((P#n < 2147483647));
p0193 := ((L#res < 2147483647));
p0194 := ((local.n < 2147483647));
p0195 := ((P#n < 2147483647));
p0196 := ((L#res < 2147483647));
p0197 := ((local.n < 2147483647));
p0198 := ((P#n < 4294967295));
p0199 := ((L#res < 4294967295));
p0200 := ((local.n < 4294967295));
p0201 := ((P#n < 4294967295));
p0202 := ((L#res < 4294967295));
p0203 := ((local.n < 4294967295));
p0204 := ((P#n < 4294967295));
p0205 := ((L#res < 4294967295));
p0206 := ((local.n < 4294967295));
p0207 := ((P#n >= 0));
p0208 := ((L#res >= 0));
p0209 := ((local.n >= 0));
p0210 := ((P#n >= 0));
p0211 := ((L#res >= 0));
p0212 := ((local.n >= 0));
p0213 := ((P#n >= 0));
p0214 := ((L#res >= 0));
p0215 := ((local.n >= 0));
p0216 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < P#n)));
p0217 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < L#res)));
p0218 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < local.n)));
p0219 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < P#n)));
p0220 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < L#res)));
p0221 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < local.n)));
p0222 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < P#n)));
p0223 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < L#res)));
p0224 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < local.n)));
p0225 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0226 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0227 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0228 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0229 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0230 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0231 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0232 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0233 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0234 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0235 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0236 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));

    while (true)

invariant (p0000 == (F#sll($s,$phys_ptr_cast(P#list,^s_node))));
invariant (p0001 == (F#sll($s,$phys_ptr_cast(OP#ret_list,^s_node))));
invariant (p0002 == (F#sll($s,$phys_ptr_cast(local.list,^s_node))));
invariant (p0003 == (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
invariant (p0004 == (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
invariant (p0005 == (F#sll_lseg($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
invariant (p0006 == (F#sll_lseg($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
invariant (p0007 == (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
invariant (p0008 == (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
invariant (p0009 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0010 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0011 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0012 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0013 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0014 == ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0015 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0016 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0027 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0028 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0029 == ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0030 == ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0031 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0032 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0033 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0034 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0035 == ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0036 == ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0037 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0038 == ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0039 == ($non_null($phys_ptr_cast(P#list,^s_node))));
invariant (p0040 == ($non_null($phys_ptr_cast(OP#ret_list,^s_node))));
invariant (p0041 == ($non_null($phys_ptr_cast(local.list,^s_node))));
invariant (p0042 == ($is_null($phys_ptr_cast(P#list,^s_node))));
invariant (p0043 == ($is_null($phys_ptr_cast(OP#ret_list,^s_node))));
invariant (p0044 == ($is_null($phys_ptr_cast(local.list,^s_node))));
invariant (p0045 == (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
invariant (p0046 == (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
invariant (p0047 == (($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
invariant (p0048 == (($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
invariant (p0049 == (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
invariant (p0050 == (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
invariant (p0051 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node)))));
invariant (p0052 == (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node)))));
invariant (p0053 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node)))));
invariant (p0054 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node)))));
invariant (p0055 == (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node)))));
invariant (p0056 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node)))));
invariant (p0057 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0058 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0059 == (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0060 == (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0061 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0062 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0063 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0064 == ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0065 == ((!($oset_in($phys_ptr_cast(OP#ret_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0066 == ((!($oset_in($phys_ptr_cast(OP#ret_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0067 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0068 == ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0069 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0070 == (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0071 == (($is_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)))));
invariant (p0072 == (($is_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0073 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0074 == (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(P#list,^s_node)))));
invariant (p0075 == ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0076 == ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0077 == ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0078 == ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0079 == ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0080 == ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0081 == ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0082 == ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0083 == ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0084 == ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0085 == ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0086 == ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0087 == ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0088 == ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0089 == ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0090 == ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0091 == ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0092 == ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0093 == ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0094 == ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0095 == ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))))));
invariant (p0096 == ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0097 == ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0098 == ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))))));
invariant (p0099 == ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0100 == ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0101 == ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))))));
invariant (p0102 == ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0103 == ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0104 == ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0105 == ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0106 == ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0107 == ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0108 == ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0109 == ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0110 == ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0111 == ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0112 == ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0113 == ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0114 == ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0115 == ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0116 == ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0117 == ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0118 == ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0119 == ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0120 == ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0121 == ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0122 == ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0123 == ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0124 == ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0125 == ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0126 == ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0127 == ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0128 == ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0129 == (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0130 == (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0131 == (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0132 == (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0133 == (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0134 == (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0135 == (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0136 == (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0137 == (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0138 == (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0139 == (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0140 == (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0141 == (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0142 == (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0143 == (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0144 == (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0145 == (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0146 == (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0147 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0148 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0149 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0150 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
invariant (p0151 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
invariant (p0152 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0153 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0154 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0155 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)))));
invariant (p0156 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0157 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)))));
invariant (p0158 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)))));
invariant (p0159 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0160 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0161 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0162 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0163 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0164 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0165 == ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0166 == ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0167 == ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0168 == ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0169 == ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0170 == ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0171 == ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0172 == ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0173 == ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0174 == ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0175 == ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0176 == ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0177 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0178 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0179 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0180 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0181 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0182 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0183 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0184 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0185 == ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0186 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0187 == ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0188 == ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0189 == ((P#n < 2147483647)));
invariant (p0190 == ((L#res < 2147483647)));
invariant (p0191 == ((local.n < 2147483647)));
invariant (p0192 == ((P#n < 2147483647)));
invariant (p0193 == ((L#res < 2147483647)));
invariant (p0194 == ((local.n < 2147483647)));
invariant (p0195 == ((P#n < 2147483647)));
invariant (p0196 == ((L#res < 2147483647)));
invariant (p0197 == ((local.n < 2147483647)));
invariant (p0198 == ((P#n < 4294967295)));
invariant (p0199 == ((L#res < 4294967295)));
invariant (p0200 == ((local.n < 4294967295)));
invariant (p0201 == ((P#n < 4294967295)));
invariant (p0202 == ((L#res < 4294967295)));
invariant (p0203 == ((local.n < 4294967295)));
invariant (p0204 == ((P#n < 4294967295)));
invariant (p0205 == ((L#res < 4294967295)));
invariant (p0206 == ((local.n < 4294967295)));
invariant (p0207 == ((P#n >= 0)));
invariant (p0208 == ((L#res >= 0)));
invariant (p0209 == ((local.n >= 0)));
invariant (p0210 == ((P#n >= 0)));
invariant (p0211 == ((L#res >= 0)));
invariant (p0212 == ((local.n >= 0)));
invariant (p0213 == ((P#n >= 0)));
invariant (p0214 == ((L#res >= 0)));
invariant (p0215 == ((local.n >= 0)));
invariant (p0216 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < P#n))));
invariant (p0217 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < L#res))));
invariant (p0218 == (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < local.n))));
invariant (p0219 == (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < P#n))));
invariant (p0220 == (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < L#res))));
invariant (p0221 == (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < local.n))));
invariant (p0222 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < P#n))));
invariant (p0223 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < L#res))));
invariant (p0224 == (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < local.n))));
invariant (p0225 == ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0226 == ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0227 == ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0228 == ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0229 == ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0230 == ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0231 == ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node))))));
invariant (p0232 == ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0233 == ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0234 == ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node))))));
invariant (p0235 == ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node))))));
invariant (p0236 == ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node))))));

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
p0188,
p0189,
p0190,
p0191,
p0192,
p0193,
p0194,
p0195,
p0196,
p0197,
p0198,
p0199,
p0200,
p0201,
p0202,
p0203,
p0204,
p0205,
p0206,
p0207,
p0208,
p0209,
p0210,
p0211,
p0212,
p0213,
p0214,
p0215,
p0216,
p0217,
p0218,
p0219,
p0220,
p0221,
p0222,
p0223,
p0224,
p0225,
p0226,
p0227,
p0228,
p0229,
p0230,
p0231,
p0232,
p0233,
p0234,
p0235,
p0236,
true
);

      invariant $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $mutable($s, $phys_ptr_cast(local.list, ^s_node));
      invariant $non_null($phys_ptr_cast(local.list, ^s_node)) ==> $top_writable($s, #wrTime$2^3.3, $phys_ptr_cast(local.list, ^s_node));
    {
      anon3:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#0, $s);
        assume $full_stop_ext(#tok$2^17.2, $s);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#0, $s);
        // _Bool ite#1; 
        // ite#1 := &&(>(local.n, 0), @_vcc_ptr_neq_null(local.list)); 
        ite#1 := local.n > 0 && $non_null($phys_ptr_cast(local.list, ^s_node));
        assume true;
        // if (ite#1) ...
        if (ite#1)
        {
          anon1:
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
            // assert @in_range_i4(-(local.n, 1)); 
            assert $in_range_i4(local.n - 1);
            // local.n := -(local.n, 1); 
            local.n := local.n - 1;
            // struct s_node* list0; 
            // list0 := local.list; 
            SL#list0 := $phys_ptr_cast(local.list, ^s_node);
            // struct s_node* stmtexpr0#3; 
            // stmtexpr0#3 := list0; 
            stmtexpr0#3 := $phys_ptr_cast(SL#list0, ^s_node);
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
            // ret_list := local.list; 
            OP#ret_list := $phys_ptr_cast(local.list, ^s_node);
        }
        else
        {
          anon2:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_2; 
            goto #break_2;
        }

      #continue_2:
        assume true;
p0000 := (F#sll($s,$phys_ptr_cast(P#list,^s_node)));
p0001 := (F#sll($s,$phys_ptr_cast(OP#ret_list,^s_node)));
p0002 := (F#sll($s,$phys_ptr_cast(local.list,^s_node)));
p0003 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)));
p0004 := (F#sll_lseg($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0005 := (F#sll_lseg($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0006 := (F#sll_lseg($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)));
p0007 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)));
p0008 := (F#sll_lseg($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)));
p0009 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0010 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0011 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0012 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0013 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0014 := ($oset_disjoint(F#sll_reach($s,$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0015 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0016 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0017 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0018 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0019 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0020 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0021 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0022 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0023 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0024 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0025 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0026 := ($oset_disjoint(F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0027 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0028 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0029 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0030 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_reach($s,$phys_ptr_cast(local.list,^s_node))));
p0031 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(P#list,^s_node))));
p0032 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_reach($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0033 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0034 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0035 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0036 := ($oset_disjoint($oset_singleton($phys_ptr_cast(OP#ret_list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0037 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0038 := ($oset_disjoint($oset_singleton($phys_ptr_cast(local.list,^s_node)),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0039 := ($non_null($phys_ptr_cast(P#list,^s_node)));
p0040 := ($non_null($phys_ptr_cast(OP#ret_list,^s_node)));
p0041 := ($non_null($phys_ptr_cast(local.list,^s_node)));
p0042 := ($is_null($phys_ptr_cast(P#list,^s_node)));
p0043 := ($is_null($phys_ptr_cast(OP#ret_list,^s_node)));
p0044 := ($is_null($phys_ptr_cast(local.list,^s_node)));
p0045 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)));
p0046 := (($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0047 := (($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0048 := (($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(local.list,^s_node)));
p0049 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node)));
p0050 := (($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node)));
p0051 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0052 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node))));
p0053 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0054 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node))));
p0055 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node))));
p0056 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node))));
p0057 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0058 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0059 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0060 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(OP#ret_list,^s_node),^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0061 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0062 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(local.list,^s_node),^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0063 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0064 := ((!($oset_in($phys_ptr_cast(P#list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0065 := ((!($oset_in($phys_ptr_cast(OP#ret_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0066 := ((!($oset_in($phys_ptr_cast(OP#ret_list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0067 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0068 := ((!($oset_in($phys_ptr_cast(local.list,^s_node),F#sll_lseg_reach($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0069 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0070 := (($is_null($phys_ptr_cast(P#list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0071 := (($is_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(local.list,^s_node))));
p0072 := (($is_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($phys_ptr_cast(local.list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0073 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(P#list,^s_node) == $phys_ptr_cast(OP#ret_list,^s_node))));
p0074 := (($is_null($phys_ptr_cast(local.list,^s_node)) ==> ($phys_ptr_cast(OP#ret_list,^s_node) == $phys_ptr_cast(P#list,^s_node))));
p0075 := ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
p0076 := ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
p0077 := ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))))));
p0078 := ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
p0079 := ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
p0080 := ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))))));
p0081 := ((!($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
p0082 := ((!($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
p0083 := ((!($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))))));
p0084 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0085 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0086 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0087 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0088 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0089 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0090 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0091 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0092 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0093 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0094 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0095 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))))));
p0096 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0097 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0098 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))))));
p0099 := ((!($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0100 := ((!($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0101 := ((!($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))))));
p0102 := ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0103 := ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0104 := ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0105 := ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0106 := ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0107 := ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0108 := ($intset_in(P#n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0109 := ($intset_in(L#res,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0110 := ($intset_in(local.n,F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0111 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0112 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0113 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0114 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0115 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0116 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0117 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0118 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0119 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0120 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0121 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0122 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0123 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0124 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0125 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0126 := ($intset_in(P#n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0127 := ($intset_in(L#res,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0128 := ($intset_in(local.n,F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0129 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0130 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0131 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0132 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0133 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0134 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)))));
p0135 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0136 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0137 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0138 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0139 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0140 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0141 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0142 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0143 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0144 := (((!($intset_in(P#n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0145 := (((!($intset_in(L#res,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0146 := (((!($intset_in(local.n,F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node))))) ==> (F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)))));
p0147 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0148 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0149 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0150 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(local.list,^s_node))));
p0151 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(P#list,^s_node))));
p0152 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node))));
p0153 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0154 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0155 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(local.list,^s_node))));
p0156 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(local.list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0157 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(P#list,^s_node),$phys_ptr_cast(OP#ret_list,^s_node))));
p0158 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == F#sll_lseg_keys($s,$phys_ptr_cast(OP#ret_list,^s_node),$phys_ptr_cast(P#list,^s_node))));
p0159 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0160 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0161 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0162 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0163 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0164 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0165 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0166 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0167 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0168 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0169 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0170 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0171 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0172 := ((F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0173 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0174 := ((F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0175 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0176 := ((F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0177 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0178 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0179 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0180 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0181 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0182 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0183 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0184 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(P#list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0185 := ((F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0186 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(OP#ret_list,^s_node)),F#sll_keys($s,$phys_ptr_cast(local.list,^s_node)))));
p0187 := ((F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)))));
p0188 := ((F#sll_keys($s,$phys_ptr_cast(P#list,^s_node)) == $intset_union(F#sll_keys(loopState#0,$phys_ptr_cast(local.list,^s_node)),F#sll_keys($s,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0189 := ((P#n < 2147483647));
p0190 := ((L#res < 2147483647));
p0191 := ((local.n < 2147483647));
p0192 := ((P#n < 2147483647));
p0193 := ((L#res < 2147483647));
p0194 := ((local.n < 2147483647));
p0195 := ((P#n < 2147483647));
p0196 := ((L#res < 2147483647));
p0197 := ((local.n < 2147483647));
p0198 := ((P#n < 4294967295));
p0199 := ((L#res < 4294967295));
p0200 := ((local.n < 4294967295));
p0201 := ((P#n < 4294967295));
p0202 := ((L#res < 4294967295));
p0203 := ((local.n < 4294967295));
p0204 := ((P#n < 4294967295));
p0205 := ((L#res < 4294967295));
p0206 := ((local.n < 4294967295));
p0207 := ((P#n >= 0));
p0208 := ((L#res >= 0));
p0209 := ((local.n >= 0));
p0210 := ((P#n >= 0));
p0211 := ((L#res >= 0));
p0212 := ((local.n >= 0));
p0213 := ((P#n >= 0));
p0214 := ((L#res >= 0));
p0215 := ((local.n >= 0));
p0216 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < P#n)));
p0217 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < L#res)));
p0218 := (($non_null($phys_ptr_cast(P#list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) < local.n)));
p0219 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < P#n)));
p0220 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < L#res)));
p0221 := (($non_null($phys_ptr_cast(OP#ret_list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) < local.n)));
p0222 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < P#n)));
p0223 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < L#res)));
p0224 := (($non_null($phys_ptr_cast(local.list,^s_node)) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) < local.n)));
p0225 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0226 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0227 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0228 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0229 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0230 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) <= $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0231 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));
p0232 := ((($non_null($phys_ptr_cast(P#list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0233 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0234 := ((($non_null($phys_ptr_cast(OP#ret_list,^s_node)) && $non_null($phys_ptr_cast(local.list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)))));
p0235 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(P#list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(P#list,^s_node)))));
p0236 := ((($non_null($phys_ptr_cast(local.list,^s_node)) && $non_null($phys_ptr_cast(OP#ret_list,^s_node))) ==> ($rd_inv($s,s_node.key,$phys_ptr_cast(local.list,^s_node)) == $rd_inv($s,s_node.key,$phys_ptr_cast(OP#ret_list,^s_node)))));

    }

  anon7:
    assume $full_stop_ext(#tok$2^17.2, $s);

  #break_2:
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_list_len_next(local.list), unchecked+(sll_list_len_next(*((local.list->next))), 1))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(local.list, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), 1);
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll(local.list), &&(sll(*((local.list->next))), unchecked!(@_vcc_oset_in(local.list, sll_reach(*((local.list->next)))))))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll($s, $phys_ptr_cast(local.list, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(local.list, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_reach(local.list), @_vcc_oset_union(sll_reach(*((local.list->next))), @_vcc_oset_singleton(local.list)))); 
    assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(local.list, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(local.list, ^s_node)));
    assume true;
    // if (@_vcc_ptr_neq_null(local.list)) ...
    if ($non_null($phys_ptr_cast(local.list, ^s_node)))
    {
      anon4:
        // struct s_node* list0#0; 
        // list0#0 := local.list; 
        list0#0 := $phys_ptr_cast(local.list, ^s_node);
        // struct s_node* stmtexpr0#4; 
        // stmtexpr0#4 := list0#0; 
        stmtexpr0#4 := $phys_ptr_cast(list0#0, ^s_node);
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
        // assert @reads_check_normal((local.list->key)); 
        assert $thread_local($s, $phys_ptr_cast(local.list, ^s_node));
        // res := *((local.list->key)); 
        L#res := $rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node));
        // assume ==>(@_vcc_ptr_neq_null(local.list), ==(sll_keys(local.list), @_vcc_intset_union(sll_keys(*((local.list->next))), @_vcc_intset_singleton(*((local.list->key)))))); 
        assume $non_null($phys_ptr_cast(local.list, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(local.list, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(local.list, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(local.list, ^s_node))));
    }
    else
    {
      anon5:
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
        // res := -1; 
        L#res := -1;
    }

  anon8:
    // return res; 
    $result := L#res;
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

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgslist?5Cg_slist_nth_data.c: $token;

axiom $file_name_is(2, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgslist?5Cg_slist_nth_data.c);

const unique #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgslist?5Cdryad_gslist_sll.h: $token;

axiom $file_name_is(1, #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgslist?5Cdryad_gslist_sll.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

