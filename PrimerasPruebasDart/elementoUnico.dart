import 'dart:math';
void main () 
  {
    List<int> listaVariable = List.empty(growable: true);
    List<int> listaUnica = List.empty(growable: true);
    int tamanioLista;
    int elemento;
    var temporal;
    var random = Random();
    tamanioLista=random.nextInt(30);
    
    // Lista 1 completamente llena
    for(int i=0; i < tamanioLista; i++)
    {
      elemento=random.nextInt(30);
      listaVariable.add(elemento);
    }
    for(int i=0; i<listaVariable.length; i++)
      {
        if(listaUnica.isEmpty)
          {
            listaUnica.add(listaVariable.elementAt(i));
          }
          else
          {
            for(int j=0; j<listaUnica.length; j++)
            {
              if(listaUnica.elementAt(j)!=listaVariable.elementAt(i))
              {
                temporal=listaVariable.elementAt(i);
              }
            }
            listaUnica.add(temporal);         
          }       
      }
      for(int i=0; i<listaUnica.length;i++)
      {
        print(listaUnica.elementAt(i));
      }
  }