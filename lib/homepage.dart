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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TelaPrincipalBanner(
                    mensagem: 'Conheça todos os comércios fazendo entregas na cidade de Sobral durante a quarentena.',
                ),
                TelaPrincipalCategorias(
                  nomeDaCategoria: 'Colecionáveis:',
                ),
                Divider(),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                    ],
                  ),
                ),
                TelaPrincipalCategorias(
                  nomeDaCategoria: 'Colecionáveis:',
                ),
                Divider(),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                    ],
                  ),
                ),
                TelaPrincipalCategorias(
                  nomeDaCategoria: 'Colecionáveis:',
                ),
                Divider(),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                    ],
                  ),
                ),
                TelaPrincipalCategorias(
                  nomeDaCategoria: 'Colecionáveis:',
                ),
                Divider(),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
                      ),
                      CardEmpresa(
                        nomeDaEmpresa: 'JOV & GEEK',
                        descricao: 'Artigos para colecionadores',
                        imagem: 'jovgeek.png',
                        instagram: 'jovgeek',
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