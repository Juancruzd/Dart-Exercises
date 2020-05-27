class Leap { 
  bool leapYear([int anio]) {        
    if(anio<= 0){
      print( "Ingrese el anio para consultar!"); 
    }else if(anio>0){ 
       if (((anio % 4 == 0) && (anio % 100 != 0 )) || (anio % 400 == 0)){ 
          print( "El anio $anio, es bisiesto!.");
          return true;
        }
        else{
          print( "El anio $anio, No es bisiesto!.");
          return false;
        }
    } 
} 
}
