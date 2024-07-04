import 'package:flutter/material.dart';
import 'package:interfaz_cuenta_google/contenido.dart';
import 'package:interfaz_cuenta_google/menu_busqueda.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  //estilo
    
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Parra1
    const String titulo1 = "Tu Cuenta esta protegida";
    const String parrafo1 = "La verificacion de seguridad reviso tu cuenta y no encontro acciones recomendadas";
    const String detalle1 = "Ver detalle";
    const Icon icono1 = Icon(Icons.gpp_good, color: Color.fromARGB(255, 55, 83, 22), size: 80);
    
    //Parra2
    const String titulo2 = "Verificacion de privacidad";
    const String parrafo2 = "Elige la configuracion de privacidad indicada para ti con esta guia paso a paso";
    const String detalle2 = "Realizar la verificacion de privacidad";
    const Icon icono2 = Icon(Icons.shield_sharp, color: Color.fromARGB(255, 20, 53, 102), size: 80);

    //Parra 3
    const String parrafo3 = "Solo tu puedes ver la configuracion. Tambien puedes revidar la configuracion de Maps , la busqueda o cualquier servicio de google que uses con frecuencia. Google proteje la privacidad y la seguridad de tus datos";
    const Icon icono3 = Icon(Icons.shield_sharp, color: Color.fromARGB(255, 24, 22, 110), size: 50);
    
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:Scaffold(

        appBar: AppBar(title: const Text("Cuenta de Google",),centerTitle: true,),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(2),
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child:   const Wrap(
                children: [
                  Contenido(titulo: titulo1, text2: parrafo1, text3: detalle1, icono: icono1,),
                  Contenido(titulo: titulo2, text2: parrafo2, text3: detalle2, icono: icono2,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("¿Busca otra informacion?", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Opciones(icono: Icons.search, texto: "Buscar en la cuenta de google"),
                      SizedBox(height:20,),
                      Opciones(icono: Icons.question_mark_rounded, texto: "Ver las opciones de ayuda"),
                      SizedBox(height: 20,),
                      Opciones(icono: Icons.comment_outlined, texto: "Enviar comentarios"),
                      SizedBox(height: 20,),
                    ],
                  ),
                  Contenido(titulo: "", text2: parrafo3, text3: "", icono: icono3,info: true,),
                  
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

