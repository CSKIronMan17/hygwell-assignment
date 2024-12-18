import 'package:flutter/material.dart';
import 'package:travelappassign/components/iconbutton.dart';
import 'package:travelappassign/components/roundedrectbutton.dart';
import 'package:travelappassign/controller/fetchservice.dart';

import 'package:travelappassign/views/available/components/display.dart';
import 'package:travelappassign/views/available/components/header.dart';
import 'package:travelappassign/views/info/info.dart';

// DISPLAYS THE AVAILABLE BOATS FOR BOOKING AND RENTS
class AvailableServicePage extends StatefulWidget {
  const AvailableServicePage({super.key});

  @override
  State<AvailableServicePage> createState() => _AvailableServicePageState();
}

class _AvailableServicePageState extends State<AvailableServicePage> {
  final List<String> imagePaths = [
    "assets/images/image0.png",
    "assets/images/image1.png",
    "assets/images/image2.png",
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blueAccent,
        title: const HeaderAvailable(),
        leading: Container(
          constraints: const BoxConstraints(maxHeight: 32, maxWidth: 32),
          child: CustomIconButton(
            iconData: Icons.arrow_back_ios_new,
            onPressed: () => print("Back from available page"),
            iconSize: 16,
            iconColor: Colors.white,
            backgroundHeight: 32,
            backgroundWith: 32,
            backgroundColor: Colors.transparent,
          ),
        ),
        actions: [
          RoundedRectangularButton(
            onPressed: () => print("Modify"),
            text: "Modify",
            buttonColor: Colors.white,
          ),
          const SizedBox(
            width: 25,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          header,
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => InfoPage(
                    backWidget: const AvailableServicePage(),
                    serviceData: FetchServiceData.data,
                  ),
                ),
              ),
              child: DisplayCard(
                images: imagePaths,
                //isNetworkImage: false,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: DisplayCard(
              images: imagePaths,
              //isNetworkImage: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: DisplayCard(
              images: imagePaths,
              //isNetworkImage: false,
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget header = Material(
    elevation: 2,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    child: Container(
      height: 48,
      margin: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Showing available boats",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}