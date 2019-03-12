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
	case 3: // STATE 1 - _spin_nvr.tmp:36 - [(((!(((visitor[3]==WAIT_PAY)&&(((pay_queue[0]==FREE)||(pay_queue[1]==FREE))||(wait_queue[0]==FREE))))&&!(((visitor[3]==ACTION)||(visitor[3]==GO_AWAY))))||(!(((visitor[3]==ACTION)||(visitor[3]==GO_AWAY)))&&(visitor[3]==WAIT_ACTION))))] (0:0:0 - 1)
		
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
		if (!((( !(((now.visitor[3]==4)&&(((now.pay_queue[0]==6)||(now.pay_queue[1]==6))||(now.wait_queue[0]==6))))&& !(((now.visitor[3]==2)||(now.visitor[3]==1))))||( !(((now.visitor[3]==2)||(now.visitor[3]==1)))&&(now.visitor[3]==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:37 - [(!(((visitor[3]==ACTION)||(visitor[3]==GO_AWAY))))] (0:0:0 - 1)
		
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
		if (!( !(((now.visitor[3]==2)||(now.visitor[3]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:38 - [(((!(((visitor[2]==WAIT_PAY)&&(((pay_queue[0]==FREE)||(pay_queue[1]==FREE))||(wait_queue[0]==FREE))))&&!(((visitor[2]==ACTION)||(visitor[2]==GO_AWAY))))||(!(((visitor[2]==ACTION)||(visitor[2]==GO_AWAY)))&&(visitor[2]==WAIT_ACTION))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][5] = 1;
		if (!((( !(((now.visitor[2]==4)&&(((now.pay_queue[0]==6)||(now.pay_queue[1]==6))||(now.wait_queue[0]==6))))&& !(((now.visitor[2]==2)||(now.visitor[2]==1))))||( !(((now.visitor[2]==2)||(now.visitor[2]==1)))&&(now.visitor[2]==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - _spin_nvr.tmp:39 - [(!(((visitor[2]==ACTION)||(visitor[2]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][7] = 1;
		if (!( !(((now.visitor[2]==2)||(now.visitor[2]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 9 - _spin_nvr.tmp:40 - [(((!(((visitor[1]==WAIT_PAY)&&(((pay_queue[0]==FREE)||(pay_queue[1]==FREE))||(wait_queue[0]==FREE))))&&!(((visitor[1]==ACTION)||(visitor[1]==GO_AWAY))))||(!(((visitor[1]==ACTION)||(visitor[1]==GO_AWAY)))&&(visitor[1]==WAIT_ACTION))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][9] = 1;
		if (!((( !(((now.visitor[1]==4)&&(((now.pay_queue[0]==6)||(now.pay_queue[1]==6))||(now.wait_queue[0]==6))))&& !(((now.visitor[1]==2)||(now.visitor[1]==1))))||( !(((now.visitor[1]==2)||(now.visitor[1]==1)))&&(now.visitor[1]==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - _spin_nvr.tmp:41 - [(!(((visitor[1]==ACTION)||(visitor[1]==GO_AWAY))))] (0:0:0 - 1)
		
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
		if (!( !(((now.visitor[1]==2)||(now.visitor[1]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:42 - [(((!(((visitor[0]==WAIT_PAY)&&(((pay_queue[0]==FREE)||(pay_queue[1]==FREE))||(wait_queue[0]==FREE))))&&!(((visitor[0]==ACTION)||(visitor[0]==GO_AWAY))))||(!(((visitor[0]==ACTION)||(visitor[0]==GO_AWAY)))&&(visitor[0]==WAIT_ACTION))))] (0:0:0 - 1)
		
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
		reached[5][13] = 1;
		if (!((( !(((now.visitor[0]==4)&&(((now.pay_queue[0]==6)||(now.pay_queue[1]==6))||(now.wait_queue[0]==6))))&& !(((now.visitor[0]==2)||(now.visitor[0]==1))))||( !(((now.visitor[0]==2)||(now.visitor[0]==1)))&&(now.visitor[0]==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 15 - _spin_nvr.tmp:43 - [(!(((visitor[0]==ACTION)||(visitor[0]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][15] = 1;
		if (!( !(((now.visitor[0]==2)||(now.visitor[0]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 22 - _spin_nvr.tmp:48 - [(!(((visitor[3]==ACTION)||(visitor[3]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][22] = 1;
		if (!( !(((now.visitor[3]==2)||(now.visitor[3]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 27 - _spin_nvr.tmp:52 - [(!(((visitor[2]==ACTION)||(visitor[2]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][27] = 1;
		if (!( !(((now.visitor[2]==2)||(now.visitor[2]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 32 - _spin_nvr.tmp:56 - [(!(((visitor[1]==ACTION)||(visitor[1]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][32] = 1;
		if (!( !(((now.visitor[1]==2)||(now.visitor[1]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 37 - _spin_nvr.tmp:60 - [(!(((visitor[0]==ACTION)||(visitor[0]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][37] = 1;
		if (!( !(((now.visitor[0]==2)||(now.visitor[0]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 42 - _spin_nvr.tmp:64 - [((!(((visitor[3]==ACTION)||(visitor[3]==GO_AWAY)))&&(visitor[3]==WAIT_ACTION)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported42 = 0;
			if (verbose && !reported42)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported42 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported42 = 0;
			if (verbose && !reported42)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported42 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][42] = 1;
		if (!(( !(((now.visitor[3]==2)||(now.visitor[3]==1)))&&(now.visitor[3]==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 44 - _spin_nvr.tmp:65 - [(!(((visitor[3]==ACTION)||(visitor[3]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][44] = 1;
		if (!( !(((now.visitor[3]==2)||(now.visitor[3]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 49 - _spin_nvr.tmp:69 - [((!(((visitor[2]==ACTION)||(visitor[2]==GO_AWAY)))&&(visitor[2]==WAIT_ACTION)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][49] = 1;
		if (!(( !(((now.visitor[2]==2)||(now.visitor[2]==1)))&&(now.visitor[2]==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 51 - _spin_nvr.tmp:70 - [(!(((visitor[2]==ACTION)||(visitor[2]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][51] = 1;
		if (!( !(((now.visitor[2]==2)||(now.visitor[2]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 56 - _spin_nvr.tmp:74 - [((!(((visitor[1]==ACTION)||(visitor[1]==GO_AWAY)))&&(visitor[1]==WAIT_ACTION)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][56] = 1;
		if (!(( !(((now.visitor[1]==2)||(now.visitor[1]==1)))&&(now.visitor[1]==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 58 - _spin_nvr.tmp:75 - [(!(((visitor[1]==ACTION)||(visitor[1]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][58] = 1;
		if (!( !(((now.visitor[1]==2)||(now.visitor[1]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 63 - _spin_nvr.tmp:79 - [((!(((visitor[0]==ACTION)||(visitor[0]==GO_AWAY)))&&(visitor[0]==WAIT_ACTION)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported63 = 0;
			if (verbose && !reported63)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported63 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported63 = 0;
			if (verbose && !reported63)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported63 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][63] = 1;
		if (!(( !(((now.visitor[0]==2)||(now.visitor[0]==1)))&&(now.visitor[0]==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 65 - _spin_nvr.tmp:80 - [(!(((visitor[0]==ACTION)||(visitor[0]==GO_AWAY))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported65 = 0;
			if (verbose && !reported65)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported65 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported65 = 0;
			if (verbose && !reported65)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported65 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][65] = 1;
		if (!( !(((now.visitor[0]==2)||(now.visitor[0]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 70 - _spin_nvr.tmp:82 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][70] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM rool3 */
	case 24: // STATE 1 - _spin_nvr.tmp:25 - [(!((((((visitor[0]==ACTION)||(visitor[0]==GO_AWAY))&&((visitor[1]==ACTION)||(visitor[1]==GO_AWAY)))&&((visitor[2]==ACTION)||(visitor[2]==GO_AWAY)))&&((visitor[3]==ACTION)||(visitor[3]==GO_AWAY)))))] (0:0:0 - 1)
		
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
		if (!( !((((((now.visitor[0]==2)||(now.visitor[0]==1))&&((now.visitor[1]==2)||(now.visitor[1]==1)))&&((now.visitor[2]==2)||(now.visitor[2]==1)))&&((now.visitor[3]==2)||(now.visitor[3]==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 13 - _spin_nvr.tmp:32 - [-end-] (0:0:0 - 1)
		
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
	case 26: // STATE 1 - _spin_nvr.tmp:14 - [(!(((wait_queue[0]==FREE)&&(wait_queue[1]==FREE))))] (0:0:0 - 1)
		
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
	case 27: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
	case 28: // STATE 1 - _spin_nvr.tmp:3 - [(!(((pay_queue[0]==FREE)&&(pay_queue[1]==FREE))))] (0:0:0 - 1)
		
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
	case 29: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
	case 30: // STATE 1 - model.pml:72 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 2 - model.pml:72 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 3 - model.pml:73 - [visitor[i] = WAIT_PAY] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P1 *)this)->i, 5) ];
		now.visitor[ Index(((P1 *)this)->i, 5) ] = 4;
#ifdef VAR_RANGES
		logval("visitor[:init::i]", now.visitor[ Index(((P1 *)this)->i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 4 - model.pml:72 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 10 - model.pml:76 - [pay_queue[0] = FREE] (0:0:1 - 3)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = now.pay_queue[0];
		now.pay_queue[0] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[0]", now.pay_queue[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 11 - model.pml:77 - [pay_queue[1] = FREE] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.pay_queue[1];
		now.pay_queue[1] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[1]", now.pay_queue[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 12 - model.pml:78 - [wait_queue[0] = FREE] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.wait_queue[0];
		now.wait_queue[0] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[0]", now.wait_queue[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 13 - model.pml:79 - [wait_queue[1] = FREE] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = now.wait_queue[1];
		now.wait_queue[1] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[1]", now.wait_queue[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 14 - model.pml:81 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 15 - model.pml:81 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!((((P1 *)this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 16 - model.pml:82 - [(run queueAction(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 17 - model.pml:81 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 23 - model.pml:85 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC queueAction */
	case 43: // STATE 1 - model.pml:21 - [((visitor[id]==WAIT_PAY))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.visitor[ Index(((P0 *)this)->id, 5) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 2 - model.pml:23 - [((pay_queue[0]==FREE))] (29:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.pay_queue[0]==6)))
			continue;
		/* merge: pay_queue[0] = BUSY(0, 3, 29) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.pay_queue[0];
		now.pay_queue[0] = 5;
#ifdef VAR_RANGES
		logval("pay_queue[0]", now.pay_queue[0]);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 45: // STATE 4 - model.pml:25 - [lottery = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 1;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 5 - model.pml:25 - [lottery = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 2;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 6 - model.pml:25 - [lottery = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 3;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 7 - model.pml:25 - [lottery = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 4;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 8 - model.pml:25 - [lottery = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 5;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 9 - model.pml:25 - [lottery = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 6;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 10 - model.pml:25 - [lottery = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 7;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 11 - model.pml:25 - [lottery = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 8;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 12 - model.pml:25 - [lottery = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 9;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 13 - model.pml:25 - [lottery = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 10;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 14 - model.pml:25 - [lottery = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 11;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 15 - model.pml:25 - [lottery = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 12;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 16 - model.pml:25 - [lottery = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 13;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 17 - model.pml:25 - [lottery = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 14;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 18 - model.pml:25 - [lottery = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 15;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 19 - model.pml:25 - [lottery = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 16;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 20 - model.pml:25 - [lottery = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 17;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 21 - model.pml:25 - [lottery = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 18;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 22 - model.pml:25 - [lottery = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 19;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 23 - model.pml:25 - [lottery = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 20;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 24 - model.pml:25 - [lottery = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 21;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 25 - model.pml:25 - [lottery = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 22;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 26 - model.pml:25 - [lottery = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 23;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 27 - model.pml:25 - [lottery = 24] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 24;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 28 - model.pml:25 - [lottery = 25] (0:0:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_lottery;
		((P0 *)this)->_3_1_lottery = 25;
#ifdef VAR_RANGES
		logval("queueAction:lottery", ((P0 *)this)->_3_1_lottery);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 31 - model.pml:27 - [((lottery==5))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!((((P0 *)this)->_3_1_lottery==5)))
			continue;
		/* merge: visitor[id] = ACTION(0, 32, 73) */
		reached[0][32] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 36, 73) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 46, 73) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 71: // STATE 33 - model.pml:29 - [((lottery!=5))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((P0 *)this)->_3_1_lottery!=5)))
			continue;
		/* merge: visitor[id] = WAIT_ACTION(0, 34, 73) */
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 3;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 36, 73) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 46, 73) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 72: // STATE 37 - model.pml:32 - [((pay_queue[1]==FREE))] (43:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((now.pay_queue[1]==6)))
			continue;
		/* merge: pay_queue[1] = BUSY(0, 38, 43) */
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.pay_queue[1];
		now.pay_queue[1] = 5;
#ifdef VAR_RANGES
		logval("pay_queue[1]", now.pay_queue[1]);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 73: // STATE 39 - model.pml:35 - [((lottery==7))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!((((P0 *)this)->_3_1_lottery==7)))
			continue;
		/* merge: visitor[id] = ACTION(0, 40, 73) */
		reached[0][40] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 44, 73) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(0, 46, 73) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 74: // STATE 41 - model.pml:37 - [((lottery!=7))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((P0 *)this)->_3_1_lottery!=7)))
			continue;
		/* merge: visitor[id] = WAIT_ACTION(0, 42, 73) */
		reached[0][42] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 3;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 44, 73) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(0, 46, 73) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 75: // STATE 47 - model.pml:41 - [((visitor[id]==WAIT_ACTION))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((now.visitor[ Index(((P0 *)this)->id, 5) ]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 48 - model.pml:43 - [((wait_queue[0]==FREE))] (73:0:2 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!((now.wait_queue[0]==6)))
			continue;
		/* merge: visitor[id] = ACTION(73, 49, 73) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: wait_queue[0] = BUSY(73, 50, 73) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[1] = now.wait_queue[0];
		now.wait_queue[0] = 5;
#ifdef VAR_RANGES
		logval("wait_queue[0]", now.wait_queue[0]);
#endif
		;
		/* merge: .(goto)(0, 59, 73) */
		reached[0][59] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 77: // STATE 51 - model.pml:46 - [((wait_queue[1]==FREE))] (73:0:2 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!((now.wait_queue[1]==6)))
			continue;
		/* merge: visitor[id] = ACTION(73, 52, 73) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: wait_queue[1] = BUSY(73, 53, 73) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[1] = now.wait_queue[1];
		now.wait_queue[1] = 5;
#ifdef VAR_RANGES
		logval("wait_queue[1]", now.wait_queue[1]);
#endif
		;
		/* merge: .(goto)(0, 59, 73) */
		reached[0][59] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 78: // STATE 54 - model.pml:49 - [((timer<10))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!((((P0 *)this)->_3_1_timer<10)))
			continue;
		/* merge: timer = (timer+1)(0, 55, 73) */
		reached[0][55] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_3_1_timer;
		((P0 *)this)->_3_1_timer = (((P0 *)this)->_3_1_timer+1);
#ifdef VAR_RANGES
		logval("queueAction:timer", ((P0 *)this)->_3_1_timer);
#endif
		;
		/* merge: .(goto)(0, 59, 73) */
		reached[0][59] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 79: // STATE 56 - model.pml:51 - [((timer==10))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		if (!((((P0 *)this)->_3_1_timer==10)))
			continue;
		/* merge: visitor[id] = GO_AWAY(0, 57, 73) */
		reached[0][57] = 1;
		(trpt+1)->bup.oval = now.visitor[ Index(((P0 *)this)->id, 5) ];
		now.visitor[ Index(((P0 *)this)->id, 5) ] = 1;
#ifdef VAR_RANGES
		logval("visitor[queueAction:id]", now.visitor[ Index(((P0 *)this)->id, 5) ]);
#endif
		;
		/* merge: .(goto)(0, 59, 73) */
		reached[0][59] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 80: // STATE 60 - model.pml:54 - [(((visitor[id]==ACTION)||(visitor[id]==GO_AWAY)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		if (!(((now.visitor[ Index(((P0 *)this)->id, 5) ]==2)||(now.visitor[ Index(((P0 *)this)->id, 5) ]==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 61 - model.pml:56 - [((pay_queue[0]==BUSY))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((now.pay_queue[0]==5)))
			continue;
		/* merge: pay_queue[0] = FREE(0, 62, 73) */
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.pay_queue[0];
		now.pay_queue[0] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[0]", now.pay_queue[0]);
#endif
		;
		/* merge: .(goto)(0, 70, 73) */
		reached[0][70] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 82: // STATE 63 - model.pml:58 - [((pay_queue[1]==BUSY))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((now.pay_queue[1]==5)))
			continue;
		/* merge: pay_queue[1] = FREE(0, 64, 73) */
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.pay_queue[1];
		now.pay_queue[1] = 6;
#ifdef VAR_RANGES
		logval("pay_queue[1]", now.pay_queue[1]);
#endif
		;
		/* merge: .(goto)(0, 70, 73) */
		reached[0][70] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 83: // STATE 65 - model.pml:60 - [((wait_queue[0]==BUSY))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		if (!((now.wait_queue[0]==5)))
			continue;
		/* merge: wait_queue[0] = FREE(0, 66, 73) */
		reached[0][66] = 1;
		(trpt+1)->bup.oval = now.wait_queue[0];
		now.wait_queue[0] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[0]", now.wait_queue[0]);
#endif
		;
		/* merge: .(goto)(0, 70, 73) */
		reached[0][70] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 84: // STATE 67 - model.pml:62 - [((wait_queue[1]==BUSY))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (!((now.wait_queue[1]==5)))
			continue;
		/* merge: wait_queue[1] = FREE(0, 68, 73) */
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.wait_queue[1];
		now.wait_queue[1] = 6;
#ifdef VAR_RANGES
		logval("wait_queue[1]", now.wait_queue[1]);
#endif
		;
		/* merge: .(goto)(0, 70, 73) */
		reached[0][70] = 1;
		;
		/* merge: .(goto)(0, 72, 73) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 85: // STATE 77 - model.pml:68 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
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

