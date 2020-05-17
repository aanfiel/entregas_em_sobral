import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_widgets.dart';

class FacaParte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Envie-nos seu comércio',
          textAlign: TextAlign.center,
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.pop(context);
        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        icon: Icon(Icons.home),
        label: Text(
          'Início',
          textAlign: TextAlign.center,
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: 'Como ter meu negócio incluído neste app?',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n\n',
                        ),
                        TextSpan(
                          text: 'Se você gostou desta iniciativa e gostaria de ter seu negócio ou serviço incluso aqui, basta clicar no botão abaixo.',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                        ),
                      ],
                    ),
                  ),
                ),
                CardEmail(
                  assunto: 'INCLUSÃO DE EMPRESA',
                  label: 'Quero fazer parte!',
                  corpoDaMensagem: 'Gostaria de incluir minha empresa no aplicativo. Seguem meus dados abaixo:\n\n NOME: \nEMAIL: \nTELEFONE/Whatsapp: \nNOME DA EMPRESA: \n INSTAGRAM: \n',
                ),
                Container(
                  height: 30.0,
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: 'Como removo meu comércio deste app?',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n\n',
                        ),
                        TextSpan(
                          text: 'Gostaríamos de manter uma base ativa de negócios que fazem entregas em nossa cidade. Caso deixe de atender ou não queira mais ter seu comércio nesse app, clique no botão abaixo.',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                        ),
                      ],
                    ),
                  ),
                ),
                CardEmail(
                  assunto: 'REMOÇÃO DE EMPRESA',
                  label: 'Remova minha empresa!',
                  corpoDaMensagem: 'Gostaria de remover minha empresa no aplicativo. Seguem meus dados abaixo:\n\n NOME: \nEMAIL: \nTELEFONE/Whatsapp: \nNOME DA EMPRESA: \n INSTAGRAM: \n',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
