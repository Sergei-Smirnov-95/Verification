	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM rool4 */
;
		;
		;
		
	case 4: // STATE 3
		goto R999;
;
		;
		
	case 6: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM rool3 */
;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM rool2 */
;
		;
		
	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM rool1 */
;
		;
		
	case 12: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 13: // STATE 1
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 3
		;
		now.visitor[ Index(((P1 *)this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 4
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 10
		;
		now.pay_queue[0] = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 11
		;
		now.pay_queue[1] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 12
		;
		now.wait_queue[0] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 13
		;
		now.wait_queue[1] = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 14
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 16
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 24: // STATE 17
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC queueAction */
;
		;
		
	case 27: // STATE 3
		;
		now.pay_queue[0] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 4
		;
		((P0 *)this)->_3_1_lottery = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 5
		;
		((P0 *)this)->_3_1_lottery = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 9
		;
		now.visitor[ Index(((P0 *)this)->id, 5) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->_3_1_lottery = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 31: // STATE 11
		;
		now.visitor[ Index(((P0 *)this)->id, 5) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->_3_1_lottery = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: // STATE 15
		;
		now.pay_queue[1] = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 16
		;
		((P0 *)this)->_3_1_lottery = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 17
		;
		((P0 *)this)->_3_1_lottery = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 21
		;
		now.visitor[ Index(((P0 *)this)->id, 5) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->_3_1_lottery = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 36: // STATE 23
		;
		now.visitor[ Index(((P0 *)this)->id, 5) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->_3_1_lottery = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 38: // STATE 31
		;
		now.wait_queue[0] = trpt->bup.ovals[1];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 39: // STATE 34
		;
		now.wait_queue[1] = trpt->bup.ovals[1];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 40: // STATE 36
		;
		((P0 *)this)->_3_1_timer = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 38
		;
		now.visitor[ Index(((P0 *)this)->id, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 43: // STATE 43
		;
		now.pay_queue[0] = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 45
		;
		now.pay_queue[1] = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 47
		;
		now.wait_queue[0] = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 49
		;
		now.wait_queue[1] = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 58
		;
		p_restor(II);
		;
		;
		goto R999;
	}

