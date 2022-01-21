import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poolr/ui/auth/signuppage.dart';
import 'package:poolr/ui/driver/create_car_details_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Poolr",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 30
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                )
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
                )
            ),
            TextButton(
                onPressed: () {},
                child: const Text("Forgot your password?")
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text("Login"),
                onPressed: () {
                  if (kDebugMode) {
                    print(nameController.text);
                    print(passwordController.text);
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CreateCarDetailsPage();
                      }
                    )
                  );
                },
              ),
            ),
            Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignUpPage();
                          }
                        )
                      );
                    },
                    child: const Text(
                      "Sign Up",
                    )
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
