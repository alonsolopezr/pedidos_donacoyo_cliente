import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;

  List pedido = [];

  void _hacerPedido() {
    print(pedido);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Row(
          children: <Widget>[
            Container(
              width: 73.0,
              padding: EdgeInsets.all(7.0),
              child: Image.asset(
                "images/logos/logoEtiquetas_MasChico_105x99.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Haz tu Pedido",
              style: GoogleFonts.sonsieOne(
                  color: Color(0xFFD3AC8F),
                  fontWeight: FontWeight.w600,
                  fontSize: 44.0,
                  fontStyle: FontStyle.italic),
            ),
          ],
        )),

        // backgroundColor: Color(0xFF671A07), //CAFE CAJETA OSCURO
        backgroundColor: Color(0xFF5F2B19), //CAFE CHOCO OSCURO
        actionsIconTheme: IconThemeData(
          color: Colors.teal,
        ),
        elevation: 7.0,
        bottom: TabBar(
          tabs: [
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 40.0,
                    padding: EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      "images/dulce_amarillo_verde.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Text("Dulces"),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 40.0,
                    padding: EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      "images/carne_seca.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Text("A Comer"),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 40.0,
                    padding: EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      "images/figuras_palo_fierro.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Text("Artesanía"),
                ],
              ),
            ),
            // Text("Artesanías"),
          ],
          controller: TabController(
            length: 3,
            vsync: this,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(7.0),
              width: double.infinity,
              child: Text(
                '¿Cuantos paquetes de Coyotas?',
                style: GoogleFonts.sonsieOne(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () {
                        print("Se aplasto uno...");
                      },
                      child: Container(
                        width: 100.0,
                        height: 60.0,
                        child: Text(
                          "Piloncillo",
                          style: GoogleFonts.sonsieOne(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _hacerPedido,
        tooltip: 'Hacer Pedido',
        child: Icon(
          Icons.done_all,
          color: Color(0xffffe707),
          size: 32.0,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
