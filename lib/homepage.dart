import 'package:flutter/material.dart';
import 'constants.dart';
import 'custom_widgets.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Entregas em Sobral',
        ),
      ),
      drawer: BuildDrawer(
        drawerCategories: kDrawerItems,
        drawerIcons: kDrawerIcons,
        drawerTitle: 'Entregas em Sobral',
        drawerSubtitle: 'Guia de comércios e serviços em domicílio',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TelaPrincipalBanner(
                    mensagem: 'Conheça todos os comércios fazendo entregas na cidade de Sobral durante a quarentena.',
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