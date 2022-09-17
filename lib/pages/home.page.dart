import 'package:flutter/material.dart';
import 'package:noticias/pages/details.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool genero = true;
  double peso = 50.0;
  int edad = 10;
  double estatura = 50;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(9, 14,33, 1),
        title: Text("Calculo IMC")),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child:Container(                
                child: Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: (){
                              print("Hombre");
                            },
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
                              color: Color.fromARGB(29,30,51,255),
                                //color: Color.fromRGBO(29, 30,51, 1),
                                borderRadius: BorderRadius.circular(20)
                                ),                            
                                                  ),
                          ),
                      )),
                       Expanded(child: Padding(
                        padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: (){
                              print("Mujer");
                            },
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
                          ),
                      )),
                    ],
                  ),
                )),
            Expanded(
              flex: 5,
              child: Container(
                
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Estatura"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${estatura.toInt()}",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Text("cm")
                          ],
                        ),
                        SliderTheme(data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            trackShape: RectangularSliderTrackShape(),
                            trackHeight: 4.0,
                            thumbColor: Colors.redAccent,
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                            overlayColor: Colors.grey,
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                          ),
                          child: Slider(
                            value: estatura,
                            max: 250,
                            min: 50,
                            onChanged: (double value) {
                              setState(() {
                                estatura = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(29,30,51,255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )),
            Expanded(
              flex: 5,
              child:Container(                
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
                                          if(peso>50){
                                            peso--;
                                          }
                                        });
                                      } ,
                                       icon: Icon(Icons.remove_circle)),
                                    IconButton(
                                      iconSize: 40,
                                      onPressed: (){
                                        setState(() {
                                          if(peso<500){
                                            peso++;
                                          }
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
                                          if(edad > 10){
                                          edad--;
                                          }
                                        });
                                      } ,
                                       icon: Icon(Icons.remove_circle)),
                                    IconButton(
                                      iconSize: 40,
                                      onPressed: (){
                                        setState(() {
                                          if(edad<120){
                                          edad++;
                                          }
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
                double imc = peso / ((estatura/100) * (estatura/100));
                String estado = "Mensaje Predefinido";
                Color colorEstado = Colors.blue;

                
                  if(imc < 18.5){
                    estado = "Bajo peso";
                    colorEstado = Colors.orange;
                  }
                  if(imc >= 18.5 && imc <24.9){
                    estado = "Normal";
                    colorEstado = Colors.green;
                  }
                  if(imc >= 25 && imc <29.9){
                    estado = "Sobrepreso";
                    colorEstado = Color.fromARGB(255, 215, 132, 24);
                  }
                  if(imc >= 30 && imc <34.9){
                    estado = "Obesidad I";
                    colorEstado = Colors.red;
                  }
                  if(imc >= 35 && imc <39.9){
                    estado = "Obesidad II";
                    colorEstado = Color.fromARGB(255, 208, 44, 33);
                  }
                  if(imc >= 40 && imc <49.9){
                    estado = "Obesidad III";
                    colorEstado = Color.fromARGB(255, 181, 31, 20);
                  }
                  if(imc >= 50){
                    estado = "Obesidad IV";
                    colorEstado = Color.fromARGB(255, 127, 12, 4);
                  }
              
                

                Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsPage(valor : imc,estado: estado, colorEstado: colorEstado))));
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