import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class TourScreen extends StatefulWidget {
  const TourScreen({super.key});
  @override
  State<TourScreen> createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  String selectVehicleType = 'MotoTaxi';
  String pickupLocation = '';
  String destinationLocation = '';
  bool isLoadingLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset('assets/icons/ic_back.png',
            color: AppColors.dark,
          ),
        ),
        title: const Text('PaTOUR',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.dark,
          ),
        ),
      ),
    );
  }
}