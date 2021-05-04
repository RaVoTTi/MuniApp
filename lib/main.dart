import 'package:flutter/material.dart';
import 'package:municipalidad_de_malargue/menu/widget/navigation_drawer_widget.dart';
import 'package:municipalidad_de_malargue/screens/home_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        body: HomeScreen()
      ),
    );
  }
}