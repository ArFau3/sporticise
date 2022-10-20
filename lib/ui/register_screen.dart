
import 'package:flutter/material.dart';
import 'package:sporticise/ui/awal.dart';


class RegisterScreen extends StatefulWidget{
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // ignore: non_constant_identifier_names
  bool lihat_pass = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 65, right: 20, left: 20),
          width: 370,
          height: 600,
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
                    height: 220,
                    fit: BoxFit.cover,
                ),
              ),
              //END logo sporticise
              //Form Login
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Form(
                      //key: _formkey,
                      child: Column(
                        children: [
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Masukkan Username';
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              //controller: emailcon,
                              decoration: const InputDecoration(
                                labelText: "Username",
                              )),
                          TextFormField(
                            obscureText: lihat_pass,
                            enableSuggestions: false,
                            autocorrect: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Masukkan Password';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.visiblePassword,
                            //controller: passwordcon,
                            decoration: InputDecoration(
                              labelText: "Password",
                              suffixIcon: IconButton(
                                icon: lihat_pass ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                                onPressed: togglePassVisibility,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // roundbutton(
                    //     title: "Login",
                    //     tapfun: () {
                    //       FirebaseAuth.instance
                    //           .signInWithEmailAndPassword(
                    //               email: emailcon.text.toString(),
                    //               password: passwordcon.text.toString())
                    //           .then((value) {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) =>
                    //                     homescreen(name: '')));
                    //       }).onError((error, stackTrace) {
                    //         toastmessage(error.toString());
                    //       });
                    //     }),
                    const SizedBox(
                      height: 25,
                    ),
                    // Text("- OR -"),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ]
                ),
              ),
              //END Form Login
              //Tombol Buat Akun
              Container(
                margin: const EdgeInsets.only(top: 35),
                height: 40,
                  decoration: BoxDecoration( //DecorationImage
                    border: Border.all(
                      color: Colors.black,
                      width: 1.3,
                      style: BorderStyle.none
                    ), //Border.all
 
                    borderRadius: BorderRadius.circular(25),

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
                      padding: const EdgeInsets.symmetric(horizontal: 135),
                      textStyle: const TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const AwalScreen()));
                    },
                    child: const Text('Login'), 
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

  void togglePassVisibility() => setState(() {
    lihat_pass = !lihat_pass;
  });
}