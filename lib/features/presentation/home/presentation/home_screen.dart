
import 'package:api_test_porject/constants/update_customer.dart';
import 'package:api_test_porject/helpers/di.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print("Home Page Token:::::::::::::::::::::${appData.read(kKeyAccessToken)}");
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Home Screen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 20),
         Text(appData.read(kKeyAccessToken)),

          ElevatedButton(
            onPressed: () {
              // Add your button action here
            },
            child: Text('Click Me'),
          ),
        ],
      ),
    );
  }
}
