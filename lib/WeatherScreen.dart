import 'package:clean_air/MyHomePage.dart';
import 'package:clean_air/PermissionScreen.dart';
import 'package:clean_air/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
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
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                  Color(0xff6E6CD8),
                  Color(0xff40A0EF),
                  Color(0xff77E1EE)
                ])),
          ),
          Align(
              alignment: FractionalOffset.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(top: 45.0)),
                  const Image(image: AssetImage('icons/weather-sunny.png')),
                  const Padding(padding: EdgeInsets.only(top: 41.0)),
                  Text(
                    'poniedziałek 31.05.2023 21:00 Słonecznie',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      height: 1.2,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 12.0)),
                  Text(
                    '14C',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      fontSize: 64,
                      height: 1.2,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    )),
                  ),


                  Text(
                    'Odczuwalna 13C',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      height: 1.2,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 24.0)),
                  IntrinsicHeight(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 130,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ciśnienie',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  )),
                                ),
                                Padding(padding: EdgeInsets.only(top: 2.0)),
                                Text(
                                  '1200 hPa',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 22,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )),
                                )
                              ])),
                      const VerticalDivider(
                        width: 48,
                        thickness: 1,
                      ),
                      SizedBox(
                          width: 130,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Wiatr',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  )),
                                ),
                                const Padding(padding: EdgeInsets.only(top: 2.0)),
                                Text(
                                  '16Km/h',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 22,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )),
                                )
                              ])),
                    ],
                  )),
                  const Padding(padding: EdgeInsets.only(top: 24.0)),
                  Text(
                    'Opady: 0,1mm/12',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      height: 1.2,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 68.0)),
                ],
              )),
        ],
      ),
    );
  }
}
