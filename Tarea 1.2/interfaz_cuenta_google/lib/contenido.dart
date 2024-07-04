import 'package:flutter/material.dart';
class Contenido extends StatelessWidget { 
  final String titulo;
  final String text2;
  final String text3;
  final Icon icono;
  final bool? info;

  const Contenido({super.key, required this.titulo,
   required this.text2,
   required this.text3,
   required this.icono,
   this.info
   });

   @override
  Widget build(BuildContext context) {
       const texts = TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontFamily: "Gill Sans",
      fontSize: 14, fontWeight: FontWeight.w200);
      const titulos = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, );
      const spans = TextStyle(color: Color.fromARGB(255, 30, 78, 182), fontSize: 13, fontWeight: FontWeight.bold );

    return Card(
                      child: Row(
                      children: [
                         Expanded(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(titulo, style: titulos,),
                              const SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text.rich(
                                    style: texts,
                                    TextSpan(
                                      text: text2,
                                      children: [
                                        if(info != null)...[
                                          const TextSpan(text: " "),
                                          const TextSpan(text: "Ver info", style: spans),
                                          const WidgetSpan(
                                          child: Icon(Icons.add_circle_outline_sharp, color: Color.fromARGB(255, 30, 78, 182), size: 13, ),
                                           ),
                                        ]
                                      ]
                                    )
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Text(text3, style: spans,)
                            ],
                          ),
                        ), Container(
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(59, 143, 150, 142),
                            shape: BoxShape.circle,
                          ),
                          child: icono)
                      ],
                    ),
                  );
  }

}