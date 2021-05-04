import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:municipalidad_de_malargue/screens/covid19.dart';
import 'package:municipalidad_de_malargue/screens/inicio.dart';
import 'package:municipalidad_de_malargue/screens/telefonos.dart';
import 'package:url_launcher/url_launcher.dart';



const _url = 'https://www.facebook.com/MunicipalidadMgue/';
const _url1 = 'https://www.instagram.com/municipalidad_de_malargue/?hl=es';
const _url2 = 'https://www.youtube.com/channel/UClUqTVqYB0HaGrywjjMy62w';
const _url3 = 'https://fmmunicipal.radioostream.com/';
const _url4 = 'https://twitter.com/MuniMalargue?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor';



class HomeScreen extends StatelessWidget  {
  // Light theme of your app
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromRadius(100.0),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              flexibleSpace: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/cabecera.jpg'),
                            fit: BoxFit.fill))),
              ),
              actions: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook,color: Color(0xff00939d),),
                  tooltip: 'Facebook',
                  onPressed: () => _facebook(),
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter,color: Color(0xff00939d),),
                  tooltip: 'Twitter',
                  onPressed: () => _twitter(),
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram,color: Color(0xff00939d),),
                  tooltip: 'Instagram',
                  onPressed: () => _instagram(),
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.youtube,color: Color(0xff00939d),),
                  tooltip: 'Youtube',
                  onPressed: () => _youtube(),
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.microphone,color: Color(0xff00939d),),
                  tooltip: 'Radio 94.5 FM Municipal',
                  onPressed: () => _radio(),
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.stream,color: Color(0xff00939d),),
                  tooltip: 'Menú',
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ],
              bottom: TabBar(
                unselectedLabelColor: Color(0xff00939d),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff00939d)),
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Inicio"),
                  Tab(icon: Icon(Icons.phone), text: "Teléfonos"),
                  Tab(icon: FaIcon(FontAwesomeIcons.virus), text: "Covid-19"),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Inicio(),
              Telefono(),
              Covid19()
            ],
          ),
        ),
      );
  }
}




    void _facebook() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

    void _instagram() async =>
    await canLaunch(_url1) ? await launch(_url1) : throw 'Could not launch $_url1';

    void _youtube() async =>
    await canLaunch(_url2) ? await launch(_url2) : throw 'Could not launch $_url2';

    void _radio() async =>
    await canLaunch(_url3) ? await launch(_url3) : throw 'Could not launch $_url3';

       void _twitter() async =>
    await canLaunch(_url4) ? await launch(_url4) : throw 'Could not launch $_url4';