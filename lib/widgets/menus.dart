import 'package:flutter/material.dart';
import 'package:mirochapk/dashboard.dart';
import 'package:mirochapk/products.dart';
import 'package:mirochapk/view/client_local.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/rochlogo.jpg"), fit: BoxFit.cover),
            ),
            accountEmail: null,
            accountName: null,
          ),
          new ListTile(
            title: Text("Módulo de clientes"),
            //subtitle: Text("Créación, modificación y eliminado de clientes"),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ClientList()));
            },
          ),
          new ListTile(
            title: Text("Módulo de productos"),
            //subtitle: Text("Créación, modificación y eliminado de productos"),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProductList()));
            },
          ),
          new ListTile(
            title: Text("Módulo de CLIENTES LOCAL"),
            //subtitle: Text("Créación, modificación y eliminado de productos"),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ClientLocal()));
            },
          ),
        ],
      ),
    );
  }
}
