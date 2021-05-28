import 'dart:ui';

import 'package:flutter/material.dart';

/*
Tutorial link: https://www.youtube.com/watch?v=YNn8dQQck2c
*/

class AwesomeCarousel extends StatefulWidget {
  @override
  _AwesomeCarouselState createState() => _AwesomeCarouselState();
}

class _AwesomeCarouselState extends State<AwesomeCarousel> {
  //load items to show and select by client
  List<String> data = [
    "images/paquetes/etiqueta_paq_piloncillo.png",
    "images/paquetes/etiqueta_paq_jamoncillo.png",
    "images/paquetes/etiqueta_paq_jamoncillo_cNuez.png",
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: Container(
            key: ValueKey<String>(data[_currentPage]),
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                // image: NetworkImage(data[_currentPage]),

                image: AssetImage(data[_currentPage].toString()),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('pagina actual ' + _currentPage.toString());
          },
          child: FractionallySizedBox(
            heightFactor: 0.55,
            child: PageView.builder(
              itemCount: data.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        // image: NetworkImage(data[index]),
                        image: AssetImage(data[_currentPage]),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
