import 'package:flutter/material.dart';


class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.valor, required this.estado, required this.colorEstado});
  double valor;
  String estado;
  Color colorEstado;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC")),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child:
              Container(
                             
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Resultado", style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                       ),
                      ),
                    ],
                  ),
                ),
              ),                  
              ),
              Expanded(
                flex: 6,
                child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,20,20),
                          child: Container(
                            // ignore: sort_child_properties_last
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [         
                                 Column(
                                   children: [
                                     Expanded(child: Padding(
                                        padding: const EdgeInsets.all(20),
                                          child: Container(
                                            // ignore: sort_child_properties_last
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("$estado",style: TextStyle(
                                                fontSize: 35,
                                                fontWeight: FontWeight.bold,
                                                color: colorEstado
                                              ),)
                                              ],
                                            ),                                                                 
                                        ),
                                      )),   
                                      Expanded(child: Padding(
                                        padding: const EdgeInsets.all(20),
                                          child: Container(
                                            // ignore: sort_child_properties_last
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(valor.toStringAsFixed(2), style: TextStyle(
                                                fontSize: 100,
                                                fontWeight: FontWeight.bold
                                              ),)
                                              ],
                                            ),                                                             
                                        ),
                                      )), 
                                      Expanded(child: Padding(
                                        padding: const EdgeInsets.all(20),
                                          child: Container(
                                            // ignore: sort_child_properties_last
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("Mensaje Extendido",style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                              ),)
                                              ],
                                            ),                                                              
                                        ),
                                      )),
                                   ],
                                 ),        
                              ],
                            ),
                           decoration: BoxDecoration(
                              color: Color.fromRGBO(29, 30,51, 1),
                              borderRadius: BorderRadius.circular(20)
                              ),                            
                        ),
                      )),           
          ]
        ),
      
    );
  }
}