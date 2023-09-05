class Booking {
  int _gardenArea;
  int _numberOfWeeks;
  int _rooms;
  String _address;
  String _bookingDate;
  String _bookingID;
  String _contactNumber;
  String _propertyOwnerName;

  Booking(this._gardenArea, this._numberOfWeeks, this._rooms, this._address, this._bookingDate, this._bookingID,
      this._contactNumber, this._propertyOwnerName);

  int get gardenArea => this._gardenArea;
  void set gardenArea(int gardenArea) => this._gardenArea = gardenArea;

  int get gardenAreaCost => (this._gardenArea * 2);

  int get numberOfWeeks => this._numberOfWeeks;
  void set numberOfWeeks(int numberOfWeeks) => this._numberOfWeeks = numberOfWeeks;

  int get rooms => this._rooms;
  void set rooms(int rooms) => this._rooms = rooms;

  int get roomsCost => (this._rooms * 5);

  String get address => this._address;
  void set address(String address) => this._address = address;

  String get bookingDate => this._bookingDate;
  void set bookingDate(String bookingDate) => this._bookingDate = bookingDate;

  String get bookingID => this._bookingID;
  void set bookingID(String bookingID) => this._bookingID = bookingID;

  String get contactNumber => this._contactNumber;
  void set contactNumber(String contactNumber) => this._contactNumber = contactNumber;

  String get propertyOwnerName => this._propertyOwnerName;
  void set propertyOwnerName(String propertyOwnerName) => this._propertyOwnerName = propertyOwnerName;

  int getBookingCost() => this.gardenAreaCost + this.roomsCost;

  @override
  String toString() =>
      'Garden Area: ${this.gardenArea} : \$${this.gardenAreaCost}, ${this.rooms} : \$${this.roomsCost}, Weeks: ${this.numberOfWeeks}, Address: ${this.address}, Booking: ${this.bookingID} : ${this.bookingDate}, Contact Number: ${this.contactNumber}, Owner: ${this.propertyOwnerName}\nBooking Cost: \$${this.getBookingCost()}';
}

class Luxury extends Booking {
  bool _securityAlarmCheck;
  bool _poolMaintenance;

  Luxury(super._gardenArea, super._numberOfWeeks, super._rooms, super._address, super._bookingDate, super._bookingID,
      super._contactNumber, super._propertyOwnerName, this._securityAlarmCheck, this._poolMaintenance);

  bool get securityAlarmCheck => this._securityAlarmCheck;
  void set securityAlarmCheck(bool securityAlarmCheck) => this._securityAlarmCheck = securityAlarmCheck;

  bool get poolMaintenance => this._poolMaintenance;
  void set poolMaintenance(bool poolMaintenance) => this._poolMaintenance = poolMaintenance;

  int getLuxuryCost() {
    int output = 0;
    if (this._securityAlarmCheck) {
      output += 50;
    }
    if (this._poolMaintenance) {
      output += 50;
    }
    return output;
  }

  int getTotalCost() => (getLuxuryCost() + super.gardenAreaCost + super.roomsCost);

  @override
  String toString() =>
      '${super.toString()}, Luxuries: ${this.securityAlarmCheck} : ${this.poolMaintenance} : \$${this.getLuxuryCost()}\nTotal Cost: \$${getTotalCost()}';
}
