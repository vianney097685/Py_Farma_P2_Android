import 'package:flutter/material.dart';

void main() => runApp(MelendezApp());

class MelendezApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mi Empresa',
        theme: ThemeData(primarySwatch: Colors.red),
        //ruta de ventanas
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/productos": (BuildContext context) => Productos(),
          "/contacto": (BuildContext context) => Contacto(),
        }, //Fin de rutas
        home: Inicio()); //Fin de material
  } //Fin widget
} //Fin MelendezApp

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Empresa"),
      ),
      body: Center(
        child: Text("Seccion Empresa"),
      ),
    ); //Fin de Scaffold
  } //Fin widget empresa
} //Fin clase Empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Productos"),
      ),
      body: Center(
        child: Text("Seccion Productos"),
      ),
    ); //Fin de Scaffold
  } //Fin widget productos
} //Fin clase Productos

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Contacto"),
      ),
      body: Center(
        child: Text("Seccion Contacto"),
      ),
    ); //Fin de Scaffold
  } //Fin widget contacto
} //Fin clase Contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(color: Colors.grey, image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/jaquelineME/mis_imagenes/main/MicrosoftTeams-image.png"), alignment: Alignment.topCenter)), //Fin de la caja
      ), //Fin de Container
    ); //Fin de Scaffold
  } //Fin del widget inicio
} //Fin de Inicio