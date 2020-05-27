class Isogram {
bool isIsogram([String frasepalabra]) {        
    if(frasepalabra == ''){
      print( "Ingrese una frase o palabra para consultar!"); 
      return true;
    }else if(frasepalabra.isNotEmpty){ 
        List<String> item=frasepalabra.toString().toUpperCase().replaceAll(" ","").replaceAll("-","").split("");
        int tam=item.length; 
        print(item);
        var exit=true;
          for (int i = 0; i <tam; i++) {  
             var key1=item[i]; 
              for (int j = i+1; j<tam; j++) { 
                var key2=item[j]; 
                  if(key1==key2){
                      exit=false; 
                  }
              }

          }  
          if(exit==false){
            print("No es un Heterograma");
            return false;
          }
          if(exit==true){
            print("Es un Heterograma");
            return true;
          }
    } 
} 
}
