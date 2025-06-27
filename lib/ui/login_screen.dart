import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/theme/theme.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
          color: AppColors.light,
          width: 100,
          height: 100,)
        ),
        iconTheme: IconThemeData(
          color: AppColors.dark,
        ),
      ),
      backgroundColor: AppColors.secondary,
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                  child: Image.asset(
                'assets/images/hatud_logo.png',
                width: 200,
              )),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                child: Column(
                  children: [
                    //Log In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          //TODO: Log In Google Funnction here
                        },
                        icon: Image.asset(
                          'assets/icons/ic_google_logo.png',
                          height: 24.0,
                        ),
                        label: const Text("Continue with Google"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.light,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    //Or
                    Row(
                      children: [
                        // The line on the left
                        const Expanded(
                          child: Divider(
                            color: AppColors
                                .dark, // You can use AppColors.dark.withOpacity(0.5)
                            thickness: 1,
                          ),
                        ),

                        // The "or" text in the middle
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'or',
                            style: TextStyle(
                                color: AppColors
                                    .dark), // Or AppColors.dark.withOpacity(0.8)
                          ),
                        ),

                        // The line on the right
                        const Expanded(
                          child: Divider(
                            color: AppColors.dark,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    //Phone Number Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          //TODO: Continue with Mobile Number Funnction here
                        },
                        icon: Image.asset(
                          'assets/icons/ic_phone.png',
                          height: 24.0,
                        ),
                        label: const Text(
                          "Continue with Mobile Number",
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.quaternary,
                          foregroundColor: AppColors.dark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
