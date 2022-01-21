import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poolr/ui/auth/signinpage.dart';
import 'package:poolr/ui/driver/create_car_details_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                "Sign Up",
                style: TextStyle(
                    fontSize: 30
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: middleNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Middle Name',
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: idNumberController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'National ID Number',
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: confirmPasswordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                )
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                child: const Text("Register"),
                onPressed: () {
                  if (kDebugMode) {
                    print(firstNameController.text);
                    print(middleNameController.text);
                    print(lastNameController.text);
                    print(emailController.text);
                    print(phoneNumberController.text);
                    print(idNumberController.text);
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
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignInPage();
                          }
                        )
                      );
                    },
                    child: const Text(
                      "Sign In",
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
