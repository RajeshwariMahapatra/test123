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
        title: Text(''),
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
            style: ElevatedButton.styleFrom(
              alignment: Alignment(10, -10),
    primary: Colors.blue, // Change the background color
    onPrimary: Colors.white, // Change the text color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Adjust border radius
    ),
    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0), // Adjust padding
  ),
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
