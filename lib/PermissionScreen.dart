import 'package:clean_air/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key});

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
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
                    const Image(image: AssetImage('icons/hand-wave.png')),
                    const Padding(padding: EdgeInsets.only(top: 15.0)),
                    Text(
                      'Hejka',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                        fontSize: 42.0,
                        color: Colors.white,
                      )),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5.0)),
                    Text(
                        'Aplikacja ${Strings.appTitle} \n potrzebuje lokalizacji urządzenia',
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
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.only(top: 10.0, bottom: 10.0))),
                        onPressed: () {
                          //to do ask permision
                          Navigator.push(context, MaterialPageRoute(builder: (contex)=> MyHomePage()
                          ));
                        },
                        child: const Text(
                          'Zgoda',
                          style:
                              TextStyle(fontSize: 16.00, color: Colors.black),
                        ),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
