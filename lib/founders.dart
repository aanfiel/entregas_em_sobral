import 'package:entregasemsobral/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaleConosco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Fale conosco',
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: SafeArea(
                  child: Column(
                    children: [
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: 'Fale com os desenvolvedores',
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
                                text: 'Este projeto foi idealizado por dois estudantes do curso de engenharia de computação da UFC Sobral como parte dos estudos de desenvolvimento de aplicativos móveis. A ideia é contribuir com o comércio local ajudando a tornar o serviço de entrega de seus produtos conhecido por todo o público da cidade. Para o cliente, a vantagem está na comodidade de ter à mão um catálogo sempre atualizado dos comércios de Sobral que fazem a entrega do produto que necessitar.',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: '\n\n',
                              ),
                              TextSpan(
                                text: 'Para falar conosco, clique em um dos cards abaixo:',
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
                      CardDesenvolvedor(
                        nomeDaEmpresa: 'José Lopes',
                        descricao: 'Professor de inglês / Desenvolvedor Flutter',
                        instagram: 'mrjlopes',
                        imagem: 'https://instagram.fjdo10-1.fna.fbcdn.net/v/t51.2885-19/s320x320/61186456_468695650548608_475888067228467200_n.jpg?_nc_ht=instagram.fjdo10-1.fna.fbcdn.net&_nc_ohc=yBu5FZHb_rsAX88K4I8&oh=37cd3207b9117923b403f7ea52af58ec&oe=5EE9143F',
                      ),
                      Container(
                        height: 10.0,
                      ),
                      CardDesenvolvedor(
                        nomeDaEmpresa: 'Gerônimo Aguiar',
                        descricao: 'Estudante / Desenvolvedor Flutter',
                        instagram: 'geronimo_aguiar',
                        imagem: 'https://instagram.fjdo10-1.fna.fbcdn.net/v/t51.2885-19/s320x320/95309401_1682053658610714_4263825145266700288_n.jpg?_nc_ht=instagram.fjdo10-1.fna.fbcdn.net&_nc_ohc=t6Y8KGP8cPEAX91yOYc&oh=35168a8bab6cf0e6a7fc458115e54f95&oe=5EEB1A5D',
                      ),
                      Container(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
