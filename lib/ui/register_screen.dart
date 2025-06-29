import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/ui/sms_verification_screen.dart';
import '../theme/theme.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
        ),title: const Text(
        'Get Started'
      ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.light,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Mobile',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.dark.withOpacity(0.7)
                ),
              ),
            ),
            const SizedBox(height: 8),

            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 10,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left:8.0, right: 8.0,bottom: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/ic_phflag.png',
                        width: 30,
                      ),
                      const SizedBox(width: 8),

                      const Text(
                        '+63',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.dark,
                        ),
                      ),
                    ],
                  ),
                ),
                  hintText: '9759178173',
                  border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                  focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary, width: 2)
                )
              ),
            ),
            const Spacer(),

            const Text(
              'Send me a verification code through SMS',
              style: TextStyle(
                color: Colors.grey,),
            ),
            const SizedBox(height: 16,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SmsVerificationScreen()
                    ),
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
                child: const Text('log In'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
