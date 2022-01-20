import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Hello There!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const SizedBox(height: 30,),
                Text(
                  "Please sign up or sign in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/car_illustration_one.jpg')
                )
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {},
              color: Colors.indigoAccent[400],
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(40)
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white70
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: double.infinity,
              height: 60,
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
