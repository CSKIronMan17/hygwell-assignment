import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelappassign/views/available/components/cardtext.dart';
import 'package:travelappassign/views/available/components/carousel.dart';

class DisplayCard extends StatefulWidget {
  final List<String> images;
  //final bool isNetworkImage;
  const DisplayCard({super.key, required this.images, /*this.isNetworkImage = true*/});

  @override
  State<DisplayCard> createState() => _DisplayCardState();
}

class _DisplayCardState extends State<DisplayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ensure PageView.builder has the correct itemCount
          if (widget.images.isNotEmpty)
            ImageCarousel(
              images: widget.images, header: null, borderRadius: 8,

              // header: Positioned(
              //   top: 12,
              //   right: 12,
              //   child: Container(
              //     height: 30,
              //     width: 100,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(16),
              //       color: Colors.white,
              //     ),
              //     child: const Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(Icons.person, size: 15),
              //           SizedBox(width: 8),
              //           Text(
              //             "40 seats",
              //             style: TextStyle(
              //               fontFamily: "Montserrat",
              //               fontSize: 12,
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //         ]),
              //   ),
              // ),
            )
          else
            const Text('No images available'),
          const DisplayCardText(
            serviceName: "Assam Travel Service",
            serviceDescription: "Trip start by 7:10 AM from Hills & journey ends by around 1:00 PM",
            serviceRent: "1500",
          )
        ],
      ),
    );
  }
}