import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';

class CustomerOTPVerificationScreen extends StatefulWidget {
  const CustomerOTPVerificationScreen({super.key});

  @override
  State<CustomerOTPVerificationScreen> createState() =>
      _CustomerOTPVerificationScreenState();
}

class _CustomerOTPVerificationScreenState
    extends State<CustomerOTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff0F9D58),
                  Color(0xff3E8E7E),
                  Color(0xff6AB357),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100.0),
                const Center(
                  child: Text(
                    'FarmHarvest',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                const Center(
                  child: Text(
                    'OTP\nVerification',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 95.0),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Enter OTP',
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Poppins',
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 25.0),
                        child: Iconify(
                          Teenyicons.otp_solid,
                          color: Colors.white,
                          size: 33.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 38.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50.0,
                    width: 220.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          color: Colors.green[600],
                          fontSize: 21.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
