import 'package:farm_harvest/screens/customer_otp_verification-screen.dart';
import 'package:flutter/material.dart';

class FarmerGetOTPScreen extends StatefulWidget {
  const FarmerGetOTPScreen({super.key, this.page = 'login'});
  final String page;

  @override
  State<FarmerGetOTPScreen> createState() => _FarmerGetOTPScreenState();
}

class _FarmerGetOTPScreenState extends State<FarmerGetOTPScreen> {
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
                  Colors.lightBlue,
                  Colors.green,
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
                Center(
                  child: widget.page == 'login'
                      ? const Text(
                          'OTP \nVerification',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            letterSpacing: 1.0,
                          ),
                        )
                      : const Text(
                          'Enter your \nDetails',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            letterSpacing: 1.0,
                          ),
                        ),
                ),
                const SizedBox(height: 60.0),
                if (widget.page != 'login')
                  SizedBox(
                    width: 360,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Enter Your User Name',
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                        ),
                        suffixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30.0,
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
                const SizedBox(height: 40),
                SizedBox(
                  width: 360,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Enter Your Mobile Number',
                      prefix: const Text(
                        '+91',
                        style: TextStyle(color: Colors.white),
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Poppins',
                      ),
                      suffixIcon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 30.0,
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
                const SizedBox(height: 50.0),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const FarmerOTPVerificationScreen()),
                  ),
                  child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Get OTP',
                        style: TextStyle(
                          color: Color(0xff6AB357),
                          fontSize: 21.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'We do not collect any personal information other than your phone number.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Use this service without a second thought.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
