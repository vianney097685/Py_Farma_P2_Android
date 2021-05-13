import 'package:flutter/material.dart';

void main() => runApp(MelendezApp());

class MelendezApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mi Empresa',
        theme: ThemeData(primarySwatch: Colors.blue),
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
        child: Text("Sección Empresa"),
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
        child: Text("Sección Productos"),
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
        child: Text("Sección Contacto"),
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
        decoration: BoxDecoration(color: Colors.blue[200], image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/vianney097685/FotosRosas/main/farma.jpg"), alignment: Alignment.topCenter)), //Fin de la caja
        child: Column(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    color: Colors.redAccent,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/inicio");
                    },
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Text(
                          "INICIO",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                        ),
                      ), //Fin center
                    ), //Fin sizebox
                  ), //fin boton inicio
                ) //Fin de padding
              ], //Fin de widget[]
            ), //Fin columna interna

            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/empresa");
                    },
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Text("EMPRESA", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
                      ),
                    ),
                  ),
                ) //pading
              ], //fin widget
            ), //Fin columna 2
          ] //Widget[]
              ), //Fin de fila 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.redAccent,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/productos");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("PRODUCTOS", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.redAccent,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/contacto");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("CONTACTO", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ] //Fin del widget
            ), //Columna
      ), //Fin de Container
    ); //Fin de Scaffold
  } //Fin del widget inicio
} //Fin de Inicio
