import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF247BA0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF13293D),
        title: const Text(
          'Sinal verde',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        elevation: 0, // Removido a sombra
      ),
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Parar',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'verdana',
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Avançar',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'verdana',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFF247BA0),
        appBar: AppBar(
          backgroundColor: const Color(0xFF13293D),
          automaticallyImplyLeading: false,
          title: const Text(
            'Sinal verde',
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          centerTitle: false,
          elevation: 0, // Removido a sombr
        ),
        body: SafeArea(
          top: true,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: SizedBox(
                height: 1800,
                width: 2000,
                child: Image.asset('assets/microfone.png'),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF247BA0),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: const HomePageWidget()));
}
