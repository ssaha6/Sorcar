Removing _b2
Counter example for _b2
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume (if BV32_ULT($numKeys, 16777216bv32) then 1bv1 else 0bv1) != 0bv1;
                                assume !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
                                assume !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto $entry;

                              $entry:
                                assume v0$1#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 256bv32);
                                assume v0$2#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), 256bv32);
                                assume v1$1#AT#0 == BV32_ADD(v0$1#AT#0, 255bv32);
                                assume v1$2#AT#0 == BV32_ADD(v0$2#AT#0, 255bv32);
                                assume BV1_ZEXT32((if BV32_SLT(v0$1#AT#0, v1$1#AT#0) ==> BV32_ULT($$input[v0$1#AT#0], $$input[v1$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v0$2#AT#0, v1$2#AT#0) ==> BV32_ULT($$input[v0$2#AT#0], $$input[v1$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 0) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE(0bv32, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 0bv32) then 1bv1 else 0bv1) != 0bv1;
                                goto $for.cond;

                              $for.cond:
                                assume {:captureState "loop_head_state_0"} $mv_state($mv_state_const, 1) && true;
                                assume _b3 ==> BV32_UGE($i.0#AT#0, 0bv32);
                                assume _b2 ==> BV32_ULE($i.0#AT#0, 0bv32);
                                assume _b1 ==> BV32_SGE($i.0#AT#0, 0bv32);
                                assume _b0 ==> BV32_SLE($i.0#AT#0, 0bv32);
                                assume true;
                                assume (if _WRITE_HAS_OCCURRED_$$output#AT#0 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#0) then 1bv1 else 0bv1) != 0bv1;
                                assume v2#AT#1 <==> BV32_ULT($i.0#AT#0, $numKeys);
                                goto $truebb, $falsebb;

                              $truebb:
                                assume {:partition} v2#AT#1;
                                assume v3$1#AT#1 == $$keys[$i.0#AT#0];
                                assume v3$2#AT#1 == $$keys[$i.0#AT#0];
                                assume v4$1#AT#1 == $$input[v0$1#AT#0];
                                assume v4$2#AT#1 == $$input[v0$2#AT#0];
                                assume v5$1#AT#1 <==> BV32_UGE(v3$1#AT#1, v4$1#AT#1);
                                assume v5$2#AT#1 <==> BV32_UGE(v3$2#AT#1, v4$2#AT#1);
                                assume p1$1#AT#1 <==> (if v5$1#AT#1 then v5$1#AT#1 else false);
                                assume p1$2#AT#1 <==> (if v5$2#AT#1 then v5$2#AT#1 else false);
                                assume v6$1#AT#1 == (if p1$1#AT#1 then $$keys[$i.0#AT#0] else v6$1#AT#0);
                                assume v6$2#AT#1 == (if p1$2#AT#1 then $$keys[$i.0#AT#0] else v6$2#AT#0);
                                assume v7$1#AT#1 == (if p1$1#AT#1 then $$input[v1$1#AT#0] else v7$1#AT#0);
                                assume v7$2#AT#1 == (if p1$2#AT#1 then $$input[v1$2#AT#0] else v7$2#AT#0);
                                assume v8$1#AT#1 <==> (if p1$1#AT#1 then BV32_ULE(v6$1#AT#1, v7$1#AT#1) else v8$1#AT#0);
                                assume v8$2#AT#1 <==> (if p1$2#AT#1 then BV32_ULE(v6$2#AT#1, v7$2#AT#1) else v8$2#AT#0);
                                assume p3$1#AT#1 <==> (if p1$1#AT#1 && v8$1#AT#1 then v8$1#AT#1 else false);
                                assume p3$2#AT#1 <==> (if p1$2#AT#1 && v8$2#AT#1 then v8$2#AT#1 else false);
                                goto inline$_LOG_WRITE_$$output$0$Entry;

                              inline$_LOG_WRITE_$$output$0$Entry:
                                assume inline$_LOG_WRITE_$$output$0$_value_old#AT#1 == $$output#AT#0[$i.0#AT#0];
                                goto inline$_LOG_WRITE_$$output$0$log_access_entry;

                              inline$_LOG_WRITE_$$output$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$output#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then v0$1#AT#0 != inline$_LOG_WRITE_$$output$0$_value_old#AT#1 else _WRITE_READ_BENIGN_FLAG_$$output#AT#0);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#2 <==> (if p3$2#AT#1 && _WRITE_HAS_OCCURRED_$$output#AT#1 && _WATCHED_OFFSET == $i.0#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$output#AT#1);
                                goto $truebb$2;

                              $truebb$2:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} $mv_state($mv_state_const, 3) && true;
                                assume $$output#AT#1 == $$output#AT#0[$i.0#AT#0 := (if p3$1#AT#1 then v0$1#AT#0 else $$output#AT#0[$i.0#AT#0])];
                                assume $$output#AT#2 == $$output#AT#1[$i.0#AT#0 := (if p3$2#AT#1 then v0$2#AT#0 else $$output#AT#1[$i.0#AT#0])];
                                assume $i.0#AT#1 == BV32_ADD($i.0#AT#0, 1bv32);
                                assume {:captureState "loop_back_edge_state_0_0"} $mv_state($mv_state_const, 4) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0#AT#1, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output#AT#1 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#1) then 1bv1 else 0bv1) != 0bv1;
                                assume false;
                                return;
Removing _b0
Counter example for _b0
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume (if BV32_ULT($numKeys, 16777216bv32) then 1bv1 else 0bv1) != 0bv1;
                                assume !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
                                assume !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto $entry;

                              $entry:
                                assume v0$1#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 256bv32);
                                assume v0$2#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), 256bv32);
                                assume v1$1#AT#0 == BV32_ADD(v0$1#AT#0, 255bv32);
                                assume v1$2#AT#0 == BV32_ADD(v0$2#AT#0, 255bv32);
                                assume BV1_ZEXT32((if BV32_SLT(v0$1#AT#0, v1$1#AT#0) ==> BV32_ULT($$input[v0$1#AT#0], $$input[v1$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v0$2#AT#0, v1$2#AT#0) ==> BV32_ULT($$input[v0$2#AT#0], $$input[v1$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 0) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE(0bv32, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 0bv32) then 1bv1 else 0bv1) != 0bv1;
                                goto $for.cond;

                              $for.cond:
                                assume {:captureState "loop_head_state_0"} $mv_state($mv_state_const, 1) && true;
                                assume _b3 ==> BV32_UGE($i.0#AT#0, 0bv32);
                                assume _b2 ==> BV32_ULE($i.0#AT#0, 0bv32);
                                assume _b1 ==> BV32_SGE($i.0#AT#0, 0bv32);
                                assume _b0 ==> BV32_SLE($i.0#AT#0, 0bv32);
                                assume true;
                                assume (if _WRITE_HAS_OCCURRED_$$output#AT#0 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#0) then 1bv1 else 0bv1) != 0bv1;
                                assume v2#AT#1 <==> BV32_ULT($i.0#AT#0, $numKeys);
                                goto $truebb, $falsebb;

                              $truebb:
                                assume {:partition} v2#AT#1;
                                assume v3$1#AT#1 == $$keys[$i.0#AT#0];
                                assume v3$2#AT#1 == $$keys[$i.0#AT#0];
                                assume v4$1#AT#1 == $$input[v0$1#AT#0];
                                assume v4$2#AT#1 == $$input[v0$2#AT#0];
                                assume v5$1#AT#1 <==> BV32_UGE(v3$1#AT#1, v4$1#AT#1);
                                assume v5$2#AT#1 <==> BV32_UGE(v3$2#AT#1, v4$2#AT#1);
                                assume p1$1#AT#1 <==> (if v5$1#AT#1 then v5$1#AT#1 else false);
                                assume p1$2#AT#1 <==> (if v5$2#AT#1 then v5$2#AT#1 else false);
                                assume v6$1#AT#1 == (if p1$1#AT#1 then $$keys[$i.0#AT#0] else v6$1#AT#0);
                                assume v6$2#AT#1 == (if p1$2#AT#1 then $$keys[$i.0#AT#0] else v6$2#AT#0);
                                assume v7$1#AT#1 == (if p1$1#AT#1 then $$input[v1$1#AT#0] else v7$1#AT#0);
                                assume v7$2#AT#1 == (if p1$2#AT#1 then $$input[v1$2#AT#0] else v7$2#AT#0);
                                assume v8$1#AT#1 <==> (if p1$1#AT#1 then BV32_ULE(v6$1#AT#1, v7$1#AT#1) else v8$1#AT#0);
                                assume v8$2#AT#1 <==> (if p1$2#AT#1 then BV32_ULE(v6$2#AT#1, v7$2#AT#1) else v8$2#AT#0);
                                assume p3$1#AT#1 <==> (if p1$1#AT#1 && v8$1#AT#1 then v8$1#AT#1 else false);
                                assume p3$2#AT#1 <==> (if p1$2#AT#1 && v8$2#AT#1 then v8$2#AT#1 else false);
                                goto inline$_LOG_WRITE_$$output$0$Entry;

                              inline$_LOG_WRITE_$$output$0$Entry:
                                assume inline$_LOG_WRITE_$$output$0$_value_old#AT#1 == $$output#AT#0[$i.0#AT#0];
                                goto inline$_LOG_WRITE_$$output$0$log_access_entry;

                              inline$_LOG_WRITE_$$output$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$output#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then v0$1#AT#0 != inline$_LOG_WRITE_$$output$0$_value_old#AT#1 else _WRITE_READ_BENIGN_FLAG_$$output#AT#0);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#2 <==> (if p3$2#AT#1 && _WRITE_HAS_OCCURRED_$$output#AT#1 && _WATCHED_OFFSET == $i.0#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$output#AT#1);
                                goto $truebb$2;

                              $truebb$2:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} $mv_state($mv_state_const, 3) && true;
                                assume $$output#AT#1 == $$output#AT#0[$i.0#AT#0 := (if p3$1#AT#1 then v0$1#AT#0 else $$output#AT#0[$i.0#AT#0])];
                                assume $$output#AT#2 == $$output#AT#1[$i.0#AT#0 := (if p3$2#AT#1 then v0$2#AT#0 else $$output#AT#1[$i.0#AT#0])];
                                assume $i.0#AT#1 == BV32_ADD($i.0#AT#0, 1bv32);
                                assume {:captureState "loop_back_edge_state_0_0"} $mv_state($mv_state_const, 4) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0#AT#1, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output#AT#1 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#1) then 1bv1 else 0bv1) != 0bv1;
                                assume false;
                                return;
Removing _b0
Counter example for _b0
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume !_READ_HAS_OCCURRED_$$randArray && !_WRITE_HAS_OCCURRED_$$randArray && !_ATOMIC_HAS_OCCURRED_$$randArray;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume !_READ_HAS_OCCURRED_$$callA && !_WRITE_HAS_OCCURRED_$$callA && !_ATOMIC_HAS_OCCURRED_$$callA;
                                assume !_READ_HAS_OCCURRED_$$callB && !_WRITE_HAS_OCCURRED_$$callB && !_ATOMIC_HAS_OCCURRED_$$callB;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto __partitioned_block_$entry_0;

                              __partitioned_block_$entry_0:
                                assume v2$1#AT#0 == $$randArray[BV32_MUL(group_id_x$1, 4bv32)];
                                assume v2$2#AT#0 == $$randArray[BV32_MUL(group_id_x$2, 4bv32)];
                                assume v3$1#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$1, 4bv32), 1bv32)];
                                assume v3$2#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$2, 4bv32), 1bv32)];
                                assume v4$1#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$1, 4bv32), 2bv32)];
                                assume v4$2#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$2, 4bv32), 2bv32)];
                                assume v5$1#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$1, 4bv32), 3bv32)];
                                assume v5$2#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$2, 4bv32), 3bv32)];
                                assume v6#AT#0 == FDIV32(1065353216bv32, SI32_TO_FP32($numSteps));
                                assume v7$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$1#AT#0), 1048576000bv32), FMUL32(v2$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v7$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$2#AT#0), 1048576000bv32), FMUL32(v2$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v8$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$1#AT#0), 1048576000bv32), FMUL32(v3$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v8$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$2#AT#0), 1048576000bv32), FMUL32(v3$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v9$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$1#AT#0), 1048576000bv32), FMUL32(v4$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v9$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$2#AT#0), 1048576000bv32), FMUL32(v4$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v10$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$1#AT#0), 1048576000bv32), FMUL32(v5$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v10$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$2#AT#0), 1048576000bv32), FMUL32(v5$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v11$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v7$1#AT#0));
                                assume v11$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v7$2#AT#0));
                                assume v12$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v8$1#AT#0));
                                assume v12$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v8$2#AT#0));
                                assume v13$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v9$1#AT#0));
                                assume v13$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v9$2#AT#0));
                                assume v14$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v10$1#AT#0));
                                assume v14$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v10$2#AT#0));
                                assume v15$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v7$1#AT#0), 1069066811bv32));
                                assume v15$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v7$2#AT#0), 1069066811bv32));
                                assume v16$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v8$1#AT#0), 1069066811bv32));
                                assume v16$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v8$2#AT#0), 1069066811bv32));
                                assume v17$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v9$1#AT#0), 1069066811bv32));
                                assume v17$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v9$2#AT#0), 1069066811bv32));
                                assume v18$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v10$1#AT#0), 1069066811bv32));
                                assume v18$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v10$2#AT#0), 1069066811bv32));
                                assume v19$1#AT#0 == FDIV32(1065353216bv32, v15$1#AT#0);
                                assume v19$2#AT#0 == FDIV32(1065353216bv32, v15$2#AT#0);
                                assume v20$1#AT#0 == FDIV32(1065353216bv32, v16$1#AT#0);
                                assume v20$2#AT#0 == FDIV32(1065353216bv32, v16$2#AT#0);
                                assume v21$1#AT#0 == FDIV32(1065353216bv32, v17$1#AT#0);
                                assume v21$2#AT#0 == FDIV32(1065353216bv32, v17$2#AT#0);
                                assume v22$1#AT#0 == FDIV32(1065353216bv32, v18$1#AT#0);
                                assume v22$2#AT#0 == FDIV32(1065353216bv32, v18$2#AT#0);
                                assume v23$1#AT#0 == FEXP32(FMUL32(v11$1#AT#0, 1069066811bv32));
                                assume v23$2#AT#0 == FEXP32(FMUL32(v11$2#AT#0, 1069066811bv32));
                                assume v24$1#AT#0 == FEXP32(FMUL32(v12$1#AT#0, 1069066811bv32));
                                assume v24$2#AT#0 == FEXP32(FMUL32(v12$2#AT#0, 1069066811bv32));
                                assume v25$1#AT#0 == FEXP32(FMUL32(v13$1#AT#0, 1069066811bv32));
                                assume v25$2#AT#0 == FEXP32(FMUL32(v13$2#AT#0, 1069066811bv32));
                                assume v26$1#AT#0 == FEXP32(FMUL32(v14$1#AT#0, 1069066811bv32));
                                assume v26$2#AT#0 == FEXP32(FMUL32(v14$2#AT#0, 1069066811bv32));
                                assume v27$1#AT#0 == FDIV32(1065353216bv32, v23$1#AT#0);
                                assume v27$2#AT#0 == FDIV32(1065353216bv32, v23$2#AT#0);
                                assume v28$1#AT#0 == FDIV32(1065353216bv32, v24$1#AT#0);
                                assume v28$2#AT#0 == FDIV32(1065353216bv32, v24$2#AT#0);
                                assume v29$1#AT#0 == FDIV32(1065353216bv32, v25$1#AT#0);
                                assume v29$2#AT#0 == FDIV32(1065353216bv32, v25$2#AT#0);
                                assume v30$1#AT#0 == FDIV32(1065353216bv32, v26$1#AT#0);
                                assume v30$2#AT#0 == FDIV32(1065353216bv32, v26$2#AT#0);
                                assume v31$1#AT#0 == FDIV32(FSUB32(v15$1#AT#0, v27$1#AT#0), FSUB32(v23$1#AT#0, v27$1#AT#0));
                                assume v31$2#AT#0 == FDIV32(FSUB32(v15$2#AT#0, v27$2#AT#0), FSUB32(v23$2#AT#0, v27$2#AT#0));
                                assume v32$1#AT#0 == FDIV32(FSUB32(v16$1#AT#0, v28$1#AT#0), FSUB32(v24$1#AT#0, v28$1#AT#0));
                                assume v32$2#AT#0 == FDIV32(FSUB32(v16$2#AT#0, v28$2#AT#0), FSUB32(v24$2#AT#0, v28$2#AT#0));
                                assume v33$1#AT#0 == FDIV32(FSUB32(v17$1#AT#0, v29$1#AT#0), FSUB32(v25$1#AT#0, v29$1#AT#0));
                                assume v33$2#AT#0 == FDIV32(FSUB32(v17$2#AT#0, v29$2#AT#0), FSUB32(v25$2#AT#0, v29$2#AT#0));
                                assume v34$1#AT#0 == FDIV32(FSUB32(v18$1#AT#0, v30$1#AT#0), FSUB32(v26$1#AT#0, v30$1#AT#0));
                                assume v34$2#AT#0 == FDIV32(FSUB32(v18$2#AT#0, v30$2#AT#0), FSUB32(v26$2#AT#0, v30$2#AT#0));
                                assume v35$1#AT#0 == FMUL32(v31$1#AT#0, v19$1#AT#0);
                                assume v35$2#AT#0 == FMUL32(v31$2#AT#0, v19$2#AT#0);
                                assume v36$1#AT#0 == FMUL32(v32$1#AT#0, v20$1#AT#0);
                                assume v36$2#AT#0 == FMUL32(v32$2#AT#0, v20$2#AT#0);
                                assume v37$1#AT#0 == FMUL32(v33$1#AT#0, v21$1#AT#0);
                                assume v37$2#AT#0 == FMUL32(v33$2#AT#0, v21$2#AT#0);
                                assume v38$1#AT#0 == FMUL32(v34$1#AT#0, v22$1#AT#0);
                                assume v38$2#AT#0 == FMUL32(v34$2#AT#0, v22$2#AT#0);
                                assume v39$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v31$1#AT#0), v19$1#AT#0);
                                assume v39$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v31$2#AT#0), v19$2#AT#0);
                                assume v40$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v32$1#AT#0), v20$1#AT#0);
                                assume v40$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v32$2#AT#0), v20$2#AT#0);
                                assume v41$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v33$1#AT#0), v21$1#AT#0);
                                assume v41$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v33$2#AT#0), v21$2#AT#0);
                                assume v42$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v34$1#AT#0), v22$1#AT#0);
                                assume v42$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v34$2#AT#0), v22$2#AT#0);
                                assume v43$1#AT#0 == FADD32(FMUL32(1073741824bv32, UI32_TO_FP32(local_id_x$1)), FSUB32(2147483648bv32, SI32_TO_FP32($numSteps)));
                                assume v43$2#AT#0 == FADD32(FMUL32(1073741824bv32, UI32_TO_FP32(local_id_x$2)), FSUB32(2147483648bv32, SI32_TO_FP32($numSteps)));
                                assume v44$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$1#AT#0), 1084227584bv32), FMUL32(v2$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v11$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v2$1#AT#0), 1065353216bv32), FMUL32(v2$1#AT#0, 1120403456bv32))));
                                assume v44$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$2#AT#0), 1084227584bv32), FMUL32(v2$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v11$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v2$2#AT#0), 1065353216bv32), FMUL32(v2$2#AT#0, 1120403456bv32))));
                                assume v45$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$1#AT#0), 1084227584bv32), FMUL32(v3$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v12$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v3$1#AT#0), 1065353216bv32), FMUL32(v3$1#AT#0, 1120403456bv32))));
                                assume v45$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$2#AT#0), 1084227584bv32), FMUL32(v3$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v12$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v3$2#AT#0), 1065353216bv32), FMUL32(v3$2#AT#0, 1120403456bv32))));
                                assume v46$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$1#AT#0), 1084227584bv32), FMUL32(v4$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v13$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v4$1#AT#0), 1065353216bv32), FMUL32(v4$1#AT#0, 1120403456bv32))));
                                assume v46$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$2#AT#0), 1084227584bv32), FMUL32(v4$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v13$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v4$2#AT#0), 1065353216bv32), FMUL32(v4$2#AT#0, 1120403456bv32))));
                                assume v47$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$1#AT#0), 1084227584bv32), FMUL32(v5$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v14$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v5$1#AT#0), 1065353216bv32), FMUL32(v5$1#AT#0, 1120403456bv32))));
                                assume v47$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$2#AT#0), 1084227584bv32), FMUL32(v5$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v14$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v5$2#AT#0), 1065353216bv32), FMUL32(v5$2#AT#0, 1120403456bv32))));
                                assume v48$1#AT#0 <==> FLT32(0bv32, v44$1#AT#0);
                                assume v48$2#AT#0 <==> FLT32(0bv32, v44$2#AT#0);
                                assume p0$1#AT#0 <==> (if v48$1#AT#0 then v48$1#AT#0 else false);
                                assume p0$2#AT#0 <==> (if v48$2#AT#0 then v48$2#AT#0 else false);
                                assume p1$1#AT#0 <==> (if !v48$1#AT#0 then !v48$1#AT#0 else false);
                                assume p1$2#AT#0 <==> (if !v48$2#AT#0 then !v48$2#AT#0 else false);
                                assume $cond$1#AT#0 == (if p0$1#AT#0 then v44$1#AT#0 else $cond$1);
                                assume $cond$2#AT#0 == (if p0$2#AT#0 then v44$2#AT#0 else $cond$2);
                                assume $cond$1#AT#1 == (if p1$1#AT#0 then 0bv32 else $cond$1#AT#0);
                                assume $cond$2#AT#1 == (if p1$2#AT#0 then 0bv32 else $cond$2#AT#0);
                                goto inline$_LOG_READ_$$callA$0$Entry;

                              inline$_LOG_READ_$$callA$0$Entry:
                                assume inline$_LOG_READ_$$callA$0$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$0$_value#AT#0 == $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$0$log_access_entry;

                              inline$_LOG_READ_$$callA$0$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#0 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$0$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$0$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA);
                                goto __partitioned_block_$entry_0$1;

                              __partitioned_block_$entry_0$1:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} $mv_state($mv_state_const, 0) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 1) && true;
                                assume v49$1#AT#0 == $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v49$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$1$Entry;

                              inline$_LOG_READ_$$callA$1$Entry:
                                assume inline$_LOG_READ_$$callA$1$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$1$_value#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$1$log_access_entry;

                              inline$_LOG_READ_$$callA$1$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#1 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$1$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$1$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#0);
                                goto __partitioned_block_$entry_0$2;

                              __partitioned_block_$entry_0$2:
                                assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 3) && true;
                                assume v50$1#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v50$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$2$Entry;

                              inline$_LOG_READ_$$callA$2$Entry:
                                assume inline$_LOG_READ_$$callA$2$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$2$_value#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$2$log_access_entry;

                              inline$_LOG_READ_$$callA$2$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#2 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$2$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$2$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#1);
                                goto __partitioned_block_$entry_0$3;

                              __partitioned_block_$entry_0$3:
                                assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} $mv_state($mv_state_const, 4) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 5) && true;
                                assume v51$1#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v51$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$3$Entry;

                              inline$_LOG_READ_$$callA$3$Entry:
                                assume inline$_LOG_READ_$$callA$3$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$3$_value#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$3$log_access_entry;

                              inline$_LOG_READ_$$callA$3$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#3 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$3$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$3$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#2);
                                goto __partitioned_block_$entry_0$4;

                              __partitioned_block_$entry_0$4:
                                assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 6) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 7) && true;
                                assume v52$1#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v52$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$0$Entry;

                              inline$_LOG_WRITE_$$callA$0$Entry:
                                assume inline$_LOG_WRITE_$$callA$0$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$0$_value_old#AT#0 == $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$0$log_access_entry;

                              inline$_LOG_WRITE_$$callA$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#0 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$0$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#0 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$0$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond$1#AT#1 then $cond$1#AT#1 != inline$_LOG_WRITE_$$callA$0$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#1 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#0 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#0);
                                goto __partitioned_block_$entry_0$6;

                              __partitioned_block_$entry_0$6:
                                assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 12} $mv_state($mv_state_const, 8) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 9) && true;
                                assume $$callA#AT#0 == $$callA[1bv1 := $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32) := $cond$1#AT#1]];
                                assume $$callA#AT#1 == $$callA#AT#0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := $cond$2#AT#1]];
                                goto inline$_LOG_WRITE_$$callA$1$Entry;

                              inline$_LOG_WRITE_$$callA$1$Entry:
                                assume inline$_LOG_WRITE_$$callA$1$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$1$_value_old#AT#0 == $$callA#AT#1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$1$log_access_entry;

                              inline$_LOG_WRITE_$$callA$1$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#1 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$1$_offset#AT#0 && _WATCHED_VALUE_$$callA == v50$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#2 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$1$_offset#AT#0 && _WATCHED_VALUE_$$callA == v50$1#AT#0 then v50$1#AT#0 != inline$_LOG_WRITE_$$callA$1$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#1);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#3 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#1 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#2);
                                goto __partitioned_block_$entry_0$8;

                              __partitioned_block_$entry_0$8:
                                assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 13} $mv_state($mv_state_const, 10) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 11) && true;
                                assume $$callA#AT#2 == $$callA#AT#1[1bv1 := $$callA#AT#1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := v50$1#AT#0]];
                                assume $$callA#AT#3 == $$callA#AT#2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := v50$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$2$Entry;

                              inline$_LOG_WRITE_$$callA$2$Entry:
                                assume inline$_LOG_WRITE_$$callA$2$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$2$_value_old#AT#0 == $$callA#AT#3[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$2$log_access_entry;

                              inline$_LOG_WRITE_$$callA$2$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#2 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$2$_offset#AT#0 && _WATCHED_VALUE_$$callA == v51$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#1);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#4 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$2$_offset#AT#0 && _WATCHED_VALUE_$$callA == v51$1#AT#0 then v51$1#AT#0 != inline$_LOG_WRITE_$$callA$2$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#3);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#5 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#2 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#4);
                                goto __partitioned_block_$entry_0$10;

                              __partitioned_block_$entry_0$10:
                                assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 14} $mv_state($mv_state_const, 12) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 13) && true;
                                assume $$callA#AT#4 == $$callA#AT#3[1bv1 := $$callA#AT#3[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := v51$1#AT#0]];
                                assume $$callA#AT#5 == $$callA#AT#4[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#4[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := v51$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$3$Entry;

                              inline$_LOG_WRITE_$$callA$3$Entry:
                                assume inline$_LOG_WRITE_$$callA$3$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$3$_value_old#AT#0 == $$callA#AT#5[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$3$log_access_entry;

                              inline$_LOG_WRITE_$$callA$3$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#3 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$3$_offset#AT#0 && _WATCHED_VALUE_$$callA == v52$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#2);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#6 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$3$_offset#AT#0 && _WATCHED_VALUE_$$callA == v52$1#AT#0 then v52$1#AT#0 != inline$_LOG_WRITE_$$callA$3$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#5);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#7 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#3 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#6);
                                goto __partitioned_block_$entry_0$12;

                              __partitioned_block_$entry_0$12:
                                assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 15} $mv_state($mv_state_const, 14) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 15) && true;
                                assume $$callA#AT#6 == $$callA#AT#5[1bv1 := $$callA#AT#5[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := v52$1#AT#0]];
                                assume $$callA#AT#7 == $$callA#AT#6[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#6[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := v52$2#AT#0]];
                                assume v53$1#AT#0 <==> FLT32(0bv32, v45$1#AT#0);
                                assume v53$2#AT#0 <==> FLT32(0bv32, v45$2#AT#0);
                                assume p2$1#AT#0 <==> (if v53$1#AT#0 then v53$1#AT#0 else false);
                                assume p2$2#AT#0 <==> (if v53$2#AT#0 then v53$2#AT#0 else false);
                                assume p3$1#AT#0 <==> (if !v53$1#AT#0 then !v53$1#AT#0 else false);
                                assume p3$2#AT#0 <==> (if !v53$2#AT#0 then !v53$2#AT#0 else false);
                                assume $cond36$1#AT#0 == (if p2$1#AT#0 then v45$1#AT#0 else $cond36$1);
                                assume $cond36$2#AT#0 == (if p2$2#AT#0 then v45$2#AT#0 else $cond36$2);
                                assume $cond36$1#AT#1 == (if p3$1#AT#0 then 0bv32 else $cond36$1#AT#0);
                                assume $cond36$2#AT#1 == (if p3$2#AT#0 then 0bv32 else $cond36$2#AT#0);
                                goto inline$_LOG_READ_$$callA$4$Entry;

                              inline$_LOG_READ_$$callA$4$Entry:
                                assume inline$_LOG_READ_$$callA$4$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$4$_value#AT#0 == $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$4$log_access_entry;

                              inline$_LOG_READ_$$callA$4$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#4 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$4$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$4$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#3);
                                goto __partitioned_block_$entry_0$13;

                              __partitioned_block_$entry_0$13:
                                assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 19} $mv_state($mv_state_const, 16) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 17) && true;
                                assume v54$1#AT#0 == $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v54$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$5$Entry;

                              inline$_LOG_READ_$$callA$5$Entry:
                                assume inline$_LOG_READ_$$callA$5$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$5$_value#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$5$log_access_entry;

                              inline$_LOG_READ_$$callA$5$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#5 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$5$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$5$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#4);
                                goto __partitioned_block_$entry_0$14;

                              __partitioned_block_$entry_0$14:
                                assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 20} $mv_state($mv_state_const, 18) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 19) && true;
                                assume v55$1#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v55$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$6$Entry;

                              inline$_LOG_READ_$$callA$6$Entry:
                                assume inline$_LOG_READ_$$callA$6$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$6$_value#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$6$log_access_entry;

                              inline$_LOG_READ_$$callA$6$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#6 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$6$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$6$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#5);
                                goto __partitioned_block_$entry_0$15;

                              __partitioned_block_$entry_0$15:
                                assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 21} $mv_state($mv_state_const, 20) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 21) && true;
                                assume v56$1#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v56$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$7$Entry;

                              inline$_LOG_READ_$$callA$7$Entry:
                                assume inline$_LOG_READ_$$callA$7$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$7$_value#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$7$log_access_entry;

                              inline$_LOG_READ_$$callA$7$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#7 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$7$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$7$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#6);
                                goto __partitioned_block_$entry_0$16;

                              __partitioned_block_$entry_0$16:
                                assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 22} $mv_state($mv_state_const, 22) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 23) && true;
                                assume v57$1#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v57$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$4$Entry;

                              inline$_LOG_WRITE_$$callA$4$Entry:
                                assume inline$_LOG_WRITE_$$callA$4$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$4$_value_old#AT#0 == $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$4$log_access_entry;

                              inline$_LOG_WRITE_$$callA$4$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#4 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$4$_offset#AT#0 && _WATCHED_VALUE_$$callA == v54$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#3);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#8 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$4$_offset#AT#0 && _WATCHED_VALUE_$$callA == v54$1#AT#0 then v54$1#AT#0 != inline$_LOG_WRITE_$$callA$4$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#7);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#9 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#4 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#8);
                                goto __partitioned_block_$entry_0$18;

                              __partitioned_block_$entry_0$18:
                                assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 23} $mv_state($mv_state_const, 24) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 25) && true;
                                assume $$callA#AT#8 == $$callA#AT#7[1bv1 := $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32) := v54$1#AT#0]];
                                assume $$callA#AT#9 == $$callA#AT#8[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#8[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := v54$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$5$Entry;

                              inline$_LOG_WRITE_$$callA$5$Entry:
                                assume inline$_LOG_WRITE_$$callA$5$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$5$_value_old#AT#0 == $$callA#AT#9[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$5$log_access_entry;

                              inline$_LOG_WRITE_$$callA$5$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#5 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$5$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond36$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA#AT#4);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#10 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$5$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond36$1#AT#1 then $cond36$1#AT#1 != inline$_LOG_WRITE_$$callA$5$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#9);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#11 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#5 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#10);
                                goto __partitioned_block_$entry_0$20;

                              __partitioned_block_$entry_0$20:
                                assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 24} $mv_state($mv_state_const, 26) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 27) && true;
                                assume $$callA#AT#10 == $$callA#AT#9[1bv1 := $$callA#AT#9[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := $cond36$1#AT#1]];
                                assume $$callA#AT#11 == $$callA#AT#10[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#10[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := $cond36$2#AT#1]];
                                goto inline$_LOG_WRITE_$$callA$6$Entry;

                              inline$_LOG_WRITE_$$callA$6$Entry:
                                assume inline$_LOG_WRITE_$$callA$6$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$6$_value_old#AT#0 == $$callA#AT#11[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$6$log_access_entry;

                              inline$_LOG_WRITE_$$callA$6$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#6 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$6$_offset#AT#0 && _WATCHED_VALUE_$$callA == v56$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#5);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#12 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$6$_offset#AT#0 && _WATCHED_VALUE_$$callA == v56$1#AT#0 then v56$1#AT#0 != inline$_LOG_WRITE_$$callA$6$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#11);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#13 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#6 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#12);
                                goto __partitioned_block_$entry_0$22;

                              __partitioned_block_$entry_0$22:
                                assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 25} $mv_state($mv_state_const, 28) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 29) && true;
                                assume $$callA#AT#12 == $$callA#AT#11[1bv1 := $$callA#AT#11[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := v56$1#AT#0]];
                                assume $$callA#AT#13 == $$callA#AT#12[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#12[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := v56$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$7$Entry;

                              inline$_LOG_WRITE_$$callA$7$Entry:
                                assume inline$_LOG_WRITE_$$callA$7$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$7$_value_old#AT#0 == $$callA#AT#13[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$7$log_access_entry;

                              inline$_LOG_WRITE_$$callA$7$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#7 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$7$_offset#AT#0 && _WATCHED_VALUE_$$callA == v57$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#6);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#14 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$7$_offset#AT#0 && _WATCHED_VALUE_$$callA == v57$1#AT#0 then v57$1#AT#0 != inline$_LOG_WRITE_$$callA$7$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#13);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#15 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#7 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#14);
                                goto __partitioned_block_$entry_0$24;

                              __partitioned_block_$entry_0$24:
                                assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 26} $mv_state($mv_state_const, 30) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 31) && true;
                                assume $$callA#AT#14 == $$callA#AT#13[1bv1 := $$callA#AT#13[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := v57$1#AT#0]];
                                assume $$callA#AT#15 == $$callA#AT#14[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#14[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := v57$2#AT#0]];
                                assume v58$1#AT#0 <==> FLT32(0bv32, v46$1#AT#0);
                                assume v58$2#AT#0 <==> FLT32(0bv32, v46$2#AT#0);
                                assume p4$1#AT#0 <==> (if v58$1#AT#0 then v58$1#AT#0 else false);
                                assume p4$2#AT#0 <==> (if v58$2#AT#0 then v58$2#AT#0 else false);
                                assume p5$1#AT#0 <==> (if !v58$1#AT#0 then !v58$1#AT#0 else false);
                                assume p5$2#AT#0 <==> (if !v58$2#AT#0 then !v58$2#AT#0 else false);
                                assume $cond43$1#AT#0 == (if p4$1#AT#0 then v46$1#AT#0 else $cond43$1);
                                assume $cond43$2#AT#0 == (if p4$2#AT#0 then v46$2#AT#0 else $cond43$2);
                                assume $cond43$1#AT#1 == (if p5$1#AT#0 then 0bv32 else $cond43$1#AT#0);
                                assume $cond43$2#AT#1 == (if p5$2#AT#0 then 0bv32 else $cond43$2#AT#0);
                                goto inline$_LOG_READ_$$callA$8$Entry;

                              inline$_LOG_READ_$$callA$8$Entry:
                                assume inline$_LOG_READ_$$callA$8$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$8$_value#AT#0 == $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$8$log_access_entry;

                              inline$_LOG_READ_$$callA$8$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#8 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$8$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$8$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#7);
                                goto __partitioned_block_$entry_0$25;

                              __partitioned_block_$entry_0$25:
                                assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 30} $mv_state($mv_state_const, 32) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 33) && true;
                                assume v59$1#AT#0 == $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v59$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$9$Entry;

                              inline$_LOG_READ_$$callA$9$Entry:
                                assume inline$_LOG_READ_$$callA$9$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$9$_value#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$9$log_access_entry;

                              inline$_LOG_READ_$$callA$9$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#9 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$9$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$9$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#8);
                                goto __partitioned_block_$entry_0$26;

                              __partitioned_block_$entry_0$26:
                                assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 31} $mv_state($mv_state_const, 34) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 35) && true;
                                assume v60$1#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v60$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$10$Entry;

                              inline$_LOG_READ_$$callA$10$Entry:
                                assume inline$_LOG_READ_$$callA$10$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$10$_value#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$10$log_access_entry;

                              inline$_LOG_READ_$$callA$10$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#10 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$10$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$10$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#9);
                                goto __partitioned_block_$entry_0$27;

                              __partitioned_block_$entry_0$27:
                                assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 32} $mv_state($mv_state_const, 36) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 37) && true;
                                assume v61$1#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v61$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$11$Entry;

                              inline$_LOG_READ_$$callA$11$Entry:
                                assume inline$_LOG_READ_$$callA$11$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$11$_value#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$11$log_access_entry;

                              inline$_LOG_READ_$$callA$11$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#11 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$11$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$11$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#10);
                                goto __partitioned_block_$entry_0$28;

                              __partitioned_block_$entry_0$28:
                                assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 33} $mv_state($mv_state_const, 38) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 39) && true;
                                assume v62$1#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v62$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$8$Entry;

                              inline$_LOG_WRITE_$$callA$8$Entry:
                                assume inline$_LOG_WRITE_$$callA$8$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$8$_value_old#AT#0 == $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$8$log_access_entry;

                              inline$_LOG_WRITE_$$callA$8$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#8 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$8$_offset#AT#0 && _WATCHED_VALUE_$$callA == v59$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#7);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#16 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$8$_offset#AT#0 && _WATCHED_VALUE_$$callA == v59$1#AT#0 then v59$1#AT#0 != inline$_LOG_WRITE_$$callA$8$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#15);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#17 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#8 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#16);
                                goto __partitioned_block_$entry_0$30;

                              __partitioned_block_$entry_0$30:
                                assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 34} $mv_state($mv_state_const, 40) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 41) && true;
                                assume $$callA#AT#16 == $$callA#AT#15[1bv1 := $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32) := v59$1#AT#0]];
                                assume $$callA#AT#17 == $$callA#AT#16[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#16[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := v59$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$9$Entry;

                              inline$_LOG_WRITE_$$callA$9$Entry:
                                assume inline$_LOG_WRITE_$$callA$9$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$9$_value_old#AT#0 == $$callA#AT#17[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$9$log_access_entry;

                              inline$_LOG_WRITE_$$callA$9$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#9 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$9$_offset#AT#0 && _WATCHED_VALUE_$$callA == v60$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#8);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#18 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$9$_offset#AT#0 && _WATCHED_VALUE_$$callA == v60$1#AT#0 then v60$1#AT#0 != inline$_LOG_WRITE_$$callA$9$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#17);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#19 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#9 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#18);
                                goto __partitioned_block_$entry_0$32;

                              __partitioned_block_$entry_0$32:
                                assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 35} $mv_state($mv_state_const, 42) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 43) && true;
                                assume $$callA#AT#18 == $$callA#AT#17[1bv1 := $$callA#AT#17[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := v60$1#AT#0]];
                                assume $$callA#AT#19 == $$callA#AT#18[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#18[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := v60$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$10$Entry;

                              inline$_LOG_WRITE_$$callA$10$Entry:
                                assume inline$_LOG_WRITE_$$callA$10$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$10$_value_old#AT#0 == $$callA#AT#19[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$10$log_access_entry;

                              inline$_LOG_WRITE_$$callA$10$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#10 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$10$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond43$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA#AT#9);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#20 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$10$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond43$1#AT#1 then $cond43$1#AT#1 != inline$_LOG_WRITE_$$callA$10$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#19);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#21 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#10 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#20);
                                goto __partitioned_block_$entry_0$34;

                              __partitioned_block_$entry_0$34:
                                assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 36} $mv_state($mv_state_const, 44) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 45) && true;
                                assume $$callA#AT#20 == $$callA#AT#19[1bv1 := $$callA#AT#19[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := $cond43$1#AT#1]];
                                assume $$callA#AT#21 == $$callA#AT#20[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#20[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := $cond43$2#AT#1]];
                                goto inline$_LOG_WRITE_$$callA$11$Entry;

                              inline$_LOG_WRITE_$$callA$11$Entry:
                                assume inline$_LOG_WRITE_$$callA$11$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$11$_value_old#AT#0 == $$callA#AT#21[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$11$log_access_entry;

                              inline$_LOG_WRITE_$$callA$11$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#11 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$11$_offset#AT#0 && _WATCHED_VALUE_$$callA == v62$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#10);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#22 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$11$_offset#AT#0 && _WATCHED_VALUE_$$callA == v62$1#AT#0 then v62$1#AT#0 != inline$_LOG_WRITE_$$callA$11$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#21);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#23 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#11 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#22);
                                goto __partitioned_block_$entry_0$36;

                              __partitioned_block_$entry_0$36:
                                assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 37} $mv_state($mv_state_const, 46) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 47) && true;
                                assume $$callA#AT#22 == $$callA#AT#21[1bv1 := $$callA#AT#21[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := v62$1#AT#0]];
                                assume $$callA#AT#23 == $$callA#AT#22[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#22[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := v62$2#AT#0]];
                                assume v63$1#AT#0 <==> FLT32(0bv32, v47$1#AT#0);
                                assume v63$2#AT#0 <==> FLT32(0bv32, v47$2#AT#0);
                                assume p6$1#AT#0 <==> (if v63$1#AT#0 then v63$1#AT#0 else false);
                                assume p6$2#AT#0 <==> (if v63$2#AT#0 then v63$2#AT#0 else false);
                                assume p7$1#AT#0 <==> (if !v63$1#AT#0 then !v63$1#AT#0 else false);
                                assume p7$2#AT#0 <==> (if !v63$2#AT#0 then !v63$2#AT#0 else false);
                                assume $cond50$1#AT#0 == (if p6$1#AT#0 then v47$1#AT#0 else $cond50$1);
                                assume $cond50$2#AT#0 == (if p6$2#AT#0 then v47$2#AT#0 else $cond50$2);
                                assume $cond50$1#AT#1 == (if p7$1#AT#0 then 0bv32 else $cond50$1#AT#0);
                                assume $cond50$2#AT#1 == (if p7$2#AT#0 then 0bv32 else $cond50$2#AT#0);
                                goto inline$_LOG_READ_$$callA$12$Entry;

                              inline$_LOG_READ_$$callA$12$Entry:
                                assume inline$_LOG_READ_$$callA$12$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$12$_value#AT#0 == $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$12$log_access_entry;

                              inline$_LOG_READ_$$callA$12$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#12 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$12$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$12$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#11);
                                goto __partitioned_block_$entry_0$37;

                              __partitioned_block_$entry_0$37:
                                assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 41} $mv_state($mv_state_const, 48) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 49) && true;
                                assume v64$1#AT#0 == $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v64$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$13$Entry;

                              inline$_LOG_READ_$$callA$13$Entry:
                                assume inline$_LOG_READ_$$callA$13$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$13$_value#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$13$log_access_entry;

                              inline$_LOG_READ_$$callA$13$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#13 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$13$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$13$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#12);
                                goto __partitioned_block_$entry_0$38;

                              __partitioned_block_$entry_0$38:
                                assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 42} $mv_state($mv_state_const, 50) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 51) && true;
                                assume v65$1#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v65$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$14$Entry;

                              inline$_LOG_READ_$$callA$14$Entry:
                                assume inline$_LOG_READ_$$callA$14$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$14$_value#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$14$log_access_entry;

                              inline$_LOG_READ_$$callA$14$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#14 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$14$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$14$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#13);
                                goto __partitioned_block_$entry_0$39;

                              __partitioned_block_$entry_0$39:
                                assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 43} $mv_state($mv_state_const, 52) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 53) && true;
                                assume v66$1#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v66$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$15$Entry;

                              inline$_LOG_READ_$$callA$15$Entry:
                                assume inline$_LOG_READ_$$callA$15$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$15$_value#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$15$log_access_entry;

                              inline$_LOG_READ_$$callA$15$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#15 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$15$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$15$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#14);
                                goto __partitioned_block_$entry_0$40;

                              __partitioned_block_$entry_0$40:
                                assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 44} $mv_state($mv_state_const, 54) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 55) && true;
                                assume v67$1#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v67$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$12$Entry;

                              inline$_LOG_WRITE_$$callA$12$Entry:
                                assume inline$_LOG_WRITE_$$callA$12$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$12$_value_old#AT#0 == $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$12$log_access_entry;

                              inline$_LOG_WRITE_$$callA$12$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#12 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$12$_offset#AT#0 && _WATCHED_VALUE_$$callA == v64$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#11);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#24 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$12$_offset#AT#0 && _WATCHED_VALUE_$$callA == v64$1#AT#0 then v64$1#AT#0 != inline$_LOG_WRITE_$$callA$12$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#23);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#25 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#12 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#24);
                                goto __partitioned_block_$entry_0$42;

                              __partitioned_block_$entry_0$42:
                                assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 45} $mv_state($mv_state_const, 56) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 57) && true;
                                assume $$callA#AT#24 == $$callA#AT#23[1bv1 := $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32) := v64$1#AT#0]];
                                assume $$callA#AT#25 == $$callA#AT#24[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#24[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := v64$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$13$Entry;

                              inline$_LOG_WRITE_$$callA$13$Entry:
                                assume inline$_LOG_WRITE_$$callA$13$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$13$_value_old#AT#0 == $$callA#AT#25[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$13$log_access_entry;

                              inline$_LOG_WRITE_$$callA$13$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#13 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$13$_offset#AT#0 && _WATCHED_VALUE_$$callA == v65$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#12);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#26 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$13$_offset#AT#0 && _WATCHED_VALUE_$$callA == v65$1#AT#0 then v65$1#AT#0 != inline$_LOG_WRITE_$$callA$13$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#25);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#27 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#13 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#26);
                                goto __partitioned_block_$entry_0$44;

                              __partitioned_block_$entry_0$44:
                                assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 46} $mv_state($mv_state_const, 58) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 59) && true;
                                assume $$callA#AT#26 == $$callA#AT#25[1bv1 := $$callA#AT#25[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := v65$1#AT#0]];
                                assume $$callA#AT#27 == $$callA#AT#26[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#26[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := v65$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$14$Entry;

                              inline$_LOG_WRITE_$$callA$14$Entry:
                                assume inline$_LOG_WRITE_$$callA$14$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$14$_value_old#AT#0 == $$callA#AT#27[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$14$log_access_entry;

                              inline$_LOG_WRITE_$$callA$14$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#14 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$14$_offset#AT#0 && _WATCHED_VALUE_$$callA == v66$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#13);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#28 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$14$_offset#AT#0 && _WATCHED_VALUE_$$callA == v66$1#AT#0 then v66$1#AT#0 != inline$_LOG_WRITE_$$callA$14$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#27);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#29 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#14 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#28);
                                goto __partitioned_block_$entry_0$46;

                              __partitioned_block_$entry_0$46:
                                assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 47} $mv_state($mv_state_const, 60) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 61) && true;
                                assume $$callA#AT#28 == $$callA#AT#27[1bv1 := $$callA#AT#27[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := v66$1#AT#0]];
                                assume $$callA#AT#29 == $$callA#AT#28[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#28[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := v66$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$15$Entry;

                              inline$_LOG_WRITE_$$callA$15$Entry:
                                assume inline$_LOG_WRITE_$$callA$15$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$15$_value_old#AT#0 == $$callA#AT#29[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$15$log_access_entry;

                              inline$_LOG_WRITE_$$callA$15$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#15 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$15$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond50$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA#AT#14);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#30 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$15$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond50$1#AT#1 then $cond50$1#AT#1 != inline$_LOG_WRITE_$$callA$15$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#29);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#31 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#15 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#30);
                                goto __partitioned_block_$entry_0$48;

                              __partitioned_block_$entry_0$48:
                                assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 48} $mv_state($mv_state_const, 62) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 63) && true;
                                assume $$callA#AT#30 == $$callA#AT#29[1bv1 := $$callA#AT#29[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := $cond50$1#AT#1]];
                                assume $$callA#AT#31 == $$callA#AT#30[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#30[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := $cond50$2#AT#1]];
                                goto inline$$bugle_barrier_duplicated_0$0$Entry;

                              inline$$bugle_barrier_duplicated_0$0$Entry:
                                assert 1bv1 == 1bv1;
                                assert 0bv1 == 0bv1;
                                goto inline$$bugle_barrier_duplicated_0$0$anon9_Then, inline$$bugle_barrier_duplicated_0$0$anon9_Else;

                              inline$$bugle_barrier_duplicated_0$0$anon9_Else:
                                assume {:partition} true;
                                assume 1bv1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$callA#AT#15;
                                assume 1bv1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$callA#AT#15;
                                assume 1bv1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$callA;
                                assume 1bv1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$callB;
                                assume 1bv1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$callB;
                                assume 1bv1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$callB;
                                goto inline$$bugle_barrier_duplicated_0$0$anon10_Then, inline$$bugle_barrier_duplicated_0$0$anon10_Else;

                              inline$$bugle_barrier_duplicated_0$0$anon10_Then:
                                assume {:partition} 1bv1 != 0bv1 || 1bv1 != 0bv1;
                                goto inline$$bugle_barrier_duplicated_0$0$anon5;

                              inline$$bugle_barrier_duplicated_0$0$anon5:
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> 0bv1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$output;
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> 0bv1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$output;
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> 0bv1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$output;
                                goto inline$$bugle_barrier_duplicated_0$0$anon11_Then, inline$$bugle_barrier_duplicated_0$0$anon11_Else;

                              inline$$bugle_barrier_duplicated_0$0$anon11_Else:
                                assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (0bv1 != 0bv1 || 0bv1 != 0bv1));
                                goto __partitioned_block_$entry_0$49;

                              __partitioned_block_$entry_0$49:
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 64) && true;
                                assert {:tag "accessedOffsetsSatisfyPredicates"} _b10 ==> _WRITE_HAS_OCCURRED_$$callB ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assert {:tag "nowrite"} _b9 ==> !_WRITE_HAS_OCCURRED_$$callB;
                                assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _WRITE_HAS_OCCURRED_$$callA#AT#15 ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _READ_HAS_OCCURRED_$$callA#AT#15 ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) || _WATCHED_OFFSET == BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32), 3bv32);
                                assert {:tag "nowrite"} _b6 ==> !_WRITE_HAS_OCCURRED_$$callA#AT#15;
                                assert {:tag "noread"} _b5 ==> !_READ_HAS_OCCURRED_$$callA#AT#15;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$callA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$callA#AT#15 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$callA#AT#15 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($numSteps, $numSteps);
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($numSteps, $numSteps);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($numSteps, $numSteps);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($numSteps, $numSteps);
                                assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $numSteps);
                                assert {:block_sourceloc} {:sourceloc_num 50} true;
                                goto $for.cond;
