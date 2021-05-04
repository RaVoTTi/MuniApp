import 'package:municipalidad_de_malargue/screens/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:municipalidad_de_malargue/widgets/widgets.dart';
//import 'package:url_launcher/url_launcher.dart';

//const _url = products[currentIndex][3];
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Telefono(),
    ));

class Telefono extends StatefulWidget {
  @override
  _TelefonoState createState() => _TelefonoState();
}

class _TelefonoState extends State<Telefono> {
  final List<Map<String, String>> products = [
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/04/malargue-municipalidad-1.jpg',
      'title': 'Municipalidad de Malargüe',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604471060'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/11/6ccf4dc0-d57c-4e45-90c0-f6b579773729.jpg',
      'title': 'Desarrollo Social',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604412246'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/12/119906822_3292286270824368_1875384053163340481_n.jpg',
      'title': 'Turismo',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604471659'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/09/c813a911-5bd7-46b8-8942-15056d6b61a1.jpg',
      'title': 'Terminal de Omnibus Malargüe',
      'description': '08:00hs a 20:00hs',
      'number': '+54902604629233'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2021/03/planetariointro.jpg',
      'title': 'Planetario',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2021/03/WhatsApp-Image-2021-03-18-at-22.44.01-768x576.jpeg',
      'title': 'Servicios Públicos',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2018/02/DSC_8624-Small.jpg',
      'title': 'Agencia de Desarrollo Educativo',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2016/03/plaza.jpg',
      'title': 'Espacios Verdes',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.mendoza.travel/wp-content/mendoza_uploads/museo3.jpg',
      'title': 'Cultura',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2021/01/2bcd7b39-11e0-44ca-b0d2-71fdac280577-1.jpg',
      'title': 'Defensa Civil',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2021/03/DSC_2756-1-700x467-1.jpg',
      'title': 'Vivienda',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2021/04/WhatsApp-Image-2021-04-21-at-10.26.39-768x432.jpeg',
      'title': 'Deportes',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-17-at-13.46.07-1.jpeg',
      'title': 'Centro de Convenciones',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2021/02/turacc.jpeg',
      'title': 'Discapacidad',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/12/carnet-de-conducir-850x500-1.jpg',
      'title': 'Licencias de Conducir',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },

    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/08/formacion_1_0.jpg',
      'title': 'Oficina de Empleo',
      'description': '08:00hs a 13:00hs',
      'number': '+54902604629233'
    },
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: FadeAnimation(
                  .8,
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(products[currentIndex]['url']),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.grey[700].withOpacity(.9),
                            Colors.grey.withOpacity(.0),
                          ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FadeAnimation(
                              1,
                              Container(
                                width: 90,
                                margin: EdgeInsets.only(bottom: 60),
                                child: Row(
                                  children: _buildIndicator(),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )),
            ),
            Expanded(
              child: Transform.translate(
                offset: Offset(0, -40),
                child: FadeAnimation(
                    1,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                              1.3,
                              Text(
                                products[currentIndex]['title'],
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              FadeAnimation(
                                  1.4,
                                  Text(
                                    products[currentIndex]['description'],
                                    style: TextStyle(
                                        color: Color(0xff00939d),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              FadeAnimation(
                                  1.5,
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Horarios de Atención:",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: BtnLlamar(
                              number: products[currentIndex]['number'],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? Color(0xff00939d) : Colors.white),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
