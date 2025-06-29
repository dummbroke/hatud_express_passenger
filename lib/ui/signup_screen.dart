import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/theme/theme.dart';
import 'package:hatud_express_passenger/ui/login_screen.dart';
import 'package:hatud_express_passenger/ui/register_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.light,
        body: Stack(
          children: [
            // Layer 1 (background Image)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 200,
              child: Image.asset(
                'assets/images/signup_bg.png',
                fit: BoxFit.cover,
              ),
            ),
            //Layer 2 (Content)
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/hatud_logo.png',
                    width: 200,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 32.0),
                  child: Column(
                    children: [
                      //Log In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LogInScreen()
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.light,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 18),
                          ),
                          child: const Text('Log In'),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.quaternary,
                            foregroundColor: AppColors.dark,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 18),
                          ),
                          child: const Text('Sign Up'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
