import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class HatudScreen extends StatefulWidget {
  const HatudScreen({super.key});
  @override
  State<HatudScreen> createState() => _HatudScreenState();
}

class _HatudScreenState extends State<HatudScreen> {
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
        title: const Text('PaHATUD',
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