Removing _b2
Counter example for _b2
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume (if BV32_ULT($numKeys, 16777216bv32) then 1bv1 else 0bv1) != 0bv1;
                                assume !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
                                assume !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto $entry;

                              $entry:
                                assume v0$1#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 256bv32);
                                assume v0$2#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), 256bv32);
                                assume v1$1#AT#0 == BV32_ADD(v0$1#AT#0, 255bv32);
                                assume v1$2#AT#0 == BV32_ADD(v0$2#AT#0, 255bv32);
                                assume BV1_ZEXT32((if BV32_SLT(v0$1#AT#0, v1$1#AT#0) ==> BV32_ULT($$input[v0$1#AT#0], $$input[v1$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v0$2#AT#0, v1$2#AT#0) ==> BV32_ULT($$input[v0$2#AT#0], $$input[v1$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 0) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE(0bv32, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 0bv32) then 1bv1 else 0bv1) != 0bv1;
                                goto $for.cond;

                              $for.cond:
                                assume {:captureState "loop_head_state_0"} $mv_state($mv_state_const, 1) && true;
                                assume _b3 ==> BV32_UGE($i.0#AT#0, 0bv32);
                                assume _b2 ==> BV32_ULE($i.0#AT#0, 0bv32);
                                assume _b1 ==> BV32_SGE($i.0#AT#0, 0bv32);
                                assume _b0 ==> BV32_SLE($i.0#AT#0, 0bv32);
                                assume true;
                                assume (if _WRITE_HAS_OCCURRED_$$output#AT#0 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#0) then 1bv1 else 0bv1) != 0bv1;
                                assume v2#AT#1 <==> BV32_ULT($i.0#AT#0, $numKeys);
                                goto $truebb, $falsebb;

                              $truebb:
                                assume {:partition} v2#AT#1;
                                assume v3$1#AT#1 == $$keys[$i.0#AT#0];
                                assume v3$2#AT#1 == $$keys[$i.0#AT#0];
                                assume v4$1#AT#1 == $$input[v0$1#AT#0];
                                assume v4$2#AT#1 == $$input[v0$2#AT#0];
                                assume v5$1#AT#1 <==> BV32_UGE(v3$1#AT#1, v4$1#AT#1);
                                assume v5$2#AT#1 <==> BV32_UGE(v3$2#AT#1, v4$2#AT#1);
                                assume p1$1#AT#1 <==> (if v5$1#AT#1 then v5$1#AT#1 else false);
                                assume p1$2#AT#1 <==> (if v5$2#AT#1 then v5$2#AT#1 else false);
                                assume v6$1#AT#1 == (if p1$1#AT#1 then $$keys[$i.0#AT#0] else v6$1#AT#0);
                                assume v6$2#AT#1 == (if p1$2#AT#1 then $$keys[$i.0#AT#0] else v6$2#AT#0);
                                assume v7$1#AT#1 == (if p1$1#AT#1 then $$input[v1$1#AT#0] else v7$1#AT#0);
                                assume v7$2#AT#1 == (if p1$2#AT#1 then $$input[v1$2#AT#0] else v7$2#AT#0);
                                assume v8$1#AT#1 <==> (if p1$1#AT#1 then BV32_ULE(v6$1#AT#1, v7$1#AT#1) else v8$1#AT#0);
                                assume v8$2#AT#1 <==> (if p1$2#AT#1 then BV32_ULE(v6$2#AT#1, v7$2#AT#1) else v8$2#AT#0);
                                assume p3$1#AT#1 <==> (if p1$1#AT#1 && v8$1#AT#1 then v8$1#AT#1 else false);
                                assume p3$2#AT#1 <==> (if p1$2#AT#1 && v8$2#AT#1 then v8$2#AT#1 else false);
                                goto inline$_LOG_WRITE_$$output$0$Entry;

                              inline$_LOG_WRITE_$$output$0$Entry:
                                assume inline$_LOG_WRITE_$$output$0$_value_old#AT#1 == $$output#AT#0[$i.0#AT#0];
                                goto inline$_LOG_WRITE_$$output$0$log_access_entry;

                              inline$_LOG_WRITE_$$output$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$output#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then v0$1#AT#0 != inline$_LOG_WRITE_$$output$0$_value_old#AT#1 else _WRITE_READ_BENIGN_FLAG_$$output#AT#0);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#2 <==> (if p3$2#AT#1 && _WRITE_HAS_OCCURRED_$$output#AT#1 && _WATCHED_OFFSET == $i.0#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$output#AT#1);
                                goto $truebb$2;

                              $truebb$2:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} $mv_state($mv_state_const, 3) && true;
                                assume $$output#AT#1 == $$output#AT#0[$i.0#AT#0 := (if p3$1#AT#1 then v0$1#AT#0 else $$output#AT#0[$i.0#AT#0])];
                                assume $$output#AT#2 == $$output#AT#1[$i.0#AT#0 := (if p3$2#AT#1 then v0$2#AT#0 else $$output#AT#1[$i.0#AT#0])];
                                assume $i.0#AT#1 == BV32_ADD($i.0#AT#0, 1bv32);
                                assume {:captureState "loop_back_edge_state_0_0"} $mv_state($mv_state_const, 4) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0#AT#1, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output#AT#1 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#1) then 1bv1 else 0bv1) != 0bv1;
                                assume false;
                                return;
Removing _b0
Counter example for _b0
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume (if BV32_ULT($numKeys, 16777216bv32) then 1bv1 else 0bv1) != 0bv1;
                                assume !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
                                assume !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto $entry;

                              $entry:
                                assume v0$1#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 256bv32);
                                assume v0$2#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), 256bv32);
                                assume v1$1#AT#0 == BV32_ADD(v0$1#AT#0, 255bv32);
                                assume v1$2#AT#0 == BV32_ADD(v0$2#AT#0, 255bv32);
                                assume BV1_ZEXT32((if BV32_SLT(v0$1#AT#0, v1$1#AT#0) ==> BV32_ULT($$input[v0$1#AT#0], $$input[v1$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v0$2#AT#0, v1$2#AT#0) ==> BV32_ULT($$input[v0$2#AT#0], $$input[v1$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 0) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE(0bv32, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 0bv32) then 1bv1 else 0bv1) != 0bv1;
                                goto $for.cond;

                              $for.cond:
                                assume {:captureState "loop_head_state_0"} $mv_state($mv_state_const, 1) && true;
                                assume _b3 ==> BV32_UGE($i.0#AT#0, 0bv32);
                                assume _b2 ==> BV32_ULE($i.0#AT#0, 0bv32);
                                assume _b1 ==> BV32_SGE($i.0#AT#0, 0bv32);
                                assume _b0 ==> BV32_SLE($i.0#AT#0, 0bv32);
                                assume true;
                                assume (if _WRITE_HAS_OCCURRED_$$output#AT#0 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#0) then 1bv1 else 0bv1) != 0bv1;
                                assume v2#AT#1 <==> BV32_ULT($i.0#AT#0, $numKeys);
                                goto $truebb, $falsebb;

                              $truebb:
                                assume {:partition} v2#AT#1;
                                assume v3$1#AT#1 == $$keys[$i.0#AT#0];
                                assume v3$2#AT#1 == $$keys[$i.0#AT#0];
                                assume v4$1#AT#1 == $$input[v0$1#AT#0];
                                assume v4$2#AT#1 == $$input[v0$2#AT#0];
                                assume v5$1#AT#1 <==> BV32_UGE(v3$1#AT#1, v4$1#AT#1);
                                assume v5$2#AT#1 <==> BV32_UGE(v3$2#AT#1, v4$2#AT#1);
                                assume p1$1#AT#1 <==> (if v5$1#AT#1 then v5$1#AT#1 else false);
                                assume p1$2#AT#1 <==> (if v5$2#AT#1 then v5$2#AT#1 else false);
                                assume v6$1#AT#1 == (if p1$1#AT#1 then $$keys[$i.0#AT#0] else v6$1#AT#0);
                                assume v6$2#AT#1 == (if p1$2#AT#1 then $$keys[$i.0#AT#0] else v6$2#AT#0);
                                assume v7$1#AT#1 == (if p1$1#AT#1 then $$input[v1$1#AT#0] else v7$1#AT#0);
                                assume v7$2#AT#1 == (if p1$2#AT#1 then $$input[v1$2#AT#0] else v7$2#AT#0);
                                assume v8$1#AT#1 <==> (if p1$1#AT#1 then BV32_ULE(v6$1#AT#1, v7$1#AT#1) else v8$1#AT#0);
                                assume v8$2#AT#1 <==> (if p1$2#AT#1 then BV32_ULE(v6$2#AT#1, v7$2#AT#1) else v8$2#AT#0);
                                assume p3$1#AT#1 <==> (if p1$1#AT#1 && v8$1#AT#1 then v8$1#AT#1 else false);
                                assume p3$2#AT#1 <==> (if p1$2#AT#1 && v8$2#AT#1 then v8$2#AT#1 else false);
                                goto inline$_LOG_WRITE_$$output$0$Entry;

                              inline$_LOG_WRITE_$$output$0$Entry:
                                assume inline$_LOG_WRITE_$$output$0$_value_old#AT#1 == $$output#AT#0[$i.0#AT#0];
                                goto inline$_LOG_WRITE_$$output$0$log_access_entry;

                              inline$_LOG_WRITE_$$output$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$output#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then v0$1#AT#0 != inline$_LOG_WRITE_$$output$0$_value_old#AT#1 else _WRITE_READ_BENIGN_FLAG_$$output#AT#0);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#2 <==> (if p3$2#AT#1 && _WRITE_HAS_OCCURRED_$$output#AT#1 && _WATCHED_OFFSET == $i.0#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$output#AT#1);
                                goto $truebb$2;

                              $truebb$2:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} $mv_state($mv_state_const, 3) && true;
                                assume $$output#AT#1 == $$output#AT#0[$i.0#AT#0 := (if p3$1#AT#1 then v0$1#AT#0 else $$output#AT#0[$i.0#AT#0])];
                                assume $$output#AT#2 == $$output#AT#1[$i.0#AT#0 := (if p3$2#AT#1 then v0$2#AT#0 else $$output#AT#1[$i.0#AT#0])];
                                assume $i.0#AT#1 == BV32_ADD($i.0#AT#0, 1bv32);
                                assume {:captureState "loop_back_edge_state_0_0"} $mv_state($mv_state_const, 4) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0#AT#1, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output#AT#1 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#1) then 1bv1 else 0bv1) != 0bv1;
                                assume false;
                                return;
Removing _b0
Counter example for _b0
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume !_READ_HAS_OCCURRED_$$randArray && !_WRITE_HAS_OCCURRED_$$randArray && !_ATOMIC_HAS_OCCURRED_$$randArray;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume !_READ_HAS_OCCURRED_$$callA && !_WRITE_HAS_OCCURRED_$$callA && !_ATOMIC_HAS_OCCURRED_$$callA;
                                assume !_READ_HAS_OCCURRED_$$callB && !_WRITE_HAS_OCCURRED_$$callB && !_ATOMIC_HAS_OCCURRED_$$callB;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto __partitioned_block_$entry_0;

                              __partitioned_block_$entry_0:
                                assume v2$1#AT#0 == $$randArray[BV32_MUL(group_id_x$1, 4bv32)];
                                assume v2$2#AT#0 == $$randArray[BV32_MUL(group_id_x$2, 4bv32)];
                                assume v3$1#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$1, 4bv32), 1bv32)];
                                assume v3$2#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$2, 4bv32), 1bv32)];
                                assume v4$1#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$1, 4bv32), 2bv32)];
                                assume v4$2#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$2, 4bv32), 2bv32)];
                                assume v5$1#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$1, 4bv32), 3bv32)];
                                assume v5$2#AT#0 == $$randArray[BV32_ADD(BV32_MUL(group_id_x$2, 4bv32), 3bv32)];
                                assume v6#AT#0 == FDIV32(1065353216bv32, SI32_TO_FP32($numSteps));
                                assume v7$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$1#AT#0), 1048576000bv32), FMUL32(v2$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v7$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$2#AT#0), 1048576000bv32), FMUL32(v2$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v8$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$1#AT#0), 1048576000bv32), FMUL32(v3$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v8$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$2#AT#0), 1048576000bv32), FMUL32(v3$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v9$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$1#AT#0), 1048576000bv32), FMUL32(v4$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v9$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$2#AT#0), 1048576000bv32), FMUL32(v4$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v10$1#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$1#AT#0), 1048576000bv32), FMUL32(v5$1#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v10$2#AT#0 == FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$2#AT#0), 1048576000bv32), FMUL32(v5$2#AT#0, 1092616192bv32)), v6#AT#0);
                                assume v11$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v7$1#AT#0));
                                assume v11$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v7$2#AT#0));
                                assume v12$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v8$1#AT#0));
                                assume v12$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v8$2#AT#0));
                                assume v13$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v9$1#AT#0));
                                assume v13$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v9$2#AT#0));
                                assume v14$1#AT#0 == FMUL32(1050253722bv32, FSQRT32(v10$1#AT#0));
                                assume v14$2#AT#0 == FMUL32(1050253722bv32, FSQRT32(v10$2#AT#0));
                                assume v15$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v7$1#AT#0), 1069066811bv32));
                                assume v15$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v7$2#AT#0), 1069066811bv32));
                                assume v16$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v8$1#AT#0), 1069066811bv32));
                                assume v16$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v8$2#AT#0), 1069066811bv32));
                                assume v17$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v9$1#AT#0), 1069066811bv32));
                                assume v17$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v9$2#AT#0), 1069066811bv32));
                                assume v18$1#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v10$1#AT#0), 1069066811bv32));
                                assume v18$2#AT#0 == FEXP32(FMUL32(FMUL32(1017370378bv32, v10$2#AT#0), 1069066811bv32));
                                assume v19$1#AT#0 == FDIV32(1065353216bv32, v15$1#AT#0);
                                assume v19$2#AT#0 == FDIV32(1065353216bv32, v15$2#AT#0);
                                assume v20$1#AT#0 == FDIV32(1065353216bv32, v16$1#AT#0);
                                assume v20$2#AT#0 == FDIV32(1065353216bv32, v16$2#AT#0);
                                assume v21$1#AT#0 == FDIV32(1065353216bv32, v17$1#AT#0);
                                assume v21$2#AT#0 == FDIV32(1065353216bv32, v17$2#AT#0);
                                assume v22$1#AT#0 == FDIV32(1065353216bv32, v18$1#AT#0);
                                assume v22$2#AT#0 == FDIV32(1065353216bv32, v18$2#AT#0);
                                assume v23$1#AT#0 == FEXP32(FMUL32(v11$1#AT#0, 1069066811bv32));
                                assume v23$2#AT#0 == FEXP32(FMUL32(v11$2#AT#0, 1069066811bv32));
                                assume v24$1#AT#0 == FEXP32(FMUL32(v12$1#AT#0, 1069066811bv32));
                                assume v24$2#AT#0 == FEXP32(FMUL32(v12$2#AT#0, 1069066811bv32));
                                assume v25$1#AT#0 == FEXP32(FMUL32(v13$1#AT#0, 1069066811bv32));
                                assume v25$2#AT#0 == FEXP32(FMUL32(v13$2#AT#0, 1069066811bv32));
                                assume v26$1#AT#0 == FEXP32(FMUL32(v14$1#AT#0, 1069066811bv32));
                                assume v26$2#AT#0 == FEXP32(FMUL32(v14$2#AT#0, 1069066811bv32));
                                assume v27$1#AT#0 == FDIV32(1065353216bv32, v23$1#AT#0);
                                assume v27$2#AT#0 == FDIV32(1065353216bv32, v23$2#AT#0);
                                assume v28$1#AT#0 == FDIV32(1065353216bv32, v24$1#AT#0);
                                assume v28$2#AT#0 == FDIV32(1065353216bv32, v24$2#AT#0);
                                assume v29$1#AT#0 == FDIV32(1065353216bv32, v25$1#AT#0);
                                assume v29$2#AT#0 == FDIV32(1065353216bv32, v25$2#AT#0);
                                assume v30$1#AT#0 == FDIV32(1065353216bv32, v26$1#AT#0);
                                assume v30$2#AT#0 == FDIV32(1065353216bv32, v26$2#AT#0);
                                assume v31$1#AT#0 == FDIV32(FSUB32(v15$1#AT#0, v27$1#AT#0), FSUB32(v23$1#AT#0, v27$1#AT#0));
                                assume v31$2#AT#0 == FDIV32(FSUB32(v15$2#AT#0, v27$2#AT#0), FSUB32(v23$2#AT#0, v27$2#AT#0));
                                assume v32$1#AT#0 == FDIV32(FSUB32(v16$1#AT#0, v28$1#AT#0), FSUB32(v24$1#AT#0, v28$1#AT#0));
                                assume v32$2#AT#0 == FDIV32(FSUB32(v16$2#AT#0, v28$2#AT#0), FSUB32(v24$2#AT#0, v28$2#AT#0));
                                assume v33$1#AT#0 == FDIV32(FSUB32(v17$1#AT#0, v29$1#AT#0), FSUB32(v25$1#AT#0, v29$1#AT#0));
                                assume v33$2#AT#0 == FDIV32(FSUB32(v17$2#AT#0, v29$2#AT#0), FSUB32(v25$2#AT#0, v29$2#AT#0));
                                assume v34$1#AT#0 == FDIV32(FSUB32(v18$1#AT#0, v30$1#AT#0), FSUB32(v26$1#AT#0, v30$1#AT#0));
                                assume v34$2#AT#0 == FDIV32(FSUB32(v18$2#AT#0, v30$2#AT#0), FSUB32(v26$2#AT#0, v30$2#AT#0));
                                assume v35$1#AT#0 == FMUL32(v31$1#AT#0, v19$1#AT#0);
                                assume v35$2#AT#0 == FMUL32(v31$2#AT#0, v19$2#AT#0);
                                assume v36$1#AT#0 == FMUL32(v32$1#AT#0, v20$1#AT#0);
                                assume v36$2#AT#0 == FMUL32(v32$2#AT#0, v20$2#AT#0);
                                assume v37$1#AT#0 == FMUL32(v33$1#AT#0, v21$1#AT#0);
                                assume v37$2#AT#0 == FMUL32(v33$2#AT#0, v21$2#AT#0);
                                assume v38$1#AT#0 == FMUL32(v34$1#AT#0, v22$1#AT#0);
                                assume v38$2#AT#0 == FMUL32(v34$2#AT#0, v22$2#AT#0);
                                assume v39$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v31$1#AT#0), v19$1#AT#0);
                                assume v39$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v31$2#AT#0), v19$2#AT#0);
                                assume v40$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v32$1#AT#0), v20$1#AT#0);
                                assume v40$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v32$2#AT#0), v20$2#AT#0);
                                assume v41$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v33$1#AT#0), v21$1#AT#0);
                                assume v41$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v33$2#AT#0), v21$2#AT#0);
                                assume v42$1#AT#0 == FMUL32(FSUB32(1065353216bv32, v34$1#AT#0), v22$1#AT#0);
                                assume v42$2#AT#0 == FMUL32(FSUB32(1065353216bv32, v34$2#AT#0), v22$2#AT#0);
                                assume v43$1#AT#0 == FADD32(FMUL32(1073741824bv32, UI32_TO_FP32(local_id_x$1)), FSUB32(2147483648bv32, SI32_TO_FP32($numSteps)));
                                assume v43$2#AT#0 == FADD32(FMUL32(1073741824bv32, UI32_TO_FP32(local_id_x$2)), FSUB32(2147483648bv32, SI32_TO_FP32($numSteps)));
                                assume v44$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$1#AT#0), 1084227584bv32), FMUL32(v2$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v11$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v2$1#AT#0), 1065353216bv32), FMUL32(v2$1#AT#0, 1120403456bv32))));
                                assume v44$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v2$2#AT#0), 1084227584bv32), FMUL32(v2$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v11$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v2$2#AT#0), 1065353216bv32), FMUL32(v2$2#AT#0, 1120403456bv32))));
                                assume v45$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$1#AT#0), 1084227584bv32), FMUL32(v3$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v12$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v3$1#AT#0), 1065353216bv32), FMUL32(v3$1#AT#0, 1120403456bv32))));
                                assume v45$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v3$2#AT#0), 1084227584bv32), FMUL32(v3$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v12$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v3$2#AT#0), 1065353216bv32), FMUL32(v3$2#AT#0, 1120403456bv32))));
                                assume v46$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$1#AT#0), 1084227584bv32), FMUL32(v4$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v13$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v4$1#AT#0), 1065353216bv32), FMUL32(v4$1#AT#0, 1120403456bv32))));
                                assume v46$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v4$2#AT#0), 1084227584bv32), FMUL32(v4$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v13$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v4$2#AT#0), 1065353216bv32), FMUL32(v4$2#AT#0, 1120403456bv32))));
                                assume v47$1#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$1#AT#0), 1084227584bv32), FMUL32(v5$1#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v14$1#AT#0, v43$1#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v5$1#AT#0), 1065353216bv32), FMUL32(v5$1#AT#0, 1120403456bv32))));
                                assume v47$2#AT#0 == FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216bv32, v5$2#AT#0), 1084227584bv32), FMUL32(v5$2#AT#0, 1106247680bv32)), FEXP32(FMUL32(FMUL32(v14$2#AT#0, v43$2#AT#0), 1069066811bv32))), FSUB32(2147483648bv32, FADD32(FMUL32(FSUB32(1065353216bv32, v5$2#AT#0), 1065353216bv32), FMUL32(v5$2#AT#0, 1120403456bv32))));
                                assume v48$1#AT#0 <==> FLT32(0bv32, v44$1#AT#0);
                                assume v48$2#AT#0 <==> FLT32(0bv32, v44$2#AT#0);
                                assume p0$1#AT#0 <==> (if v48$1#AT#0 then v48$1#AT#0 else false);
                                assume p0$2#AT#0 <==> (if v48$2#AT#0 then v48$2#AT#0 else false);
                                assume p1$1#AT#0 <==> (if !v48$1#AT#0 then !v48$1#AT#0 else false);
                                assume p1$2#AT#0 <==> (if !v48$2#AT#0 then !v48$2#AT#0 else false);
                                assume $cond$1#AT#0 == (if p0$1#AT#0 then v44$1#AT#0 else $cond$1);
                                assume $cond$2#AT#0 == (if p0$2#AT#0 then v44$2#AT#0 else $cond$2);
                                assume $cond$1#AT#1 == (if p1$1#AT#0 then 0bv32 else $cond$1#AT#0);
                                assume $cond$2#AT#1 == (if p1$2#AT#0 then 0bv32 else $cond$2#AT#0);
                                goto inline$_LOG_READ_$$callA$0$Entry;

                              inline$_LOG_READ_$$callA$0$Entry:
                                assume inline$_LOG_READ_$$callA$0$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$0$_value#AT#0 == $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$0$log_access_entry;

                              inline$_LOG_READ_$$callA$0$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#0 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$0$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$0$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA);
                                goto __partitioned_block_$entry_0$1;

                              __partitioned_block_$entry_0$1:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} $mv_state($mv_state_const, 0) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 1) && true;
                                assume v49$1#AT#0 == $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v49$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$1$Entry;

                              inline$_LOG_READ_$$callA$1$Entry:
                                assume inline$_LOG_READ_$$callA$1$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$1$_value#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$1$log_access_entry;

                              inline$_LOG_READ_$$callA$1$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#1 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$1$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$1$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#0);
                                goto __partitioned_block_$entry_0$2;

                              __partitioned_block_$entry_0$2:
                                assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 3) && true;
                                assume v50$1#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v50$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$2$Entry;

                              inline$_LOG_READ_$$callA$2$Entry:
                                assume inline$_LOG_READ_$$callA$2$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$2$_value#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$2$log_access_entry;

                              inline$_LOG_READ_$$callA$2$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#2 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$2$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$2$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#1);
                                goto __partitioned_block_$entry_0$3;

                              __partitioned_block_$entry_0$3:
                                assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} $mv_state($mv_state_const, 4) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 5) && true;
                                assume v51$1#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v51$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$3$Entry;

                              inline$_LOG_READ_$$callA$3$Entry:
                                assume inline$_LOG_READ_$$callA$3$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$3$_value#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$3$log_access_entry;

                              inline$_LOG_READ_$$callA$3$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#3 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$3$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$3$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#2);
                                goto __partitioned_block_$entry_0$4;

                              __partitioned_block_$entry_0$4:
                                assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 6) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 7) && true;
                                assume v52$1#AT#0 == $$callA[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v52$2#AT#0 == $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$0$Entry;

                              inline$_LOG_WRITE_$$callA$0$Entry:
                                assume inline$_LOG_WRITE_$$callA$0$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$0$_value_old#AT#0 == $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$0$log_access_entry;

                              inline$_LOG_WRITE_$$callA$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#0 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$0$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#0 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$0$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond$1#AT#1 then $cond$1#AT#1 != inline$_LOG_WRITE_$$callA$0$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#1 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#0 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$0$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#0);
                                goto __partitioned_block_$entry_0$6;

                              __partitioned_block_$entry_0$6:
                                assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 12} $mv_state($mv_state_const, 8) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 9) && true;
                                assume $$callA#AT#0 == $$callA[1bv1 := $$callA[1bv1][BV32_MUL(local_id_x$1, 4bv32) := $cond$1#AT#1]];
                                assume $$callA#AT#1 == $$callA#AT#0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := $cond$2#AT#1]];
                                goto inline$_LOG_WRITE_$$callA$1$Entry;

                              inline$_LOG_WRITE_$$callA$1$Entry:
                                assume inline$_LOG_WRITE_$$callA$1$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$1$_value_old#AT#0 == $$callA#AT#1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$1$log_access_entry;

                              inline$_LOG_WRITE_$$callA$1$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#1 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$1$_offset#AT#0 && _WATCHED_VALUE_$$callA == v50$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#2 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$1$_offset#AT#0 && _WATCHED_VALUE_$$callA == v50$1#AT#0 then v50$1#AT#0 != inline$_LOG_WRITE_$$callA$1$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#1);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#3 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#1 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$1$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#2);
                                goto __partitioned_block_$entry_0$8;

                              __partitioned_block_$entry_0$8:
                                assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 13} $mv_state($mv_state_const, 10) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 11) && true;
                                assume $$callA#AT#2 == $$callA#AT#1[1bv1 := $$callA#AT#1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := v50$1#AT#0]];
                                assume $$callA#AT#3 == $$callA#AT#2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := v50$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$2$Entry;

                              inline$_LOG_WRITE_$$callA$2$Entry:
                                assume inline$_LOG_WRITE_$$callA$2$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$2$_value_old#AT#0 == $$callA#AT#3[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$2$log_access_entry;

                              inline$_LOG_WRITE_$$callA$2$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#2 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$2$_offset#AT#0 && _WATCHED_VALUE_$$callA == v51$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#1);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#4 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$2$_offset#AT#0 && _WATCHED_VALUE_$$callA == v51$1#AT#0 then v51$1#AT#0 != inline$_LOG_WRITE_$$callA$2$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#3);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#5 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#2 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$2$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#4);
                                goto __partitioned_block_$entry_0$10;

                              __partitioned_block_$entry_0$10:
                                assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 14} $mv_state($mv_state_const, 12) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 13) && true;
                                assume $$callA#AT#4 == $$callA#AT#3[1bv1 := $$callA#AT#3[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := v51$1#AT#0]];
                                assume $$callA#AT#5 == $$callA#AT#4[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#4[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := v51$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$3$Entry;

                              inline$_LOG_WRITE_$$callA$3$Entry:
                                assume inline$_LOG_WRITE_$$callA$3$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$3$_value_old#AT#0 == $$callA#AT#5[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$3$log_access_entry;

                              inline$_LOG_WRITE_$$callA$3$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#3 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$3$_offset#AT#0 && _WATCHED_VALUE_$$callA == v52$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#2);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#6 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$3$_offset#AT#0 && _WATCHED_VALUE_$$callA == v52$1#AT#0 then v52$1#AT#0 != inline$_LOG_WRITE_$$callA$3$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#5);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#7 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#3 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$3$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#6);
                                goto __partitioned_block_$entry_0$12;

                              __partitioned_block_$entry_0$12:
                                assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 15} $mv_state($mv_state_const, 14) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 15) && true;
                                assume $$callA#AT#6 == $$callA#AT#5[1bv1 := $$callA#AT#5[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := v52$1#AT#0]];
                                assume $$callA#AT#7 == $$callA#AT#6[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#6[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := v52$2#AT#0]];
                                assume v53$1#AT#0 <==> FLT32(0bv32, v45$1#AT#0);
                                assume v53$2#AT#0 <==> FLT32(0bv32, v45$2#AT#0);
                                assume p2$1#AT#0 <==> (if v53$1#AT#0 then v53$1#AT#0 else false);
                                assume p2$2#AT#0 <==> (if v53$2#AT#0 then v53$2#AT#0 else false);
                                assume p3$1#AT#0 <==> (if !v53$1#AT#0 then !v53$1#AT#0 else false);
                                assume p3$2#AT#0 <==> (if !v53$2#AT#0 then !v53$2#AT#0 else false);
                                assume $cond36$1#AT#0 == (if p2$1#AT#0 then v45$1#AT#0 else $cond36$1);
                                assume $cond36$2#AT#0 == (if p2$2#AT#0 then v45$2#AT#0 else $cond36$2);
                                assume $cond36$1#AT#1 == (if p3$1#AT#0 then 0bv32 else $cond36$1#AT#0);
                                assume $cond36$2#AT#1 == (if p3$2#AT#0 then 0bv32 else $cond36$2#AT#0);
                                goto inline$_LOG_READ_$$callA$4$Entry;

                              inline$_LOG_READ_$$callA$4$Entry:
                                assume inline$_LOG_READ_$$callA$4$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$4$_value#AT#0 == $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$4$log_access_entry;

                              inline$_LOG_READ_$$callA$4$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#4 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$4$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$4$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#3);
                                goto __partitioned_block_$entry_0$13;

                              __partitioned_block_$entry_0$13:
                                assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 19} $mv_state($mv_state_const, 16) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 17) && true;
                                assume v54$1#AT#0 == $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v54$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$5$Entry;

                              inline$_LOG_READ_$$callA$5$Entry:
                                assume inline$_LOG_READ_$$callA$5$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$5$_value#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$5$log_access_entry;

                              inline$_LOG_READ_$$callA$5$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#5 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$5$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$5$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#4);
                                goto __partitioned_block_$entry_0$14;

                              __partitioned_block_$entry_0$14:
                                assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 20} $mv_state($mv_state_const, 18) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 19) && true;
                                assume v55$1#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v55$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$6$Entry;

                              inline$_LOG_READ_$$callA$6$Entry:
                                assume inline$_LOG_READ_$$callA$6$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$6$_value#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$6$log_access_entry;

                              inline$_LOG_READ_$$callA$6$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#6 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$6$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$6$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#5);
                                goto __partitioned_block_$entry_0$15;

                              __partitioned_block_$entry_0$15:
                                assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 21} $mv_state($mv_state_const, 20) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 21) && true;
                                assume v56$1#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v56$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$7$Entry;

                              inline$_LOG_READ_$$callA$7$Entry:
                                assume inline$_LOG_READ_$$callA$7$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$7$_value#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$7$log_access_entry;

                              inline$_LOG_READ_$$callA$7$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#7 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$7$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$7$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#6);
                                goto __partitioned_block_$entry_0$16;

                              __partitioned_block_$entry_0$16:
                                assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 22} $mv_state($mv_state_const, 22) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 23) && true;
                                assume v57$1#AT#0 == $$callA#AT#7[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v57$2#AT#0 == $$callA#AT#7[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$4$Entry;

                              inline$_LOG_WRITE_$$callA$4$Entry:
                                assume inline$_LOG_WRITE_$$callA$4$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$4$_value_old#AT#0 == $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$4$log_access_entry;

                              inline$_LOG_WRITE_$$callA$4$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#4 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$4$_offset#AT#0 && _WATCHED_VALUE_$$callA == v54$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#3);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#8 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$4$_offset#AT#0 && _WATCHED_VALUE_$$callA == v54$1#AT#0 then v54$1#AT#0 != inline$_LOG_WRITE_$$callA$4$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#7);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#9 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#4 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$4$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#8);
                                goto __partitioned_block_$entry_0$18;

                              __partitioned_block_$entry_0$18:
                                assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 23} $mv_state($mv_state_const, 24) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 25) && true;
                                assume $$callA#AT#8 == $$callA#AT#7[1bv1 := $$callA#AT#7[1bv1][BV32_MUL(local_id_x$1, 4bv32) := v54$1#AT#0]];
                                assume $$callA#AT#9 == $$callA#AT#8[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#8[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := v54$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$5$Entry;

                              inline$_LOG_WRITE_$$callA$5$Entry:
                                assume inline$_LOG_WRITE_$$callA$5$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$5$_value_old#AT#0 == $$callA#AT#9[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$5$log_access_entry;

                              inline$_LOG_WRITE_$$callA$5$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#5 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$5$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond36$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA#AT#4);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#10 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$5$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond36$1#AT#1 then $cond36$1#AT#1 != inline$_LOG_WRITE_$$callA$5$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#9);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#11 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#5 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$5$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#10);
                                goto __partitioned_block_$entry_0$20;

                              __partitioned_block_$entry_0$20:
                                assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 24} $mv_state($mv_state_const, 26) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 27) && true;
                                assume $$callA#AT#10 == $$callA#AT#9[1bv1 := $$callA#AT#9[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := $cond36$1#AT#1]];
                                assume $$callA#AT#11 == $$callA#AT#10[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#10[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := $cond36$2#AT#1]];
                                goto inline$_LOG_WRITE_$$callA$6$Entry;

                              inline$_LOG_WRITE_$$callA$6$Entry:
                                assume inline$_LOG_WRITE_$$callA$6$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$6$_value_old#AT#0 == $$callA#AT#11[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$6$log_access_entry;

                              inline$_LOG_WRITE_$$callA$6$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#6 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$6$_offset#AT#0 && _WATCHED_VALUE_$$callA == v56$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#5);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#12 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$6$_offset#AT#0 && _WATCHED_VALUE_$$callA == v56$1#AT#0 then v56$1#AT#0 != inline$_LOG_WRITE_$$callA$6$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#11);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#13 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#6 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$6$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#12);
                                goto __partitioned_block_$entry_0$22;

                              __partitioned_block_$entry_0$22:
                                assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 25} $mv_state($mv_state_const, 28) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 29) && true;
                                assume $$callA#AT#12 == $$callA#AT#11[1bv1 := $$callA#AT#11[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := v56$1#AT#0]];
                                assume $$callA#AT#13 == $$callA#AT#12[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#12[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := v56$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$7$Entry;

                              inline$_LOG_WRITE_$$callA$7$Entry:
                                assume inline$_LOG_WRITE_$$callA$7$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$7$_value_old#AT#0 == $$callA#AT#13[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$7$log_access_entry;

                              inline$_LOG_WRITE_$$callA$7$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#7 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$7$_offset#AT#0 && _WATCHED_VALUE_$$callA == v57$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#6);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#14 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$7$_offset#AT#0 && _WATCHED_VALUE_$$callA == v57$1#AT#0 then v57$1#AT#0 != inline$_LOG_WRITE_$$callA$7$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#13);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#15 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#7 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$7$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#14);
                                goto __partitioned_block_$entry_0$24;

                              __partitioned_block_$entry_0$24:
                                assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 26} $mv_state($mv_state_const, 30) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 31) && true;
                                assume $$callA#AT#14 == $$callA#AT#13[1bv1 := $$callA#AT#13[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := v57$1#AT#0]];
                                assume $$callA#AT#15 == $$callA#AT#14[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#14[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := v57$2#AT#0]];
                                assume v58$1#AT#0 <==> FLT32(0bv32, v46$1#AT#0);
                                assume v58$2#AT#0 <==> FLT32(0bv32, v46$2#AT#0);
                                assume p4$1#AT#0 <==> (if v58$1#AT#0 then v58$1#AT#0 else false);
                                assume p4$2#AT#0 <==> (if v58$2#AT#0 then v58$2#AT#0 else false);
                                assume p5$1#AT#0 <==> (if !v58$1#AT#0 then !v58$1#AT#0 else false);
                                assume p5$2#AT#0 <==> (if !v58$2#AT#0 then !v58$2#AT#0 else false);
                                assume $cond43$1#AT#0 == (if p4$1#AT#0 then v46$1#AT#0 else $cond43$1);
                                assume $cond43$2#AT#0 == (if p4$2#AT#0 then v46$2#AT#0 else $cond43$2);
                                assume $cond43$1#AT#1 == (if p5$1#AT#0 then 0bv32 else $cond43$1#AT#0);
                                assume $cond43$2#AT#1 == (if p5$2#AT#0 then 0bv32 else $cond43$2#AT#0);
                                goto inline$_LOG_READ_$$callA$8$Entry;

                              inline$_LOG_READ_$$callA$8$Entry:
                                assume inline$_LOG_READ_$$callA$8$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$8$_value#AT#0 == $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$8$log_access_entry;

                              inline$_LOG_READ_$$callA$8$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#8 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$8$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$8$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#7);
                                goto __partitioned_block_$entry_0$25;

                              __partitioned_block_$entry_0$25:
                                assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 30} $mv_state($mv_state_const, 32) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 33) && true;
                                assume v59$1#AT#0 == $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v59$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$9$Entry;

                              inline$_LOG_READ_$$callA$9$Entry:
                                assume inline$_LOG_READ_$$callA$9$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$9$_value#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$9$log_access_entry;

                              inline$_LOG_READ_$$callA$9$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#9 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$9$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$9$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#8);
                                goto __partitioned_block_$entry_0$26;

                              __partitioned_block_$entry_0$26:
                                assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 31} $mv_state($mv_state_const, 34) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 35) && true;
                                assume v60$1#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v60$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$10$Entry;

                              inline$_LOG_READ_$$callA$10$Entry:
                                assume inline$_LOG_READ_$$callA$10$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$10$_value#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$10$log_access_entry;

                              inline$_LOG_READ_$$callA$10$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#10 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$10$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$10$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#9);
                                goto __partitioned_block_$entry_0$27;

                              __partitioned_block_$entry_0$27:
                                assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 32} $mv_state($mv_state_const, 36) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 37) && true;
                                assume v61$1#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v61$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$11$Entry;

                              inline$_LOG_READ_$$callA$11$Entry:
                                assume inline$_LOG_READ_$$callA$11$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$11$_value#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$11$log_access_entry;

                              inline$_LOG_READ_$$callA$11$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#11 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$11$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$11$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#10);
                                goto __partitioned_block_$entry_0$28;

                              __partitioned_block_$entry_0$28:
                                assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 33} $mv_state($mv_state_const, 38) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 39) && true;
                                assume v62$1#AT#0 == $$callA#AT#15[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v62$2#AT#0 == $$callA#AT#15[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$8$Entry;

                              inline$_LOG_WRITE_$$callA$8$Entry:
                                assume inline$_LOG_WRITE_$$callA$8$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$8$_value_old#AT#0 == $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$8$log_access_entry;

                              inline$_LOG_WRITE_$$callA$8$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#8 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$8$_offset#AT#0 && _WATCHED_VALUE_$$callA == v59$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#7);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#16 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$8$_offset#AT#0 && _WATCHED_VALUE_$$callA == v59$1#AT#0 then v59$1#AT#0 != inline$_LOG_WRITE_$$callA$8$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#15);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#17 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#8 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$8$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#16);
                                goto __partitioned_block_$entry_0$30;

                              __partitioned_block_$entry_0$30:
                                assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 34} $mv_state($mv_state_const, 40) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 41) && true;
                                assume $$callA#AT#16 == $$callA#AT#15[1bv1 := $$callA#AT#15[1bv1][BV32_MUL(local_id_x$1, 4bv32) := v59$1#AT#0]];
                                assume $$callA#AT#17 == $$callA#AT#16[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#16[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := v59$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$9$Entry;

                              inline$_LOG_WRITE_$$callA$9$Entry:
                                assume inline$_LOG_WRITE_$$callA$9$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$9$_value_old#AT#0 == $$callA#AT#17[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$9$log_access_entry;

                              inline$_LOG_WRITE_$$callA$9$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#9 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$9$_offset#AT#0 && _WATCHED_VALUE_$$callA == v60$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#8);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#18 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$9$_offset#AT#0 && _WATCHED_VALUE_$$callA == v60$1#AT#0 then v60$1#AT#0 != inline$_LOG_WRITE_$$callA$9$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#17);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#19 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#9 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$9$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#18);
                                goto __partitioned_block_$entry_0$32;

                              __partitioned_block_$entry_0$32:
                                assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 35} $mv_state($mv_state_const, 42) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 43) && true;
                                assume $$callA#AT#18 == $$callA#AT#17[1bv1 := $$callA#AT#17[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := v60$1#AT#0]];
                                assume $$callA#AT#19 == $$callA#AT#18[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#18[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := v60$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$10$Entry;

                              inline$_LOG_WRITE_$$callA$10$Entry:
                                assume inline$_LOG_WRITE_$$callA$10$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$10$_value_old#AT#0 == $$callA#AT#19[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$10$log_access_entry;

                              inline$_LOG_WRITE_$$callA$10$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#10 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$10$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond43$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA#AT#9);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#20 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$10$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond43$1#AT#1 then $cond43$1#AT#1 != inline$_LOG_WRITE_$$callA$10$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#19);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#21 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#10 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$10$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#20);
                                goto __partitioned_block_$entry_0$34;

                              __partitioned_block_$entry_0$34:
                                assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 36} $mv_state($mv_state_const, 44) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 45) && true;
                                assume $$callA#AT#20 == $$callA#AT#19[1bv1 := $$callA#AT#19[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := $cond43$1#AT#1]];
                                assume $$callA#AT#21 == $$callA#AT#20[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#20[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := $cond43$2#AT#1]];
                                goto inline$_LOG_WRITE_$$callA$11$Entry;

                              inline$_LOG_WRITE_$$callA$11$Entry:
                                assume inline$_LOG_WRITE_$$callA$11$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$11$_value_old#AT#0 == $$callA#AT#21[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$11$log_access_entry;

                              inline$_LOG_WRITE_$$callA$11$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#11 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$11$_offset#AT#0 && _WATCHED_VALUE_$$callA == v62$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#10);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#22 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$11$_offset#AT#0 && _WATCHED_VALUE_$$callA == v62$1#AT#0 then v62$1#AT#0 != inline$_LOG_WRITE_$$callA$11$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#21);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#23 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#11 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$11$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#22);
                                goto __partitioned_block_$entry_0$36;

                              __partitioned_block_$entry_0$36:
                                assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 37} $mv_state($mv_state_const, 46) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 47) && true;
                                assume $$callA#AT#22 == $$callA#AT#21[1bv1 := $$callA#AT#21[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := v62$1#AT#0]];
                                assume $$callA#AT#23 == $$callA#AT#22[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#22[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := v62$2#AT#0]];
                                assume v63$1#AT#0 <==> FLT32(0bv32, v47$1#AT#0);
                                assume v63$2#AT#0 <==> FLT32(0bv32, v47$2#AT#0);
                                assume p6$1#AT#0 <==> (if v63$1#AT#0 then v63$1#AT#0 else false);
                                assume p6$2#AT#0 <==> (if v63$2#AT#0 then v63$2#AT#0 else false);
                                assume p7$1#AT#0 <==> (if !v63$1#AT#0 then !v63$1#AT#0 else false);
                                assume p7$2#AT#0 <==> (if !v63$2#AT#0 then !v63$2#AT#0 else false);
                                assume $cond50$1#AT#0 == (if p6$1#AT#0 then v47$1#AT#0 else $cond50$1);
                                assume $cond50$2#AT#0 == (if p6$2#AT#0 then v47$2#AT#0 else $cond50$2);
                                assume $cond50$1#AT#1 == (if p7$1#AT#0 then 0bv32 else $cond50$1#AT#0);
                                assume $cond50$2#AT#1 == (if p7$2#AT#0 then 0bv32 else $cond50$2#AT#0);
                                goto inline$_LOG_READ_$$callA$12$Entry;

                              inline$_LOG_READ_$$callA$12$Entry:
                                assume inline$_LOG_READ_$$callA$12$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_READ_$$callA$12$_value#AT#0 == $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_READ_$$callA$12$log_access_entry;

                              inline$_LOG_READ_$$callA$12$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#12 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$12$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$12$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#11);
                                goto __partitioned_block_$entry_0$37;

                              __partitioned_block_$entry_0$37:
                                assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 41} $mv_state($mv_state_const, 48) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 49) && true;
                                assume v64$1#AT#0 == $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                assume v64$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
                                goto inline$_LOG_READ_$$callA$13$Entry;

                              inline$_LOG_READ_$$callA$13$Entry:
                                assume inline$_LOG_READ_$$callA$13$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_READ_$$callA$13$_value#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$13$log_access_entry;

                              inline$_LOG_READ_$$callA$13$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#13 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$13$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$13$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#12);
                                goto __partitioned_block_$entry_0$38;

                              __partitioned_block_$entry_0$38:
                                assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 42} $mv_state($mv_state_const, 50) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 51) && true;
                                assume v65$1#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                assume v65$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
                                goto inline$_LOG_READ_$$callA$14$Entry;

                              inline$_LOG_READ_$$callA$14$Entry:
                                assume inline$_LOG_READ_$$callA$14$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_READ_$$callA$14$_value#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$14$log_access_entry;

                              inline$_LOG_READ_$$callA$14$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#14 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$14$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$14$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#13);
                                goto __partitioned_block_$entry_0$39;

                              __partitioned_block_$entry_0$39:
                                assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 43} $mv_state($mv_state_const, 52) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 53) && true;
                                assume v66$1#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                assume v66$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
                                goto inline$_LOG_READ_$$callA$15$Entry;

                              inline$_LOG_READ_$$callA$15$Entry:
                                assume inline$_LOG_READ_$$callA$15$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_READ_$$callA$15$_value#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_READ_$$callA$15$log_access_entry;

                              inline$_LOG_READ_$$callA$15$log_access_entry:
                                assume _READ_HAS_OCCURRED_$$callA#AT#15 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_READ_$$callA$15$_offset#AT#0 && _WATCHED_VALUE_$$callA == inline$_LOG_READ_$$callA$15$_value#AT#0 then true else _READ_HAS_OCCURRED_$$callA#AT#14);
                                goto __partitioned_block_$entry_0$40;

                              __partitioned_block_$entry_0$40:
                                assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 44} $mv_state($mv_state_const, 54) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} $mv_state($mv_state_const, 55) && true;
                                assume v67$1#AT#0 == $$callA#AT#23[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                assume v67$2#AT#0 == $$callA#AT#23[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$12$Entry;

                              inline$_LOG_WRITE_$$callA$12$Entry:
                                assume inline$_LOG_WRITE_$$callA$12$_offset#AT#0 == BV32_MUL(local_id_x$1, 4bv32);
                                assume inline$_LOG_WRITE_$$callA$12$_value_old#AT#0 == $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
                                goto inline$_LOG_WRITE_$$callA$12$log_access_entry;

                              inline$_LOG_WRITE_$$callA$12$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#12 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$12$_offset#AT#0 && _WATCHED_VALUE_$$callA == v64$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#11);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#24 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$12$_offset#AT#0 && _WATCHED_VALUE_$$callA == v64$1#AT#0 then v64$1#AT#0 != inline$_LOG_WRITE_$$callA$12$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#23);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_offset#AT#0 == BV32_MUL(local_id_x$2, 4bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#25 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#12 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$12$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#24);
                                goto __partitioned_block_$entry_0$42;

                              __partitioned_block_$entry_0$42:
                                assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 45} $mv_state($mv_state_const, 56) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 57) && true;
                                assume $$callA#AT#24 == $$callA#AT#23[1bv1 := $$callA#AT#23[1bv1][BV32_MUL(local_id_x$1, 4bv32) := v64$1#AT#0]];
                                assume $$callA#AT#25 == $$callA#AT#24[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#24[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32) := v64$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$13$Entry;

                              inline$_LOG_WRITE_$$callA$13$Entry:
                                assume inline$_LOG_WRITE_$$callA$13$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32);
                                assume inline$_LOG_WRITE_$$callA$13$_value_old#AT#0 == $$callA#AT#25[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
                                goto inline$_LOG_WRITE_$$callA$13$log_access_entry;

                              inline$_LOG_WRITE_$$callA$13$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#13 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$13$_offset#AT#0 && _WATCHED_VALUE_$$callA == v65$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#12);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#26 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$13$_offset#AT#0 && _WATCHED_VALUE_$$callA == v65$1#AT#0 then v65$1#AT#0 != inline$_LOG_WRITE_$$callA$13$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#25);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#27 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#13 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$13$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#26);
                                goto __partitioned_block_$entry_0$44;

                              __partitioned_block_$entry_0$44:
                                assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 46} $mv_state($mv_state_const, 58) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 59) && true;
                                assume $$callA#AT#26 == $$callA#AT#25[1bv1 := $$callA#AT#25[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) := v65$1#AT#0]];
                                assume $$callA#AT#27 == $$callA#AT#26[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#26[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32) := v65$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$14$Entry;

                              inline$_LOG_WRITE_$$callA$14$Entry:
                                assume inline$_LOG_WRITE_$$callA$14$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32);
                                assume inline$_LOG_WRITE_$$callA$14$_value_old#AT#0 == $$callA#AT#27[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
                                goto inline$_LOG_WRITE_$$callA$14$log_access_entry;

                              inline$_LOG_WRITE_$$callA$14$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#14 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$14$_offset#AT#0 && _WATCHED_VALUE_$$callA == v66$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$callA#AT#13);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#28 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$14$_offset#AT#0 && _WATCHED_VALUE_$$callA == v66$1#AT#0 then v66$1#AT#0 != inline$_LOG_WRITE_$$callA$14$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#27);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#29 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#14 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$14$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#28);
                                goto __partitioned_block_$entry_0$46;

                              __partitioned_block_$entry_0$46:
                                assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 47} $mv_state($mv_state_const, 60) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 61) && true;
                                assume $$callA#AT#28 == $$callA#AT#27[1bv1 := $$callA#AT#27[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) := v66$1#AT#0]];
                                assume $$callA#AT#29 == $$callA#AT#28[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#28[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32) := v66$2#AT#0]];
                                goto inline$_LOG_WRITE_$$callA$15$Entry;

                              inline$_LOG_WRITE_$$callA$15$Entry:
                                assume inline$_LOG_WRITE_$$callA$15$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assume inline$_LOG_WRITE_$$callA$15$_value_old#AT#0 == $$callA#AT#29[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
                                goto inline$_LOG_WRITE_$$callA$15$log_access_entry;

                              inline$_LOG_WRITE_$$callA$15$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$callA#AT#15 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$15$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond50$1#AT#1 then true else _WRITE_HAS_OCCURRED_$$callA#AT#14);
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#30 <==> (if true && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == inline$_LOG_WRITE_$$callA$15$_offset#AT#0 && _WATCHED_VALUE_$$callA == $cond50$1#AT#1 then $cond50$1#AT#1 != inline$_LOG_WRITE_$$callA$15$_value_old#AT#0 else _WRITE_READ_BENIGN_FLAG_$$callA#AT#29);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$Entry;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$Entry:
                                assume inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_offset#AT#0 == BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$callA#AT#31 <==> (if true && _WRITE_HAS_OCCURRED_$$callA#AT#15 && _WATCHED_OFFSET == inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$callA$15$_offset#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$callA#AT#30);
                                goto __partitioned_block_$entry_0$48;

                              __partitioned_block_$entry_0$48:
                                assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 48} $mv_state($mv_state_const, 62) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} $mv_state($mv_state_const, 63) && true;
                                assume $$callA#AT#30 == $$callA#AT#29[1bv1 := $$callA#AT#29[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) := $cond50$1#AT#1]];
                                assume $$callA#AT#31 == $$callA#AT#30[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1) := $$callA#AT#30[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32) := $cond50$2#AT#1]];
                                goto inline$$bugle_barrier_duplicated_0$0$Entry;

                              inline$$bugle_barrier_duplicated_0$0$Entry:
                                assert 1bv1 == 1bv1;
                                assert 0bv1 == 0bv1;
                                goto inline$$bugle_barrier_duplicated_0$0$anon9_Then, inline$$bugle_barrier_duplicated_0$0$anon9_Else;

                              inline$$bugle_barrier_duplicated_0$0$anon9_Else:
                                assume {:partition} true;
                                assume 1bv1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$callA#AT#15;
                                assume 1bv1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$callA#AT#15;
                                assume 1bv1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$callA;
                                assume 1bv1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$callB;
                                assume 1bv1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$callB;
                                assume 1bv1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$callB;
                                goto inline$$bugle_barrier_duplicated_0$0$anon10_Then, inline$$bugle_barrier_duplicated_0$0$anon10_Else;

                              inline$$bugle_barrier_duplicated_0$0$anon10_Then:
                                assume {:partition} 1bv1 != 0bv1 || 1bv1 != 0bv1;
                                goto inline$$bugle_barrier_duplicated_0$0$anon5;

                              inline$$bugle_barrier_duplicated_0$0$anon5:
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> 0bv1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$output;
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> 0bv1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$output;
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> 0bv1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$output;
                                goto inline$$bugle_barrier_duplicated_0$0$anon11_Then, inline$$bugle_barrier_duplicated_0$0$anon11_Else;

                              inline$$bugle_barrier_duplicated_0$0$anon11_Else:
                                assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (0bv1 != 0bv1 || 0bv1 != 0bv1));
                                goto __partitioned_block_$entry_0$49;

                              __partitioned_block_$entry_0$49:
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 64) && true;
                                assert {:tag "accessedOffsetsSatisfyPredicates"} _b10 ==> _WRITE_HAS_OCCURRED_$$callB ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assert {:tag "nowrite"} _b9 ==> !_WRITE_HAS_OCCURRED_$$callB;
                                assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _WRITE_HAS_OCCURRED_$$callA#AT#15 ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32);
                                assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _READ_HAS_OCCURRED_$$callA#AT#15 ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32) || _WATCHED_OFFSET == BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32), 1bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32), 2bv32) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1bv32), 4bv32), 3bv32);
                                assert {:tag "nowrite"} _b6 ==> !_WRITE_HAS_OCCURRED_$$callA#AT#15;
                                assert {:tag "noread"} _b5 ==> !_READ_HAS_OCCURRED_$$callA#AT#15;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$callA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$callA#AT#15 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$callA#AT#15 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
                                assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($numSteps, $numSteps);
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($numSteps, $numSteps);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($numSteps, $numSteps);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($numSteps, $numSteps);
                                assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $numSteps);
                                assert {:block_sourceloc} {:sourceloc_num 50} true;
                                goto $for.cond;
