package test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Scanner;

import metier.ICalculateur;

public class Application {
  public static void main(String[] args) {
	  try {
		  Scanner clavier=new Scanner(System.in);
		  BufferedReader br=new BufferedReader(new FileReader(new File("config.txt")));
		  String metierClassName=br.readLine();
		  ICalculateur calculateur=(ICalculateur) Class.forName(metierClassName).newInstance();
		  	while(true){
		  	 System.out.print("Donner N:"); int n=clavier.nextInt();
		  	 if(n<=0) break;
		  	 double somme=calculateur.calculer(n);
		  	 System.out.println("Somme("+n+")="+somme);
		  	}
		  	 System.out.println("Fin de l'application");	
		  	} catch (Exception e) {e.printStackTrace();	}
		  	}
}
