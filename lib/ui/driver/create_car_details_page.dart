import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreateCarDetailsPage extends StatefulWidget {
  const CreateCarDetailsPage({Key? key}) : super(key: key);

  @override
  _CreateCarDetailsPageState createState() => _CreateCarDetailsPageState();
}

class _CreateCarDetailsPageState extends State<CreateCarDetailsPage> {

  TextEditingController vehicleRegistrationNumberController = TextEditingController();
  TextEditingController vehicleMakeController = TextEditingController();
  TextEditingController vehicleModelController = TextEditingController();
  TextEditingController vehicleColorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget> [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Enter Car Details",
              style: TextStyle(
                  fontSize: 30
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: vehicleRegistrationNumberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Registration Number',
                ),
              )
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: vehicleMakeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Vehicle Make',
                ),
              )
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: vehicleModelController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Vehicle Model',
                ),
              )
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: vehicleColorController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Vehicle Colour',
                ),
              )
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              child: const Text("Save"),
              onPressed: () {
                if (kDebugMode) {
                  print(vehicleRegistrationNumberController.text);
                  print(vehicleMakeController.text);
                  print(vehicleModelController.text);
                  print(vehicleModelController.text);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
