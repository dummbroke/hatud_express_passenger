import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});
  @override
  State<ActivityScreen> createState() => ActivityScreenState();
}

class ActivityScreenState extends State<ActivityScreen> {
  String selectVehicleType = 'MotoTaxi';
  String pickupLocation = '';
  String destinationLocation = '';
  bool isLoadingLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Activity',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.dark,
          ),
        ),
      ),
    );
  }
}