package metier;

public class CalculateurImpl implements ICalculateur {

	@Override
	public double calculer(int nombre) {
		double somme=0; double produit=1;
		for(int i=1;i<=nombre;i++){
			produit=produit*i;
			somme+=i/produit;
		}
		return somme;
	}

}
