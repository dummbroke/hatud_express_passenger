import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/theme/theme.dart';
import 'package:hatud_express_passenger/ui/auth/register_name_screen.dart';
import 'package:pinput/pinput.dart';

class SmsVerificationScreen extends StatefulWidget {
  const SmsVerificationScreen({super.key});

  @override
  State<SmsVerificationScreen> createState() => _SmsVerificationScreenState();
}

class _SmsVerificationScreenState extends State<SmsVerificationScreen> {
  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 40,
      height: 40,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.dark,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2.0, color: AppColors.dark.withOpacity(0.8)),
        ),
      ),
    );

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
      ),
      title: const Text('Get Started'),
      centerTitle: true,
      ),
      backgroundColor: AppColors.light,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Enter the 6-digits code sent to',
              style: TextStyle(
              fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              '+639759178173',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50,),

            Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
              onCompleted: (pin) {
                print("Completed " + pin);
                //TODO: verify otp
              },
            ),
            const Spacer(),

            const Text("Didn't get a code?",
            style: TextStyle(
              fontSize: 15,
              color: AppColors.dark,),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RegisterNameScreen(),
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
                  child: const Text('Proceed'),
                )
            )
          ],
        ),
      ),
    );
  }
}