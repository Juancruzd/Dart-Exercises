import 'dart:math';
class DifferenceOfSquares {

  int squareOfSum([int numero]) {        
    if(numero == null){
      print( "Ingrese una numero!"); 
    }else if(numero>0){  
      int total1=0; 
      for (int i = 1; i <= numero; i++) {
        total1+=i;
      } 
      //print("$total1 ^2: "+pow(total1,2).toString());
      total1=pow(total1, 2) as int;
      print("El cuadrado de la sumatoria de los números es: $total1");
      return total1; 
    } 
} 
  int sumOfSquares([int numero]) {        
    if(numero == null){
      print( "Ingrese una numero!"); 
    }else if(numero>0){   
      int total1=0;  
      for (int i = 1; i <= numero; i++) {
        total1+= pow(i, 2) as int;
      } 
      print("La sumatoria de los cuadrados de los números es: $total1"); 
      return total1;
    } 
  }
  int differenceOfSquares([int numero]) {        
      if(numero == null){
        print( "Ingrese una numero!"); 
      }else if(numero>0){  
        int total1=0;
        int total2=0; 
        for (int i = 1; i <= numero; i++) {
          total1+=i;
        } 
        //print("$total1 ^2: "+pow(total1,2).toString());
        total1=pow(total1, 2) as int;
        print("El cuadrado de la sumatoria de los números es: $total1");
        for (int i = 1; i <= numero; i++) {
          total2+= pow(i, 2) as int;
        } 
        print("La sumatoria de los cuadrados de los números es: $total2");
        int diferencia=total1-total2;
        print("La diferencia entre el cuadrado de la sumatoria de los números y la sumatoria del cuadrado de los números es: $total1 - $total2 = $diferencia");
        return diferencia;
      } 
  }
 
}