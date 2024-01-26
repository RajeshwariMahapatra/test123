import 'package:brain_school/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';


class OnBoardingScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/onboarding1.png',
    'assets/images/onBoarding2.png',
    'assets/images/onBoarding3.png',
    // Add more image paths as needed
  ];
  static const String routeName = 'OnBoardingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the login screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('Go to Login Screen'),
          ),
        ],
      ),
    );
  }
}
