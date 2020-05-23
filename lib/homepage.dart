import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_widgets.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Entregas em Sobral',
          textAlign: TextAlign.center,
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mail),
            onPressed: () {
              Navigator.pushNamed(context, '/contato');

            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: FloatingActionButton.extended(
          onPressed: (){
            Navigator.pushNamed(context, '/facaparte');
          },
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
          //icon: Icon(Icons.play_arrow),
          label: Text(
            'Faça parte',
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                  color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TelaPrincipalBanner(
                  subtitulo: 'apoie o comércio local',
                  titulo: 'Conheça empresas que fazem entregas em sua casa',
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  //color: Colors.lightBlue,
                  child: ListaCategoriasBd(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}