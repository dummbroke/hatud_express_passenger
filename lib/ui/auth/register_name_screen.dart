import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/ui/navigation/main_screen.dart';

import '../../theme/theme.dart';

class RegisterNameScreen extends StatelessWidget {
  const RegisterNameScreen({super.key});

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
          color: AppColors.dark,)
        ),
        title: const Text('Get Started'),
        centerTitle: true,
      ),
      backgroundColor: AppColors.light,
      body: Padding(padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Name',
              style: TextStyle(
                color: AppColors.dark.withOpacity(0.7),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8,),

            TextField(
              keyboardType: TextInputType.text,
              style: const TextStyle(
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: 'What should we call you?',
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary, width: 2)
                )
              ),
            ),
            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.light,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  )
                ),
                child: const Text('Continue'),
              ),
            )
          ],
        ),
      ),
    );
  }
}