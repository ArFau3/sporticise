import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {


  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Tombol Explore
  Widget tombolExplore = Column(
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
                  onPressed: () {},
                  child: const Text('Explore Now'),
                ),
              ],
            ),
          ),
        ],
  );

  //Tombol about
  Widget tombolAbout = Column(
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
  );

  @override
Widget build(BuildContext context) {
  return Container(
    //Gambar awal
    constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/awal.jpg"), fit: BoxFit.cover)),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 524),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              tombolExplore,
              tombolAbout,
            ],
          ),
        ),
      ),
    )
  );
}
}
