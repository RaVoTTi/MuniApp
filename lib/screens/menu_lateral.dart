import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 400,
            child: new UserAccountsDrawerHeader(
              accountName: Text(
                "Hola Vecino",
                style: TextStyle(fontSize: 25),
              ),
              accountEmail: null,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ74H94Hu2To532MDpsXM3Vmxd37Tw_ck0ScA&usqp=CAU"),
                      fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
