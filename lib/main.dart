import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF247BA0),
      appBar: AppBar(
        backgroundColor: Color(0xFF13293D),
        title: Text(
          'Sinal verde',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        elevation: 2,
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
                  color: Colors.red, // Cor da bola vermelha
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Parar',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'verdana', // Cor do texto
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.green, // Cor da bola verde
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Avançar',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white, // Cor do texto
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
        backgroundColor: Color(0xFF247BA0),
        appBar: AppBar(
          backgroundColor: Color(0xFF13293D),
          automaticallyImplyLeading: false,
          title: Text(
            'Sinal verde',
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Image.asset(
                'assets/microfone.png',
                height: 400,
                width: 200,
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF247BA0),
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
  runApp(MaterialApp(home: HomePageWidget()));
}
