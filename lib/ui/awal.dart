
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sporticise/ui/landing_page.dart';


class AwalScreen extends StatelessWidget {
  const AwalScreen({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100, right: 20, left: 20),
          width: 370,
          height: 500,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 217, 217, 217),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              //logo sporticise
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/logo.png',
                    width: 400,
                    height: 240,
                    fit: BoxFit.cover,
                ),
              ),
              //END logo sporticise
              //Tombol Explore
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 40,
                  decoration: BoxDecoration( //DecorationImage
                    border: Border.all(
                      color: Colors.black,
                      width: 1.3,
                      style: BorderStyle.solid
                    ), //Border.all
 
                    borderRadius: BorderRadius.circular(15),

                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(
                          4.0,
                          4.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 1,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),

                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 125),
                      textStyle: const TextStyle(
                        fontSize: 15, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const AwalScreen()));
                    },
                    child: const Text('Buat Akun'), 
                  ),                      
              ),
              //END Tombol Explore 
              //Kata Atau
              Container(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 13.0),
                          child: const Divider(
                            color: Colors.black,
                            height: 30,
                            thickness: 1,
                          )),
                    ),
                    const Text("Atau"),
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 13.0, right: 20.0),
                          child: const Divider(
                            color: Colors.black,
                            height: 36,
                            thickness: 1,
                          )),
                    ),
                  ]
                ),
              ),
              //END Kata Atau
              //Opsi Sosmed
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [  
                    IconButton(
                      iconSize: 60,
                      icon: const Image(
                        image: AssetImage("assets/images/google.png"),
                        color: null,
                        fit: BoxFit.scaleDown,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const AwalScreen()));
                      },
                    ),
                    IconButton(
                      iconSize: 60,
                      icon: const Image(
                        image: AssetImage("assets/images/facebook.png"),
                        color: null,
                        fit: BoxFit.scaleDown,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const AwalScreen()));
                      },
                    ),
                  ],
                ),
              ),
              //END Opsi Sosmed
            ]
          ),
        ),  
        Container(
          padding: const EdgeInsets.only(top: 45),
          margin: const EdgeInsets.only(left: 57, right: 57),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Dengan melakukan pendaftaran berarti anda menyetujui segala ",
                      style: TextStyle(color: Colors.black, fontSize: 14,),
                    ),
                    TextSpan(
                      text: 'Kebijakan Aplikasi',
                      style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () { Navigator.push(context, MaterialPageRoute(builder: (_) => const MyHomePage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 80),
          margin: const EdgeInsets.only(left: 110),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Sudah mempunyai akun? ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    TextSpan(
                      text: 'login',
                      style: const TextStyle(color: Colors.blue, fontSize: 14),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () { Navigator.push(context, MaterialPageRoute(builder: (_) => const MyHomePage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}