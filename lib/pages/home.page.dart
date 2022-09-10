import 'package:flutter/material.dart';
import 'package:noticias/pages/details.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 1.0;
  int edad = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(9, 14,33, 1),
        title: Text("Calculo IMC")),
        body: Column(
          children: [
            Expanded(child:Container(                
                child: Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.man,
                                size: 120,),
                                Text("Hombre")
                              ],
                            ),
                           decoration: BoxDecoration(
                              color: Color.fromRGBO(29, 30,51, 1),
                              borderRadius: BorderRadius.circular(20)
                              ),                            
                        ),
                      )),
                       Expanded(child: Padding(
                        padding: const EdgeInsets.all(20),
                          child: Container(
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.woman,
                                size: 120,),
                                Text("Mujer")
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(29,30,51,255),
                              borderRadius: BorderRadius.circular(20)
                              ),                            
                        ),
                      )),
                    ],
                  ),
                )),
            Expanded(child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,20,10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(29,30,51,255),
                              borderRadius: BorderRadius.circular(20)
                              ),                            
                        ),
                      )),
            Expanded(child:Container(                
                child: Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(20),
                          child: Container(
                            // ignore: sort_child_properties_last
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Peso"),
                                Text(peso.toString(),style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                                  )),
                                Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                  children: [                                    
                                    IconButton(
                                        iconSize: 40,
                                      onPressed: (){
                                         setState(() {
                                          peso--;
                                        });
                                      } ,
                                       icon: Icon(Icons.remove_circle)),
                                    IconButton(
                                      iconSize: 40,
                                      onPressed: (){
                                        setState(() {
                                          peso++;
                                        });
                                      } ,
                                       icon: Icon(Icons.add_circle)),                                       
                                  ],
                                )
                            ]),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(29,30,51,255),
                              borderRadius: BorderRadius.circular(20)
                              ),                            
                        ),
                      )),
                       Expanded(child: Padding(
                        padding: const EdgeInsets.all(20),
                          child: Container(
                            // ignore: sort_child_properties_last
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Edad"),
                                Text(edad.toString(),style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                                  )),
                                Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                  children: [                                    
                                    IconButton(
                                        iconSize: 40,
                                      onPressed: (){
                                        setState(() {
                                          edad--;
                                        });
                                      } ,
                                       icon: Icon(Icons.remove_circle)),
                                    IconButton(
                                      iconSize: 40,
                                      onPressed: (){
                                        setState(() {
                                          edad++;
                                        });
                                      } ,
                                       icon: Icon(Icons.add_circle)),                                       
                                  ],
                                )
                            ]),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(29,30,51,255),
                              borderRadius: BorderRadius.circular(20)
                              ),                            
                        ),
                      )),
                    ],
                  ),
                )),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsPage())));
              },
              child: Container(
                height: 100,
                color: Color.fromARGB(235, 250, 107, 41),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Calcular", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
            )    
        ]),
    );
  }
}