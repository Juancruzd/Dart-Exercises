String reverse([String frasepalabra]) { 
    if(frasepalabra == ''){
      print( "Ingrese una frase o palabra para consultar!"); 
      return '';
    }else if(frasepalabra.isNotEmpty){ 
        List<String> item=frasepalabra.toString().split("");
        String reverse="";
        item.reversed.forEach((letra) => { 
        reverse=reverse+letra
        }); 
        print(reverse);
        return reverse;
    } 
}
