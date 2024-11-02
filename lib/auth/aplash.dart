import 'package:flutter/material.dart';
import 'package:shats/auth/login.dart';

class AplashScreen extends StatefulWidget {
  const AplashScreen({super.key});

  @override
  State<AplashScreen> createState() => _AplashScreenState();
}

class _AplashScreenState extends State<AplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToPiceq4ANIwBhAKGH4kIQMCanisDYHiSVf4Z1qDOcKX-cg_QwXYJdtwsoOuddB1UBGDs&usqp=CAU"),
            ),
          )
        ],
      ),
    );
  }
}
