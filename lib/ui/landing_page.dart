import 'package:flutter/material.dart';
import 'awal.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

@override
Widget build(BuildContext context) {
  return Container(
    //Gambar awal
    constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/awal.jpg"), 
        fit: BoxFit.cover,
      )
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 524),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //Tombol Explore
              Column(
                children: <Widget>[
                  const SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(34),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color.fromARGB(255, 217, 217, 217),
                                  Color.fromARGB(255, 217, 217, 217),
                                  Color.fromARGB(255, 217, 217, 217),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                            textStyle: const TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Goldman',
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => const AwalScreen())
                            );},
                          child: const Text('Explore Now'), 
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //END Tombol Explore
              //Tombol about
              Column(
                    children: <Widget>[
                      const SizedBox(height: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(34),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color.fromARGB(255, 217, 217, 217),
                                      Color.fromARGB(255, 217, 217, 217),
                                      Color.fromARGB(255, 217, 217, 217),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 65),
                                textStyle: const TextStyle(
                                  fontSize: 18, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Goldman',
                                ),
                              ),
                              onPressed: () {},
                              child: const Text('About'),
                            ),
                          ],
                        ),
                      ),
                    ],
              ),
              //END Tombol about
            ],
          ),
        ),
      ),
    )
  );
}
}
