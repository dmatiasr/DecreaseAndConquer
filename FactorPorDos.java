/*
Ej. 1. Implemente en Java soluciones Decrease & Conquer con decremento por una constante y por un
factor constante para el problema de multiplicar dos numeros enteros. Calcule ademas el numero de sumas
efectuadas por su algoritmo, en funcion del tamano de la entrada.
*/
public class FactorPorDos{
	public static void main(String[] args) {
		int res=0;
		int n= 3;
		int m=6;
		int result= producto(n,m);
		System.out.println("POR UNA CONSTANTE "+result);
		int res2= productoPorDuplicacion(n,m);
		System.out.println("POR FACTOR CONSTANTE "+res2);
	}
	//Decremento "por una constante" (1).
	//El tiempo de ejecucion en el peor caso es O (n).
	//Recorre todo el m, y lo decrementa hasta 1
	public static int producto(int n, int m){
		if (m==0) {
			return 0;
		}
		if(m==1){
			return n;
		}
		System.out.println("n "+n+" m "+m);
		return n +	(producto (n,m-1));
	}	
	//Multiplicacion por Duplicacion
    //Russian Peasant Multiplication
	//Decremento por "factor constante" (n/2)
	//el tiempo de ejecucion es O (log n)
	public static int productoPorDuplicacion(int n,int m){
		System.out.println("n "+n+" m "+m);//Se basa en shifteos a bajo nivel, realiza menos pasos en menos tiempo.
		if (n % 2 ==0){ //Para valores pares de n.
			return productoPorDuplicacion (n/2 , 2*m);
		}
		else{ //para valores impares de n.
			if (n==1){
				return m;
			}else{
				return productoPorDuplicacion ( (n-1)/2, 2*m) + m;	
			}
		}
	}
	/*
	El algoritmo de Russian Peasant Multiplication es mas eficiente debido a que
	en bajo nivel la division y multiplicacion se basa en shifteos de registros, que es
	menos costoso que el algoritmo de producto basado en una constante.
	*/
}