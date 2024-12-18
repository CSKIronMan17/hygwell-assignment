import 'package:flutter/material.dart';
import 'package:travelappassign/components/dasheddivider.dart';
import 'package:travelappassign/components/heading.dart';
import 'package:travelappassign/core/servicedata.dart';
import 'package:travelappassign/views/add-ons/components/meals.dart';
import 'package:travelappassign/views/add-ons/components/otherservices.dart';
import 'package:travelappassign/views/add-ons/components/transport.dart';

class AdditionalServices extends StatefulWidget {
  final ServiceData travelData;
  final Function onSetVehicles;
  final Function onSetMeals;
  final Function onSetOtherServices;

  const AdditionalServices({
    super.key,
    required this.travelData,
    required this.onSetVehicles,
    required this.onSetMeals,
    required this.onSetOtherServices,
  });

  @override
  State<AdditionalServices> createState() => _AdditionalServicesState();
}

class _AdditionalServicesState extends State<AdditionalServices> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Heading(
            text: "Additional services",
            fontSize: 18,
          ),
          const SizedBox(height: 12),
          RaidOption(
            vehicleData: widget.travelData.vehicleData,
            onSetVehicles: widget.onSetVehicles,
          ),
          const SizedBox(height: 16),
          const DashedDivider(
            color: Color(0xFFD1D0DD),
          ),
          const SizedBox(height: 16),
          MealsSection(
            data: widget.travelData.mealsData,
            onSetMeals: widget.onSetMeals,
          ),
          const SizedBox(height: 16),
          const DashedDivider(
            color: Color(0xFFD1D0DD),
          ),
          const SizedBox(height: 16),
          OtherServicesPage(
            data: widget.travelData.otherServices,
            onSetOtherServices: widget.onSetOtherServices,
          ),
          const SizedBox(height: 16),
          const DashedDivider(
            color: Color(0xFFD1D0DD),
          ),
        ],
      ),
    );
  }
}