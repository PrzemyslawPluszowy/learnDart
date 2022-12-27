import 'package:clean_air/MyHomePage.dart';
import 'package:clean_air/PermissionScreen.dart';
import 'package:clean_air/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {


if(havePermission()) {
  Future.delayed(
      const Duration(seconds: 4),
          () =>
      {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PermissionScreen()))
      });
} else {
  //todo load data
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => MyHomePage()));

}


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
                      colors: [Color(0xff6671e5), Color(0xff5852e9)])),
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
                    Text('Aplikacja Do Monitorwania \n Powietrza',
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
