class Booking {
  int gardenArea;
  int numberOfWeeks;
  int rooms;
  String address;
  String bookingDate;
  String bookingID;
  String contactNumber;
  String propertyOwnerName;

  Booking({
    required this.gardenArea,
    required this.numberOfWeeks,
    required this.rooms,
    required this.address,
    required this.bookingDate,
    required this.bookingID,
    required this.contactNumber,
    required this.propertyOwnerName,
  });

  int get gardenAreaCost => this.gardenArea * 2;
  int get roomsCost => this.rooms * 5;
  int get totalCost => this.gardenAreaCost + this.roomsCost;

  @override
  String toString() =>
      'Garden Area: ${this.gardenArea} : \$${this.gardenAreaCost}, ${this.rooms} : \$${this.roomsCost}, Weeks: ${this.numberOfWeeks}, Address: ${this.address}, Booking: ${this.bookingID} : ${this.bookingDate}, Contact Number: ${this.contactNumber}, Owner: ${this.propertyOwnerName}\nBooking Cost: \$${this.totalCost}';
}

class Luxury extends Booking {
  bool securityAlarmCheck;
  bool poolMaintenance;

  Luxury({
    required super.gardenArea,
    required super.numberOfWeeks,
    required super.rooms,
    required super.address,
    required super.bookingDate,
    required super.bookingID,
    required super.contactNumber,
    required super.propertyOwnerName,
    required this.securityAlarmCheck,
    required this.poolMaintenance,
  });

  int get luxuryCost {
    int output = 0;
    output += this.securityAlarmCheck ? 50 : 0;
    output += this.poolMaintenance ? 50 : 0;
    return output;
  }

  int get totalCost => super.totalCost + this.luxuryCost;

  @override
  String toString() =>
      '${super.toString()}, Luxuries: ${this.securityAlarmCheck} : ${this.poolMaintenance} : \$${this.luxuryCost}\nTotal Cost: \$${this.totalCost}';
}
