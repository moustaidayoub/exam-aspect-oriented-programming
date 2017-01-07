package metier;

import java.util.HashMap;
import java.util.Map;

public class ProxyCalculateur implements ICalculateur {
 private Map<Integer,Double> numbersList=new HashMap();
	@Override
	public double calculer(int nombre) {
		if(numbersList.containsKey(nombre))
		{
			System.out.println("Existe déja !");
			return numbersList.get(nombre);
		}
		else 
		{
			double sum=new CalculateurImpl().calculer(nombre);
			numbersList.put(nombre, sum);
			return sum;
		}
	}

}
