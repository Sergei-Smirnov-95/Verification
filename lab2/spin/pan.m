#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM rool4 */
	case 3: // STATE 1 - _spin_nvr.tmp:36 - [(((!(!(((visitor[0]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE)))))&&!(((visitor[0]==WAIT_ACTION)||(visitor[0]==ACTION))))&&(!(!(((visitor[0]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE)))))||(!((!(((visitor[1]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[1]==WAIT_ACTION)||(visitor[1]==ACTION))))||(!((!(((visitor[2]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[2]==WAIT_ACTION)||(visitor[2]==ACTION))))||!((!(((visitor[3]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[3]==WAIT_ACTION)||(visitor[3]==ACTION)))))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!((( !( !(((now.visitor[0]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6)))))&& !(((now.visitor[0]==3)||(now.visitor[0]==2))))&&( !( !(((now.visitor[0]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6)))))||( !(( !(((now.visitor[1]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[1]==3)||(now.visitor[1]==2))))||( !(( !(((now.visitor[2]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[2]==3)||(now.visitor[2]==2))))|| !(( !(((now.visitor[3]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[3]==3)||(now.visitor[3]==2))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:37 - [((!((!(((visitor[1]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[1]==WAIT_ACTION)||(visitor[1]==ACTION))))||(!((!(((visitor[2]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[2]==WAIT_ACTION)||(visitor[2]==ACTION))))||!((!(((visitor[3]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[3]==WAIT_ACTION)||(visitor[3]==ACTION)))))))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][3] = 1;
		if (!(( !(( !(((now.visitor[1]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[1]==3)||(now.visitor[1]==2))))||( !(( !(((now.visitor[2]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[2]==3)||(now.visitor[2]==2))))|| !(( !(((now.visitor[3]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[3]==3)||(now.visitor[3]==2))))))))
			continue;
		/* merge: assert(!((!((!(((visitor[1]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[1]==WAIT_ACTION)||(visitor[1]==ACTION))))||(!((!(((visitor[2]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[2]==WAIT_ACTION)||(visitor[2]==ACTION))))||!((!(((visitor[3]==WAIT_PAY)&&((pay_queue[0]==FREE)||(pay_queue[1]==FREE))))||((visitor[3]==WAIT_ACTION)||(visitor[3]==ACTION))))))))(0, 4, 8) */
		reached[5][4] = 1;
		spin_assert( !(( !(( !(((now.visitor[1]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[1]==3)||(now.visitor[1]==2))))||( !(( !(((now.visitor[2]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[2]==3)||(now.visitor[2]==2))))|| !(( !(((now.visitor[3]==4)&&((now.pay_queue[0]==6)||(now.pay_queue[1]==6))))||((now.visitor[3]==3)||(now.visitor[3]==2))))))), " !(( !(( !(((visitor[1]==4)&&((pay_queue[0]==6)||(pay_queue[1]==6))))||((visitor[1]==3)||(visitor[1]==2))))||( !(( !(((visitor[2]==4)&&((pay_queue[0]==6)||(pay_queue[1]==6))))||((visitor[2]==3)||(visitor[2]==2))))|| !(( !(((visitor[3]==4)&&((pay_queue[0]==6)||(pay_queue[1]==6))))||((visitor[3]==3)||(visitor[3]==2)))))))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[5][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 11 - _spin_nvr.tmp:42 - [(!(((visitor[0]==WAIT_ACTION)||(visitor[0]==ACTION))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][11] = 1;
		if (!( !(((now.visitor[0]==3)||(now.visitor[0]==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 17 - _spin_nvr.tmp:46 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM rool3 */
	case 7: // STATE 1 - _spin_nvr.tmp:25 - [(!(((((visitor[0]==ACTION)&&(visitor[1]==ACTION))&&(visitor[2]==ACTION))&&(visitor[3]==ACTION))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(((((now.visitor[0]==2)&&(now.visitor[1]==2))&&(now.visitor[2]==2))&&(now.visitor[3]==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:32 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM rool2 */
	case 9: // STATE 1 - _spin_nvr.tmp:14 - [(!(((wait_queue[0]==FREE)&&(wait_queue[1]==FREE))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !(((now.wait_queue[0]==6)&&(now.wait_queue[1]==6)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM rool1 */
	case 11: // STATE 1 - _spin_nvr.tmp:3 - [(!(((pay_queue[0]==FREE)&&(pay_queue[1]==FREE))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !(((now.pay_queue[0]==6)&&(now.pay_queue[1]==6)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 13: // STATE 1 - model.pml:72 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - model.pml:72 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 3 - model.pml:73 - [visitor[i] = WAIT_PAY] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P1 *)this)->i, 5) ];
		now.visitor[ Index(((P1 *)this)->i, 5) ] = 4;
#ifdef VAR_RANGES
		logval("visitor[:init::i]", now.visitor[ Index(((P1 *)this)->i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 4 - model.pml:72 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 10 - model.pml:76 - [pay_queue[0] = FREE] (0:0:1 - 3)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = now.pay_queue[0];
		now.pay_queue[0] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[0]", now.pay_queue[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 11 - model.pml:77 - [pay_queue[1] = FREE] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.pay_queue[1];
		now.pay_queue[1] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[1]", now.pay_queue[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 12 - model.pml:78 - [wait_queue[0] = FREE] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.wait_queue[0];
		now.wait_queue[0] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[0]", now.wait_queue[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - model.pml:79 - [wait_queue[1] = FREE] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = now.wait_queue[1];
		now.wait_queue[1] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[1]", now.wait_queue[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 14 - model.pml:81 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 15 - model.pml:81 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!((((P1 *)this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 16 - model.pml:82 - [(run queueAction(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 17 - model.pml:81 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 23 - model.pml:84 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC queueAction */
	case 26: // STATE 1 - model.pml:20 - [((visitor[id]==WAIT_PAY))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.visitor[ Index(((P0 *)this)->id, 5) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 2 - model.pml:22 - [((pay_queue[0]==FREE))] (6:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.pay_queue[0]==6)))
			continue;
		/* merge: pay_queue[0] = BUSY(0, 3, 6) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.pay_queue[0];
		now.pay_queue[0] = 5;
#ifdef VAR_RANGES
		logval("pay_queue[0]", now.pay_queue[0]);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 28: // STATE 4 - model.pml:24 - [lottery = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 1;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 5 - model.pml:24 - [lottery = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 2;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 8 - model.pml:26 - [((lottery==1))] (54:0:2 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((P0 *)this)->_3_1_lottery==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_lottery */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_3_1_lottery;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_3_1_lottery = 0;
		/* merge: visitor[id] = ACTION(0, 9, 54) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[1] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 13, 54) */
		reached[0][13] = 1;
		;
		/* merge: .(goto)(0, 27, 54) */
		reached[0][27] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 31: // STATE 10 - model.pml:28 - [((lottery!=1))] (54:0:2 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((P0 *)this)->_3_1_lottery!=1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_lottery */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_3_1_lottery;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_3_1_lottery = 0;
		/* merge: visitor[id] = WAIT_ACTION(0, 11, 54) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 3;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 13, 54) */
		reached[0][13] = 1;
		;
		/* merge: .(goto)(0, 27, 54) */
		reached[0][27] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 32: // STATE 14 - model.pml:31 - [((pay_queue[1]==FREE))] (18:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((now.pay_queue[1]==6)))
			continue;
		/* merge: pay_queue[1] = BUSY(0, 15, 18) */
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.pay_queue[1];
		now.pay_queue[1] = 5;
#ifdef VAR_RANGES
		logval("pay_queue[1]", now.pay_queue[1]);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 16 - model.pml:33 - [lottery = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 1;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 17 - model.pml:33 - [lottery = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 2;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 20 - model.pml:35 - [((lottery==1))] (54:0:2 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((P0 *)this)->_3_1_lottery==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_lottery */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_3_1_lottery;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_3_1_lottery = 0;
		/* merge: visitor[id] = ACTION(0, 21, 54) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 25, 54) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 27, 54) */
		reached[0][27] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 36: // STATE 22 - model.pml:37 - [((lottery!=1))] (54:0:2 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!((((P0 *)this)->_3_1_lottery!=1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_lottery */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_3_1_lottery;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_3_1_lottery = 0;
		/* merge: visitor[id] = WAIT_ACTION(0, 23, 54) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 3;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 25, 54) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 27, 54) */
		reached[0][27] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 37: // STATE 28 - model.pml:41 - [((visitor[id]==WAIT_ACTION))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((now.visitor[ Index(((P0 *)this)->id, 5) ]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 29 - model.pml:43 - [((wait_queue[0]==FREE))] (54:0:2 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((now.wait_queue[0]==6)))
			continue;
		/* merge: visitor[id] = ACTION(54, 30, 54) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: wait_queue[0] = BUSY(54, 31, 54) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = now.wait_queue[0];
		now.wait_queue[0] = 5;
#ifdef VAR_RANGES
		logval("wait_queue[0]", now.wait_queue[0]);
#endif
		;
		/* merge: .(goto)(0, 40, 54) */
		reached[0][40] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 39: // STATE 32 - model.pml:46 - [((wait_queue[1]==FREE))] (54:0:2 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((now.wait_queue[1]==6)))
			continue;
		/* merge: visitor[id] = ACTION(54, 33, 54) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: wait_queue[1] = BUSY(54, 34, 54) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = now.wait_queue[1];
		now.wait_queue[1] = 5;
#ifdef VAR_RANGES
		logval("wait_queue[1]", now.wait_queue[1]);
#endif
		;
		/* merge: .(goto)(0, 40, 54) */
		reached[0][40] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 40: // STATE 35 - model.pml:49 - [((timer<waitingTime))] (54:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((P0 *)this)->_3_1_timer<((P0 *)this)->_3_1_waitingTime)))
			continue;
		/* merge: timer = (timer+1)(0, 36, 54) */
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_timer;
		((P0 *)this)->_3_1_timer = (((P0 *)this)->_3_1_timer+1);
#ifdef VAR_RANGES
		logval("queueAction:timer", ((P0 *)this)->_3_1_timer);
#endif
		;
		/* merge: .(goto)(0, 40, 54) */
		reached[0][40] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 41: // STATE 37 - model.pml:51 - [((timer==waitingTime))] (54:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((P0 *)this)->_3_1_timer==((P0 *)this)->_3_1_waitingTime)))
			continue;
		/* merge: visitor[id] = GO_AWAY(0, 38, 54) */
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 1;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 40, 54) */
		reached[0][40] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 42: // STATE 41 - model.pml:54 - [(((visitor[id]==ACTION)||(visitor[id]==GO_AWAY)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!(((now.visitor[ Index(((P0 *)this)->id, 5) ]==2)||(now.visitor[ Index(((P0 *)this)->id, 5) ]==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 42 - model.pml:56 - [((pay_queue[0]==BUSY))] (54:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.pay_queue[0]==5)))
			continue;
		/* merge: pay_queue[0] = FREE(0, 43, 54) */
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.pay_queue[0];
		now.pay_queue[0] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[0]", now.pay_queue[0]);
#endif
		;
		/* merge: .(goto)(0, 51, 54) */
		reached[0][51] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 44: // STATE 44 - model.pml:58 - [((pay_queue[1]==BUSY))] (54:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!((now.pay_queue[1]==5)))
			continue;
		/* merge: pay_queue[1] = FREE(0, 45, 54) */
		reached[0][45] = 1;
		(trpt+1)->bup.oval = now.pay_queue[1];
		now.pay_queue[1] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[1]", now.pay_queue[1]);
#endif
		;
		/* merge: .(goto)(0, 51, 54) */
		reached[0][51] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 45: // STATE 46 - model.pml:60 - [((wait_queue[0]==BUSY))] (54:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!((now.wait_queue[0]==5)))
			continue;
		/* merge: wait_queue[0] = FREE(0, 47, 54) */
		reached[0][47] = 1;
		(trpt+1)->bup.oval = now.wait_queue[0];
		now.wait_queue[0] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[0]", now.wait_queue[0]);
#endif
		;
		/* merge: .(goto)(0, 51, 54) */
		reached[0][51] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 46: // STATE 48 - model.pml:62 - [((wait_queue[1]==BUSY))] (54:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!((now.wait_queue[1]==5)))
			continue;
		/* merge: wait_queue[1] = FREE(0, 49, 54) */
		reached[0][49] = 1;
		(trpt+1)->bup.oval = now.wait_queue[1];
		now.wait_queue[1] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[1]", now.wait_queue[1]);
#endif
		;
		/* merge: .(goto)(0, 51, 54) */
		reached[0][51] = 1;
		;
		/* merge: .(goto)(0, 53, 54) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 47: // STATE 58 - model.pml:68 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

