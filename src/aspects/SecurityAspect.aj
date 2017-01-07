package aspects;

import java.util.Scanner;

public aspect SecurityAspect {
	private String login;
	private String password;
	pointcut security():execution(* *..Application.main(..));

Object around():security(){
	if(login==null){
		Scanner clavier=new Scanner(System.in);
		System.out.println("votre login = ");
		login=clavier.next();
		System.out.println("votre password = ");
		password=clavier.next();
		
		if(login.equals("admin") && password.equals("admin")){
			return proceed();
		}
		else{
			throw new RuntimeException("Access denied !");
		}
		
	}
	return null;
}
}
