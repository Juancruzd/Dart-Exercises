class CollatzConjecture {
  
  int steps([int numero]) {  
      int contador=0;  
    if(numero>1){ 
      int res=numero;
      do{ 
        if(res % 2 ==0){   
          res=res ~/ 2;  
          contador++;
        }else{   
            res=(res*3)+ 1;   
            contador++; 
        }
      }while(res>1);
      if(res==1){     
        print("Numero de pasos: $contador");
        return contador;
      } 
    }else if(numero==1){
      print("Numero de pasos: $contador");
      return contador;
      } else{
      throw new ArgumentError('Only positive numbers are allowed');
    }
} 
}
