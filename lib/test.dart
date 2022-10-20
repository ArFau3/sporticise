import 'package:flutter/material.dart';
import 'package:sporticise/ui/awal.dart';
import 'package:sporticise/ui/register_screen.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              //Form Login
              Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
              //END Form Login
              //Tombol Buat Akun
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 40,
                  decoration: BoxDecoration( //DecorationImage
                    border: Border.all(
                      color: Colors.black,
                      width: 1.3,
                      style: BorderStyle.none
                    ), //Border.all
 
                    borderRadius: BorderRadius.circular(15),

                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(
                          2.0,
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
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen()));
                    },
                    child: const Text('Buat Akun'), 
                  ),                      
              ),
              //END Tombol Buat akun 
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
      ],
      ),
    );
  }
}