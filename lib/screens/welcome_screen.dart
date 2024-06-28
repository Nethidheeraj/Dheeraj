import 'package:farm_harvest/screens/customer_welcome_screen.dart';
import 'package:farm_harvest/screens/farmer_welcome_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4CAF50), Color(0xFF8FBC8F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200.0,
                width: 350.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images/farm_harvest-1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FarmerWelcomeScreen(
                              page: 'signup',
                            ))),
                child: Container(
                  height: 60.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Farmer',
                        style: TextStyle(
                          color: Color(0xFF4CAF50),
                          fontSize: 25.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.orange,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomerWelcomeScreen(
                              page: 'signup',
                            ))),
                child: Container(
                  height: 60.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Customer',
                        style: TextStyle(
                          color: Color(0xFF4CAF50),
                          fontSize: 25.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.orange,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //   child: Text(
              //     'We do not collect any personal information other than your phone number.',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 16.0,
              //       fontFamily: 'Poppins',
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10.0),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //   child: Text(
              //     'Use this service without a second thought.',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 16.0,
              //       fontFamily: 'Poppins',
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
