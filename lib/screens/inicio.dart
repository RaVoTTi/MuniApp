import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:municipalidad_de_malargue/screens/noticias.dart';
import 'package:municipalidad_de_malargue/screens/servicios.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://turismo.malargue.gov.ar/';
const _url1 = 'https://thesaurus.malargue.gov.ar/';
const _url2 = 'https://terminal.malargue.gov.ar/';
const _url3 = 'https://infogov.com.ar/bonos/malargue/#/login?returnUrl=%2F';
const _url4 = 'https://hcd.malargue.gov.ar/';
const _url5 = 'http://chatbot.munimalargue.online/';



class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var container = Container(
                child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.peopleArrows,
                    color: Color(0xff00939d),
                    size: 50,
                  ),
                  onPressed: () {},
                ),
              );
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
        children: <Widget>[
          // Slider Principal//
          CarouselSlider(
            options: CarouselOptions(
              height: 180.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: [
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.malargue.gov.ar/wp-content/uploads/2021/04/turismo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                onTap: () => _linkTurismo(),
              ),
              GestureDetector(
                onTap: () => _linkThesaurus(),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.malargue.gov.ar/wp-content/uploads/2021/04/THESAURUS.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _linkTerminal(),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.malargue.gov.ar/wp-content/uploads/2021/04/terminal.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Botonera 1 - Servicios, Bono Sueldo, HCD//
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Servicios()),
                    );
                  },
                  child: Text("Servicios"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Color(0xff00939d),
                    onPrimary: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RSSDemo()),
                    );
                  },
                  child: Text("Últimas Noticias"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Color(0xff00939d),
                    onPrimary: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _linkHCD(),
                  child: Text("HCD"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Color(0xff00939d),
                    onPrimary: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          //Slider 2//
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.90,
                enableInfiniteScroll: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: [
                GestureDetector(
                  onTap: () => _linkAsisVec(),
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.malargue.gov.ar/wp-content/uploads/2021/04/ezgif.com-gif-maker-1.gif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Botonera 2 - //
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              'Entre todos nos cuidamos.',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              container,
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.handsWash,
                    color: Color(0xff00939d),
                    size: 50,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.headSideMask,
                    color: Color(0xff00939d),
                    size: 50,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.handshakeSlash,
                    color: Color(0xff00939d),
                    size: 50,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _linkTurismo() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void _linkThesaurus() async => await canLaunch(_url1)
    ? await launch(_url1)
    : throw 'Could not launch $_url1';

void _linkTerminal() async => await canLaunch(_url2)
    ? await launch(_url2)
    : throw 'Could not launch $_url2';

void linkBonoSueldo() async => await canLaunch(_url3)
    ? await launch(_url3)
    : throw 'Could not launch $_url3';

void _linkHCD() async => await canLaunch(_url4)
    ? await launch(_url4)
    : throw 'Could not launch $_url4';

void _linkAsisVec() async => await canLaunch(_url5)
    ? await launch(_url5)
    : throw 'Could not launch $_url5';
