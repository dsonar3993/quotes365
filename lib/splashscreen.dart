import 'package:flutter/material.dart';
import 'package:quotes365/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                        top: 1,
                        left: 1,
                        child: Image.asset(
                          'assets/quotes.png',
                          color: Colors.grey,
                        )),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Image.asset('assets/quotes.png'),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Quotes 365",
              textScaleFactor: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
