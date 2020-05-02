//TRABALHADO EM 27/04/2020

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BuildDrawer extends StatelessWidget {

  final List<String> drawerCategories;
  final List<IconData> drawerIcons;
  final String drawerTitle;
  final String drawerSubtitle;

  BuildDrawer({
    @required this.drawerCategories,
    @required this.drawerIcons,
    @required this.drawerTitle,
    @required this.drawerSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SafeArea(
        child: Container(
          color: Colors.white,
          width: 250.0,
          child: Column(
            children: <Widget>[
              DrawerHeader(),
              //Divider(color: Colors.blue,),
              DrawerMenuItens(drawerCategories: drawerCategories, drawerIcons: drawerIcons),
              //DrawerCategoriesLabelWidget(),
              DrawerBottomInfo(),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlueAccent,
              Colors.blue,
            ],
          ),
          color: Colors.lightGreen.shade100,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50.0),

          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
              text: 'Entregas em Sobral'.toUpperCase(),
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            children: <TextSpan>[
              TextSpan(
                text: '\nComércios e serviços de entrega',
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

            ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerCategoriesLabelWidget extends StatelessWidget {
  const DrawerCategoriesLabelWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 2.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Guia de comércios e serviços de entregas em Sobral',
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerMenuItens extends StatelessWidget {
  const DrawerMenuItens({
    Key key,
    @required this.drawerCategories,
    @required this.drawerIcons,
  }) : super(key: key);

  final List<String> drawerCategories;
  final List<IconData> drawerIcons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: ListView.builder(
            itemCount: drawerCategories.length,
            itemBuilder: (context, i){
              return ListTile(
                title: Text(
                  drawerCategories[i],
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                ),
                leading: Icon(drawerIcons[i]),
                trailing: Icon(Icons.chevron_right),
                onTap: (){
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class DrawerBottomInfo extends StatelessWidget {
  const DrawerBottomInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlueAccent,
              Colors.blue,
            ],
          ),
          //color: Colors.blue.shade100,
          borderRadius: BorderRadius.only(
            //topLeft: Radius.circular(20.0),
            topRight: Radius.circular(150.0),
          ),
        ),
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Desenvolvido por: ',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(
                      onPressed: () async {
                        const url = 'https://www.instagram.com/mrjlopes/';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'José Lopes',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nInstagram: ',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: '@mrjlopes',
                              style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 10.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(
                      onPressed: () async {
                        const url = 'https://www.instagram.com/geronimo_aguiar/';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Gerônimo Aguiar',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nInstagram: ',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: '@geronimo_aguiar',
                              style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 10.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TelaPrincipalBanner extends StatelessWidget {

  final String titulo;
  final String subtitulo;

  TelaPrincipalBanner({@required this.titulo, @required this.subtitulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.black87,
          ],
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          bottomLeft: Radius.circular(0.0),
        ),
        color: Colors.blue,
      ),
      width: double.infinity,
      //height: 200.0,
      child: Center(
        child: RichText(
          text: TextSpan(
            text: subtitulo.toUpperCase(),
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
            children: <TextSpan>[
              TextSpan(
                text: '\n',
              ),
              TextSpan(
                text: titulo,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaPrincipalCategorias extends StatelessWidget {

  final String nomeDaCategoria;

  TelaPrincipalCategorias({@required this.nomeDaCategoria});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: double.infinity,
      height: 40.0,
      child: Text(
        nomeDaCategoria,
        style: GoogleFonts.michroma(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class CardEmpresa extends StatelessWidget {

  final String nomeDaEmpresa;
  final String descricao;
  final String imagem;
  final String instagram;

  CardEmpresa({@required this.nomeDaEmpresa, @required this.descricao, @required this.instagram, @required this.imagem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchInBrowser('http://www.instagram.com/$instagram');
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: 150.0,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(imagem),
                  backgroundColor: Colors.transparent,
                ),
                Container(
                  height: 10.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      nomeDaEmpresa.toUpperCase(),
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      descricao,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          '@',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          instagram,
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    throw 'Could not launch $url';
  }
}

class ExibeCategoriaBd extends StatelessWidget {

  final String colecao;
  final String apelido;

  ExibeCategoriaBd({@required this.colecao, @required this.apelido});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection(colecao).snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return LinearProgressIndicator();
            break;
          default:
            return Column(
              children: [
                TelaPrincipalCategorias(
                  nomeDaCategoria: apelido,
                ),
                Divider(),
                SizedBox(
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: snapshot.data.documents.map<Widget>((DocumentSnapshot doc) {
                      return CardEmpresa(
                        nomeDaEmpresa: doc.data['nome'],
                        descricao: doc.data['descricao'],
                        imagem: doc.data['imagem'],
                        instagram: doc.data['instagram'],
                      );
                    }
                    ).toList()
                  ),
                ),
              ],
            );
        }
      },
    );
  }
}

class ListaCategoriasBd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('categorias').snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return LinearProgressIndicator();
            break;
          default:
            return ListView(
              children: snapshot.data.documents.map<Widget>((DocumentSnapshot doc) {
                return ExibeCategoriaBd(colecao: doc.data['nome'], apelido: doc.data['apelido']);
              }
              ).toList()
            );
        }
      },
    );
  }
}

class StandardAppBar extends StatelessWidget {
  const StandardAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Entregas em Sobral',
      ),
    );
  }
}