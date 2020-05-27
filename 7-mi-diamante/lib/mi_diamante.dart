class Diamond {
Map<String,Object> DiamanteValues ={
    "A":{"index":0,"points":0},
    "B":{"index":1,"points":1},
    "C":{"index":2,"points":3},
    "D":{"index":3,"points":5},
    "E":{"index":4,"points":7},
    "F":{"index":5,"points":9},
    "G":{"index":6,"points":11},
    "H":{"index":7,"points":13},
    "I":{"index":8,"points":15},
    "J":{"index":9,"points":17},
    "K":{"index":10,"points":19},
    "L":{"index":11,"points":21},
    "M":{"index":12,"points":23},
    "N":{"index":13,"points":25},
    "O":{"index":14,"points":27},
    "P":{"index":15,"points":29}, 
    "Q":{"index":16,"points":31},
    "R":{"index":17,"points":33},
    "S":{"index":18,"points":35},
    "T":{"index":19,"points":37},
    "U":{"index":20,"points":39},
    "V":{"index":21,"points":41}, 
    "W":{"index":22,"points":43},
    "X":{"index":23,"points":45}, 
    "Y":{"index":24,"points":47},
    "Z":{"index":25,"points":49}


};

List<String> rows([String letra]) {   
    if(letra == null){
      print( "Ingrese una letra!"); 
    }
    else if(letra.isNotEmpty){   
      Map<String, Object> letrita =DiamanteValues[letra.toUpperCase()] as Map<String, Object>; 
      var si=letrita["points"] as int;
      List<String> resultado=new List();
      if(si>0){
        List<String> subresultado=new List();
        //var _list = DiamanteValues.values.toList();
        var _list= DiamanteValues.entries.toList(); 
        ///sobre la letra 
        var pos1=letrita["index"] as int;
        int for1=letrita["index"] as int;
        for (int i = 0; i < for1; i++) { 
          var key=_list[i].key; 
          Map<String, Object> value=_list[i].value as Map<String,Object>; 
          
          if(value["points"]==0){
                ///izquierda
                for (int k = letrita["index"] as int; k >=1; k--) { 
                    key=" "+key;
                }
                ///derecha
                for (int y = letrita["index"] as int; y >=1; y--) { 
                    key=key+" ";
                } 
                print(key); 
                subresultado.addAll([key]);
          }else{ 
          String p1="";
          pos1--;
          ////dentro de las letras
          var fordentro=value["points"] as int;
          for (int j = 0; j < fordentro; j++) { 
              p1=" "+p1;
          } 
          key=key+p1+key;
          
          ///izquierda
          for (int k =pos1; k >=1; k--) { 
              key=" "+key;
          }
          ///derecha
          for (int y = pos1; y >=1; y--) { 
              key=key+" ";
          } 
          print(key);  
          subresultado.addAll([key]);
          } 
        } 
        
        ///la letra medio 
        var keycentro=_list[letrita["index"] as int].key; 
        Map<String, dynamic> valuecentro=_list[letrita["index"] as int].value as Map<String,Object>; 
          String centro=""; 
          ////dentro de las letras
          var pointsdentroletra=valuecentro["points"]as int;
          for (int m = 0; m < pointsdentroletra; m++) { 
              centro=" "+centro;
          } 
          keycentro=keycentro+centro+keycentro;
          print(keycentro); 
          subresultado.addAll([keycentro]);


        ///debajo de la letra
        var pos2=pos1; 
        var fordebajoletra=letrita["index"] as int;
        for (int n = fordebajoletra-1; n >=0 ; n--) { 
          var key=_list[n].key; 
          Map<String, dynamic> value=_list[n].value as Map<String,Object>;  
          if(value["points"]==0){
                ///izquierda
                var for0=letrita["index"] as int;
                for (int p = 1; p<=for0; p++) { 
                    key=" "+key;
                }
                ///derecha
                var forderecha=letrita["index"] as int;
                for (int y = 1; y <=forderecha; y++) { 
                    key=key+" ";
                } 
                print(key); 
                subresultado.addAll([key]);
          }else{ 
          String p1=""; 
          ////dentro de las letras
          var dentroletraspoints=value["points"] as int;
          for (int s = 0; s < dentroletraspoints; s++) { 
              p1=" "+p1;
          } 
          key=key+p1+key;
          
          ///izquierda
          for (int r =pos2; r >=1; r--) { 
              key=" "+key;
          }
          ///derecha
          for (int y =pos2; y >=1; y--) { 
              key=key+" ";
          } 
          print(key);   
          subresultado.addAll([key]);
          pos2++;
          } 
        }
         resultado.addAll(subresultado);
         return resultado;
      }else{
        print("A");
        resultado.addAll(["A"]);
        print(resultado);
        return resultado;
      }
       
    } 
} 
}
