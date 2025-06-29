import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/theme/theme.dart';

class SmsVerificationScreen extends StatelessWidget{
  const SmsVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset('assets/icons/ic_back.png',
          color: AppColors.dark,
          ),
        ),title: const Text('Get Started'
      ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.light,
      body: Padding(
          padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text('Enter the 6-digits code sent to',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.dark,
                ),
              ),
            ),
            const SizedBox(height: 2),

            Text('+639759171873',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}