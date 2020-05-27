import 'dart:math';
class ArmstrongNumbers {
  bool isArmstrongNumber([int numero]) {        
    if(numero<=0){
      return true; 
    }else if(numero>0){  
      int total=0;
      List<String> item=numero.toString().split("");
      int tam=item.length;

      item.forEach((num) => {   
          total+=pow(int.parse(num), tam) as int ,
         print( num +" ^ $tam   "+pow(int.parse(num), tam).toString())
      }); 
      if(numero==total){
        print("original $numero resultado= $total es un número Armstrong");
        return true;
      }else{
        print("original $numero resultado= $total no es un número Armstrong");
        return false;
      }

      
    } 
} 
}
