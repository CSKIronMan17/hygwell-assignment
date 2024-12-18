import 'package:travelappassign/core/mealsdata.dart';
import 'package:travelappassign/core/servicedata.dart';
import 'package:travelappassign/core/vehicledata.dart';

class FetchServiceData {
  static ServiceData data = ServiceData(
      name: "Assam Travel Service",
      description:
          "This hotel features air-conditioned cabins, plush seating, and an onboard dining area serving delicious local cuisine.",
      date: "Wed, Jun20 - 2 Passengers",
      amenities: [
        "Clean Restrooms",
        "Comfortable Sitting arrangements",
        "Onboarding Dining"
      ],
      safetyFeatures: [
        "Live jackets provided to all passengers.",
        "Emergency medical kit onboard.",
      ],
      isSpecialNotesAvailable: true,
      imagePaths: [
        "assets/images/image0.png",
        "assets/images/image1.png",
        "assets/images/image2.png",
        ],
      specialNots: [
        "Please arrive 30 minutes before departure.",
        "Carry a valid ID for verification.",
      ],
      meals: "Veg/Non veg",
      vehicleData: [
        VehicleData(
          vehicleName: "Private Car",
          vehicleType: "4 Seater",
          rent: 500,
          rentIcon: "rupee",
        ),
        VehicleData(
          vehicleName: "Private Car",
          vehicleType: "7 Seater",
          rent: 500,
          rentIcon: "rupee",
        ),
        VehicleData(
          vehicleName: "Shared rides",
          vehicleType: "",
          rent: 500,
          rentIcon: "rupee",
        ),
      ],
      mealsData: [
        MealsData(
          mealsName: "Breakfast & Snacks",
          price: 500,
          priceIcon: "rupee",
        ),
        MealsData(
          mealsName: "Pure Veg Lunch",
          price: 500,
          priceIcon: "rupee",
        ),
        MealsData(
          mealsName: "Non Veg Lunch",
          price: 500,
          priceIcon: "rupee",
        ),
      ],
      otherServices: [
        OtherServices(
            serviceName: "Tour Guid", price: 1500, priceIcon: "rupee"),
      ]);
}