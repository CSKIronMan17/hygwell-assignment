import 'package:flutter/material.dart';
import 'package:travelappassign/components/dasheddivider.dart';
import 'package:travelappassign/components/heading.dart';
import 'package:travelappassign/components/roundedrectbutton.dart';
import 'package:travelappassign/controller/fetchservice.dart';
import 'package:travelappassign/views/add-ons/addonspage.dart';
import 'package:travelappassign/views/passenger-detail/components/subform.dart';

class PassengerDetailsFrom extends StatefulWidget {
  const PassengerDetailsFrom({
    super.key,
  });

  @override
  State<PassengerDetailsFrom> createState() => _PassengerDetailsFromState();
}

class _PassengerDetailsFromState extends State<PassengerDetailsFrom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: const Color(0xFFE8E7EE)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Heading(text: "Passenger Details"),
            const SizedBox(height: 14),
            const SubForm(
              headerFontSize: 14,
              headerFontWeight: FontWeight.w600,
              headerText: "Passenger 1",
            ),
            const DashedDivider(color: Color(0xFFD1D0DD)),
            const SizedBox(height: 20),
            const SubForm(
              headerFontSize: 14,
              headerFontWeight: FontWeight.w600,
              headerText: "Passenger 2",
            ),
            const SizedBox(height: 40),
            Center(
              child: RoundedRectangularButton(
                onPressed: () {
                  print("Continue to Main addons");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AddOnsMain(travelData: FetchServiceData.data),
                    ),
                  );
                },
                text: "Continue",
                buttonColor: const Color(0xFFFDD951),
                backgroundColor: const Color(0xFFFDD951),
                verticalTextPadding: 14,
                horizontalTextPadding: 55,
              ),
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}