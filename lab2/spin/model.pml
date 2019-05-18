#define num_visitors 5 

mtype = { WAIT_PAY, WAIT_ACTION, ACTION, GO_AWAY };
mtype = { FREE, BUSY };

mtype visitor[num_visitors];
mtype pay_queue[2];
mtype wait_queue[2];

proctype queueAction(int id)
{
    atomic{

        int lottery = 2;
        int timer = 0;
	int waitingTime = 1;
	do
          :: 
	  if
           :: visitor[id] == WAIT_PAY ->
              if
              :: pay_queue[0] == FREE ->
                    pay_queue[0] = BUSY;
                    select( lottery : 1 .. 2);
                    if
                    :: lottery == 1 ->
                        visitor[id] = ACTION;
                    :: lottery != 1 
                        visitor[id] = WAIT_ACTION;
                    fi
              :: pay_queue[1] == FREE ->
                    pay_queue[1] = BUSY;
                    select( lottery : 1 .. 2);
                    if
                    :: lottery == 1 ->
                        visitor[id] = ACTION;
                    :: lottery != 1 
                        visitor[id] = WAIT_ACTION;
                    fi
              fi
           :: visitor[id] == WAIT_ACTION ->
              if
              :: wait_queue[0] == FREE ->
                    visitor[id] = ACTION;
                    wait_queue[0] = BUSY;
              :: wait_queue[1] == FREE ->
                    visitor[id] = ACTION;
                    wait_queue[1] = BUSY;
              :: timer < waitingTime ->
                    timer = timer + 1;
              :: timer == waitingTime ->
                    visitor[id] = GO_AWAY;
              fi
           :: visitor[id] == ACTION || visitor[id] == GO_AWAY->
              if
              :: pay_queue[0] == BUSY ->
                    pay_queue[0] = FREE;
              :: pay_queue[1] == BUSY ->
                    pay_queue[1] = FREE;
              :: wait_queue[0] == BUSY ->
                    wait_queue[0] = FREE;
              :: wait_queue[1] == BUSY ->
                    wait_queue[1] = FREE;
              fi
          fi
	od
    }
}

init {
	int i;
	for(i: 0 .. (num_visitors - 1)){
   		visitor[i] = WAIT_PAY;
	}

	pay_queue[0] = FREE;
	pay_queue[1] = FREE;
	wait_queue[0] = FREE;
	wait_queue[1] = FREE;

	for(i: 0 .. (num_visitors -1)){
   		run queueAction(i)
	}
}

ltl rool1{
   <>[](pay_queue[0] == FREE && pay_queue[1] == FREE)
}

ltl rool2{
    <>[] ( wait_queue[0] == FREE && wait_queue[1] == FREE)
}

ltl rool3{
    <>[] ((visitor[0] == ACTION ) &&
	 (visitor[1] == ACTION ) && 
	 (visitor[2] == ACTION ) && 
	 (visitor[3] == ACTION ))
}

ltl rool4{
    []((visitor[0] == WAIT_PAY && (pay_queue[0] == FREE || pay_queue[1] == FREE ))
->(( visitor[0] == WAIT_ACTION || visitor[0] == ACTION))) && 
    []((visitor[1] == WAIT_PAY && (pay_queue[0] == FREE || pay_queue[1] == FREE ))
->(( visitor[1] == WAIT_ACTION || visitor[1] == ACTION))) &&
    []((visitor[2] == WAIT_PAY && (pay_queue[0] == FREE || pay_queue[1] == FREE ))
->(( visitor[2] == WAIT_ACTION || visitor[2] == ACTION))) &&
    []((visitor[3] == WAIT_PAY && (pay_queue[0] == FREE || pay_queue[1] == FREE ))
->(( visitor[3] == WAIT_ACTION || visitor[3] == ACTION))) 
}


