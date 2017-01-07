package aspects;

import java.util.logging.Logger;

//journalisation du temps d execution
public aspect LoggerAspect {
	private long time1, time2;
	private Logger logger = Logger.getLogger(this.getClass().getName());

	pointcut log():call(* metier..ICalculateur+.calculer(..));
	before():log(){
		System.out.println("------------------------------");
		logger.info("Avant �xecution de la methode : "
				+thisJoinPoint.getSignature());
		time1 = System.currentTimeMillis();
	}

	after():log(){
		logger.info("Apr�s �xecution de la methode : "
				+thisJoinPoint.getSignature());
		time2 = System.currentTimeMillis();
		logger.info("Dur�e = "+(time2-time1));
		System.out.println("------------------------------");
	}
}
