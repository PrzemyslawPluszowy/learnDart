import 'package:clean_air/MyHomePage.dart';
import 'package:clean_air/PermissionScreen.dart';
import 'package:clean_air/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AirScreen extends StatefulWidget {
  const AirScreen({super.key});



  @override
  State<AirScreen> createState() => _AirScreenState();
}

class _AirScreenState extends State<AirScreen> {
  @override
  Widget build(BuildContext context) {





    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  // color: Color(0xFFFFFFFF),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.centerLeft,
                      colors: [Color(0xff6671e5), Color(0xff52e9c6)])),
            ),
            Align(
                alignment: FractionalOffset.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Image(image: AssetImage('icons/cloud-sun.png')),
                    const Padding(padding: EdgeInsets.only(top: 15.0)),
                    Text(
                      Strings.appTitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                        fontSize: 42.0,
                        color: Colors.white,
                      )),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5.0)),
                    Text('Air Air',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ))),
                  ],
                )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 20.0,
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Przywiewam dane...',  textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300
                            ))

                    ),))
          ],
        ),
      );
  }

  bool havePermission() {
    return true;
  }
}
