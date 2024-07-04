import 'package:flutter/material.dart';

class Opciones extends StatelessWidget{
  final IconData icono;
  final String texto;

  const Opciones({super.key, required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return caja(icono, texto);
  }


 caja(IconData icono, String texto){
    const estiloIntern0 = TextStyle(fontSize: 17, fontFamily: AutofillHints.jobTitle);
    return Row(
                          children: [
                            Icon(icono),
                            Expanded(child: Text(texto, style: estiloIntern0,)),
                            const SizedBox(width: 20,),
                            const Icon(Icons.arrow_right_alt),
                          ],
                        );
  }

}