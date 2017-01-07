package aspects;

import java.util.HashMap;
import java.util.Map;

import org.aspectj.lang.ProceedingJoinPoint;

public aspect PatchAspect {
	private Map<Integer,Double> numbersList=new HashMap();

pointcut patch(int nombre):call(* metier..ICalculateuree.calculer(..)) && args(nombre);

Object around(int nombre):patch(nombre){
if(numbersList.containsKey(nombre))
{
	System.out.println("Existe déja !");
	return numbersList.get(nombre);
}
else 
{
	numbersList.put(nombre, (double)proceed(nombre));
	return null;
}
	
	}
}
