import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

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