Removing _b2
Counter example for _b2
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume (if BV32_ULT($numKeys, 16777216bv32) then 1bv1 else 0bv1) != 0bv1;
                                assume !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
                                assume !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto $entry;

                              $entry:
                                assume v0$1#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 256bv32);
                                assume v0$2#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), 256bv32);
                                assume v1$1#AT#0 == BV32_ADD(v0$1#AT#0, 255bv32);
                                assume v1$2#AT#0 == BV32_ADD(v0$2#AT#0, 255bv32);
                                assume BV1_ZEXT32((if BV32_SLT(v0$1#AT#0, v1$1#AT#0) ==> BV32_ULT($$input[v0$1#AT#0], $$input[v1$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v0$2#AT#0, v1$2#AT#0) ==> BV32_ULT($$input[v0$2#AT#0], $$input[v1$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 0) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE(0bv32, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 0bv32) then 1bv1 else 0bv1) != 0bv1;
                                goto $for.cond;

                              $for.cond:
                                assume {:captureState "loop_head_state_0"} $mv_state($mv_state_const, 1) && true;
                                assume _b3 ==> BV32_UGE($i.0#AT#0, 0bv32);
                                assume _b2 ==> BV32_ULE($i.0#AT#0, 0bv32);
                                assume _b1 ==> BV32_SGE($i.0#AT#0, 0bv32);
                                assume _b0 ==> BV32_SLE($i.0#AT#0, 0bv32);
                                assume true;
                                assume (if _WRITE_HAS_OCCURRED_$$output#AT#0 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#0) then 1bv1 else 0bv1) != 0bv1;
                                assume v2#AT#1 <==> BV32_ULT($i.0#AT#0, $numKeys);
                                goto $truebb, $falsebb;

                              $truebb:
                                assume {:partition} v2#AT#1;
                                assume v3$1#AT#1 == $$keys[$i.0#AT#0];
                                assume v3$2#AT#1 == $$keys[$i.0#AT#0];
                                assume v4$1#AT#1 == $$input[v0$1#AT#0];
                                assume v4$2#AT#1 == $$input[v0$2#AT#0];
                                assume v5$1#AT#1 <==> BV32_UGE(v3$1#AT#1, v4$1#AT#1);
                                assume v5$2#AT#1 <==> BV32_UGE(v3$2#AT#1, v4$2#AT#1);
                                assume p1$1#AT#1 <==> (if v5$1#AT#1 then v5$1#AT#1 else false);
                                assume p1$2#AT#1 <==> (if v5$2#AT#1 then v5$2#AT#1 else false);
                                assume v6$1#AT#1 == (if p1$1#AT#1 then $$keys[$i.0#AT#0] else v6$1#AT#0);
                                assume v6$2#AT#1 == (if p1$2#AT#1 then $$keys[$i.0#AT#0] else v6$2#AT#0);
                                assume v7$1#AT#1 == (if p1$1#AT#1 then $$input[v1$1#AT#0] else v7$1#AT#0);
                                assume v7$2#AT#1 == (if p1$2#AT#1 then $$input[v1$2#AT#0] else v7$2#AT#0);
                                assume v8$1#AT#1 <==> (if p1$1#AT#1 then BV32_ULE(v6$1#AT#1, v7$1#AT#1) else v8$1#AT#0);
                                assume v8$2#AT#1 <==> (if p1$2#AT#1 then BV32_ULE(v6$2#AT#1, v7$2#AT#1) else v8$2#AT#0);
                                assume p3$1#AT#1 <==> (if p1$1#AT#1 && v8$1#AT#1 then v8$1#AT#1 else false);
                                assume p3$2#AT#1 <==> (if p1$2#AT#1 && v8$2#AT#1 then v8$2#AT#1 else false);
                                goto inline$_LOG_WRITE_$$output$0$Entry;

                              inline$_LOG_WRITE_$$output$0$Entry:
                                assume inline$_LOG_WRITE_$$output$0$_value_old#AT#1 == $$output#AT#0[$i.0#AT#0];
                                goto inline$_LOG_WRITE_$$output$0$log_access_entry;

                              inline$_LOG_WRITE_$$output$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$output#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then v0$1#AT#0 != inline$_LOG_WRITE_$$output$0$_value_old#AT#1 else _WRITE_READ_BENIGN_FLAG_$$output#AT#0);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#2 <==> (if p3$2#AT#1 && _WRITE_HAS_OCCURRED_$$output#AT#1 && _WATCHED_OFFSET == $i.0#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$output#AT#1);
                                goto $truebb$2;

                              $truebb$2:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} $mv_state($mv_state_const, 3) && true;
                                assume $$output#AT#1 == $$output#AT#0[$i.0#AT#0 := (if p3$1#AT#1 then v0$1#AT#0 else $$output#AT#0[$i.0#AT#0])];
                                assume $$output#AT#2 == $$output#AT#1[$i.0#AT#0 := (if p3$2#AT#1 then v0$2#AT#0 else $$output#AT#1[$i.0#AT#0])];
                                assume $i.0#AT#1 == BV32_ADD($i.0#AT#0, 1bv32);
                                assume {:captureState "loop_back_edge_state_0_0"} $mv_state($mv_state_const, 4) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0#AT#1, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output#AT#1 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#1) then 1bv1 else 0bv1) != 0bv1;
                                assume false;
                                return;
Removing _b0
Counter example for _b0
Microsoft.Boogie.AssertCounterexample

                              PreconditionGeneratedEntry:
                                assume (if BV32_ULT($numKeys, 16777216bv32) then 1bv1 else 0bv1) != 0bv1;
                                assume !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
                                assume !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
                                assume !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
                                assume BV32_SGT(group_size_x, 0bv32);
                                assume BV32_SGT(num_groups_x, 0bv32);
                                assume BV32_SGE(group_id_x$1, 0bv32);
                                assume BV32_SGE(group_id_x$2, 0bv32);
                                assume BV32_SLT(group_id_x$1, num_groups_x);
                                assume BV32_SLT(group_id_x$2, num_groups_x);
                                assume BV32_SGE(local_id_x$1, 0bv32);
                                assume BV32_SGE(local_id_x$2, 0bv32);
                                assume BV32_SLT(local_id_x$1, group_size_x);
                                assume BV32_SLT(local_id_x$2, group_size_x);
                                assume BV32_SGT(group_size_y, 0bv32);
                                assume BV32_SGT(num_groups_y, 0bv32);
                                assume BV32_SGE(group_id_y$1, 0bv32);
                                assume BV32_SGE(group_id_y$2, 0bv32);
                                assume BV32_SLT(group_id_y$1, num_groups_y);
                                assume BV32_SLT(group_id_y$2, num_groups_y);
                                assume BV32_SGE(local_id_y$1, 0bv32);
                                assume BV32_SGE(local_id_y$2, 0bv32);
                                assume BV32_SLT(local_id_y$1, group_size_y);
                                assume BV32_SLT(local_id_y$2, group_size_y);
                                assume BV32_SGT(group_size_z, 0bv32);
                                assume BV32_SGT(num_groups_z, 0bv32);
                                assume BV32_SGE(group_id_z$1, 0bv32);
                                assume BV32_SGE(group_id_z$2, 0bv32);
                                assume BV32_SLT(group_id_z$1, num_groups_z);
                                assume BV32_SLT(group_id_z$2, num_groups_z);
                                assume BV32_SGE(local_id_z$1, 0bv32);
                                assume BV32_SGE(local_id_z$2, 0bv32);
                                assume BV32_SLT(local_id_z$1, group_size_z);
                                assume BV32_SLT(local_id_z$2, group_size_z);
                                assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
                                goto $entry;

                              $entry:
                                assume v0$1#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 256bv32);
                                assume v0$2#AT#0 == BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), 256bv32);
                                assume v1$1#AT#0 == BV32_ADD(v0$1#AT#0, 255bv32);
                                assume v1$2#AT#0 == BV32_ADD(v0$2#AT#0, 255bv32);
                                assume BV1_ZEXT32((if BV32_SLT(v0$1#AT#0, v1$1#AT#0) ==> BV32_ULT($$input[v0$1#AT#0], $$input[v1$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v0$2#AT#0, v1$2#AT#0) ==> BV32_ULT($$input[v0$2#AT#0], $$input[v1$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume BV1_ZEXT32((if BV32_SLT(v1$1#AT#0, v0$2#AT#0) ==> BV32_ULT($$input[v1$1#AT#0], $$input[v0$2#AT#0]) then 1bv1 else 0bv1)) != 0bv32 && BV1_ZEXT32((if BV32_SLT(v1$2#AT#0, v0$1#AT#0) ==> BV32_ULT($$input[v1$2#AT#0], $$input[v0$1#AT#0]) then 1bv1 else 0bv1)) != 0bv32;
                                assume {:captureState "loop_entry_state_0_0"} $mv_state($mv_state_const, 0) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE(0bv32, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE(0bv32, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 0bv32) then 1bv1 else 0bv1) != 0bv1;
                                goto $for.cond;

                              $for.cond:
                                assume {:captureState "loop_head_state_0"} $mv_state($mv_state_const, 1) && true;
                                assume _b3 ==> BV32_UGE($i.0#AT#0, 0bv32);
                                assume _b2 ==> BV32_ULE($i.0#AT#0, 0bv32);
                                assume _b1 ==> BV32_SGE($i.0#AT#0, 0bv32);
                                assume _b0 ==> BV32_SLE($i.0#AT#0, 0bv32);
                                assume true;
                                assume (if _WRITE_HAS_OCCURRED_$$output#AT#0 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#0) then 1bv1 else 0bv1) != 0bv1;
                                assume v2#AT#1 <==> BV32_ULT($i.0#AT#0, $numKeys);
                                goto $truebb, $falsebb;

                              $truebb:
                                assume {:partition} v2#AT#1;
                                assume v3$1#AT#1 == $$keys[$i.0#AT#0];
                                assume v3$2#AT#1 == $$keys[$i.0#AT#0];
                                assume v4$1#AT#1 == $$input[v0$1#AT#0];
                                assume v4$2#AT#1 == $$input[v0$2#AT#0];
                                assume v5$1#AT#1 <==> BV32_UGE(v3$1#AT#1, v4$1#AT#1);
                                assume v5$2#AT#1 <==> BV32_UGE(v3$2#AT#1, v4$2#AT#1);
                                assume p1$1#AT#1 <==> (if v5$1#AT#1 then v5$1#AT#1 else false);
                                assume p1$2#AT#1 <==> (if v5$2#AT#1 then v5$2#AT#1 else false);
                                assume v6$1#AT#1 == (if p1$1#AT#1 then $$keys[$i.0#AT#0] else v6$1#AT#0);
                                assume v6$2#AT#1 == (if p1$2#AT#1 then $$keys[$i.0#AT#0] else v6$2#AT#0);
                                assume v7$1#AT#1 == (if p1$1#AT#1 then $$input[v1$1#AT#0] else v7$1#AT#0);
                                assume v7$2#AT#1 == (if p1$2#AT#1 then $$input[v1$2#AT#0] else v7$2#AT#0);
                                assume v8$1#AT#1 <==> (if p1$1#AT#1 then BV32_ULE(v6$1#AT#1, v7$1#AT#1) else v8$1#AT#0);
                                assume v8$2#AT#1 <==> (if p1$2#AT#1 then BV32_ULE(v6$2#AT#1, v7$2#AT#1) else v8$2#AT#0);
                                assume p3$1#AT#1 <==> (if p1$1#AT#1 && v8$1#AT#1 then v8$1#AT#1 else false);
                                assume p3$2#AT#1 <==> (if p1$2#AT#1 && v8$2#AT#1 then v8$2#AT#1 else false);
                                goto inline$_LOG_WRITE_$$output$0$Entry;

                              inline$_LOG_WRITE_$$output$0$Entry:
                                assume inline$_LOG_WRITE_$$output$0$_value_old#AT#1 == $$output#AT#0[$i.0#AT#0];
                                goto inline$_LOG_WRITE_$$output$0$log_access_entry;

                              inline$_LOG_WRITE_$$output$0$log_access_entry:
                                assume _WRITE_HAS_OCCURRED_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then true else _WRITE_HAS_OCCURRED_$$output#AT#0);
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#1 <==> (if p3$1#AT#1 && _TRACKING && _WATCHED_OFFSET == $i.0#AT#0 && _WATCHED_VALUE_$$output == v0$1#AT#0 then v0$1#AT#0 != inline$_LOG_WRITE_$$output$0$_value_old#AT#1 else _WRITE_READ_BENIGN_FLAG_$$output#AT#0);
                                goto inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG;

                              inline$_UPDATE_WRITE_READ_BENIGN_FLAG_$$output$0$_UPDATE_BENIGN_FLAG:
                                assume _WRITE_READ_BENIGN_FLAG_$$output#AT#2 <==> (if p3$2#AT#1 && _WRITE_HAS_OCCURRED_$$output#AT#1 && _WATCHED_OFFSET == $i.0#AT#0 then false else _WRITE_READ_BENIGN_FLAG_$$output#AT#1);
                                goto $truebb$2;

                              $truebb$2:
                                assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} $mv_state($mv_state_const, 2) && true;
                                assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} $mv_state($mv_state_const, 3) && true;
                                assume $$output#AT#1 == $$output#AT#0[$i.0#AT#0 := (if p3$1#AT#1 then v0$1#AT#0 else $$output#AT#0[$i.0#AT#0])];
                                assume $$output#AT#2 == $$output#AT#1[$i.0#AT#0 := (if p3$2#AT#1 then v0$2#AT#0 else $$output#AT#1[$i.0#AT#0])];
                                assume $i.0#AT#1 == BV32_ADD($i.0#AT#0, 1bv32);
                                assume {:captureState "loop_back_edge_state_0_0"} $mv_state($mv_state_const, 4) && true;
                                assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0#AT#1, 0bv32);
                                assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0#AT#1, 0bv32);
                                assert {:block_sourceloc} {:sourceloc_num 2} true;
                                assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output#AT#1 ==> BV32_ULT(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $i.0#AT#1) then 1bv1 else 0bv1) != 0bv1;
                                assume false;
                                return;
