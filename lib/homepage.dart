import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_widgets.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          'Entregas em Sobral',
          textAlign: TextAlign.center,
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade800,
        icon: Icon(Icons.play_arrow),
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
      bottomNavigationBar: BottomAppBar(
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(side: BorderSide()),
        ),
        color: Colors.green.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.home, color: Colors.white, semanticLabel: 'Início',),
            //Icon(Icons.grade, color: Colors.white, semanticLabel: 'Avalie-nos',),
            Icon(Icons.mail, color: Colors.white, semanticLabel: 'Fale Conosco',),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
//      drawer: BuildDrawer(
//        drawerCategories: kDrawerItems,
//        drawerIcons: kDrawerIcons,
//        drawerTitle: 'Entregas em Sobral',
//        drawerSubtitle: 'Guia de comércios e serviços em domicílio',
//      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TelaPrincipalBanner(
                  subtitulo: 'apoie o comércio local',
                  titulo: 'Conheça empresas que entregam em sua casa durante a quarentena',
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