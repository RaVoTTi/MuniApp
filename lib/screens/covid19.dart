import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://www.mendoza.gov.ar/vacunacion-covid-19/';
const _url1 =
    'https://www.mendoza.gov.ar/boletinoficial/separata-coronavirus-covid-19-2/';
const _url2 =
    'https://www.boletinoficial.gob.ar/detalleAviso/primera/230245/20200608';

class Covid19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 45.0),
        children: <Widget>[
          // Slider Principal//
          CarouselSlider(
            options: CarouselOptions(
              height: 100.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
            ),
            items: [
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xff6a2b86)),
                  child: Center(
                      child: Text(
                    'Vacunación 2021',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                onTap: () => _linkVacunacion(),
              ),
              GestureDetector(
                onTap: () => _linkCovidProvincia(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xff6a2b86)),
                  child: Center(
                      child: Text(
                    'Normativa Provincial',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () => _linkCovidNacion(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xff6a2b86)),
                  child: Center(
                      child: Text(
                    'Normativa Nacional',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
          //Slider 2//
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.90,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.malargue.gov.ar/wp-content/uploads/2020/03/imagenes_cuidados-03.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.malargue.gov.ar/wp-content/uploads/2020/03/imagenes_cuidados-02a.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.malargue.gov.ar/wp-content/uploads/2020/03/imagenes_cuidados-01.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _linkVacunacion() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void _linkCovidProvincia() async => await canLaunch(_url1)
    ? await launch(_url1)
    : throw 'Could not launch $_url1';

void _linkCovidNacion() async => await canLaunch(_url2)
    ? await launch(_url2)
    : throw 'Could not launch $_url2';
