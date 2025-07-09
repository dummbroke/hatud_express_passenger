import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/ui/dashboard/hatud_screen.dart';
import 'package:hatud_express_passenger/ui/dashboard/sugo_screen.dart';

import '../../theme/theme.dart';
import '../dashboard/tour_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 📱 APP BAR SECTION
      appBar: AppBar(
        backgroundColor: AppColors.secondary,     // Turquoise app bar
        elevation: 0,                          // No shadow
        automaticallyImplyLeading: false,      // No back button
        leadingWidth: 70,                      // Space for logo
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/hatud_logo.png',
            width: 100,
          ),
        ),
      ),

      backgroundColor: AppColors.light,

      body: Column(
        children: [

          Container(
            width: double.infinity,
              padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              color: AppColors.secondary,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome to Hatud Express!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dark,
                  ),
                ),
                SizedBox(height: 5),
                Text('Your ride, your way, everyday',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.dark
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              color: AppColors.light,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5,),

                    const Text(
                      'How can we help you today?',
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.dark,
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        Expanded(
                          child: _ServiceCard(
                            imagePath: 'assets/icons/ic_motor.png',
                            title:'PaHATUD',
                            subtitle:'Book a ride',
                            onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const HatudScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                            child: _ServiceCard(
                              imagePath: 'assets/icons/ic_package.png',
                              title:'PaSUGO',
                              subtitle:'Run an errand',
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const SugoScreen(),
                                  ),
                                );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                            child: _ServiceCard(imagePath: 'assets/icons/ic_tour.png',
                                title: 'PaTOUR',
                                subtitle: 'Book a tour guide',
                                onTap:() {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const TourScreen(),
                                    ),
                                  );
                          },
                         ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

   const _ServiceCard({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 130,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius:  BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
              color: AppColors.white,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.help_outline,
                  size: 32,
                  color: AppColors.white,
                );
              },
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            Text(subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    );
  }
}