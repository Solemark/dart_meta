import 'package:web/web.dart';
import '../data/Booking.dart';

class GUI {
  List<Luxury> bookingList = [];
  HTMLInputElement gardenArea = HTMLInputElement();
  HTMLInputElement numberOfWeeks = HTMLInputElement();
  HTMLInputElement rooms = HTMLInputElement();
  HTMLInputElement address = HTMLInputElement();
  HTMLInputElement bookingDate = HTMLInputElement();
  HTMLInputElement bookingID = HTMLInputElement();
  HTMLInputElement contactNumber = HTMLInputElement();
  HTMLInputElement propertyOwnerName = HTMLInputElement();
  HTMLInputElement securityAlarmCheck = HTMLInputElement();
  HTMLInputElement poolMaintenance = HTMLInputElement();
  HTMLButtonElement submitButton = HTMLButtonElement();
  HTMLButtonElement searchButton = HTMLButtonElement();
  HTMLButtonElement updateButton = HTMLButtonElement();
  HTMLButtonElement removeButton = HTMLButtonElement();
  HTMLButtonElement clearButton = HTMLButtonElement();
  HTMLTextAreaElement displayArea = HTMLTextAreaElement();

  GUI() {
    this.securityAlarmCheck.setAttribute("type", "checkbox");
    this.poolMaintenance.setAttribute("type", "checkbox");
    this.gardenArea = document.querySelector('#gardenArea') as HTMLInputElement;
    this.numberOfWeeks = document.querySelector('#numberOfWeeks') as HTMLInputElement;
    this.rooms = document.querySelector('#rooms') as HTMLInputElement;
    this.address = document.querySelector('#address') as HTMLInputElement;
    this.bookingDate = document.querySelector('#bookingDate') as HTMLInputElement;
    this.bookingID = document.querySelector('#bookingID') as HTMLInputElement;
    this.contactNumber = document.querySelector('#contactNumber') as HTMLInputElement;
    this.propertyOwnerName = document.querySelector('#propertyOwnerName') as HTMLInputElement;
    this.securityAlarmCheck = document.querySelector('#securityAlarmCheck') as HTMLInputElement;
    this.poolMaintenance = document.querySelector('#poolMaintenance') as HTMLInputElement;
    this.submitButton = document.querySelector('#submit') as HTMLButtonElement;
    this.searchButton = document.querySelector('#search') as HTMLButtonElement;
    this.updateButton = document.querySelector('#update') as HTMLButtonElement;
    this.removeButton = document.querySelector('#remove') as HTMLButtonElement;
    this.clearButton = document.querySelector('#clear') as HTMLButtonElement;
    this.displayArea = document.querySelector('#displayArea') as HTMLTextAreaElement;
  }
}
