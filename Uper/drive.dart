import 'dart:io';

import 'ride-operations.dart';

class Drive implements RideOperations {

String? driveName;
int? driverid;
String? carModel;
int? carNumber;
String? currentLocation;
bool? isAvailable;
int? tripPrice;
bool? tripStarted;
bool? rideRequested;

Drive(this.driveName,this.driverid,this.carModel,this.carNumber,this.currentLocation,this.isAvailable,this.tripPrice,this.tripStarted,this.rideRequested){}

  @override
@override
void cancelRide() {
  if (rideRequested == false) {
    print('No Ride To Cancel');
  } else if (tripStarted == true) {
    print('Cannot cancel a started ride.');
  } else {
    rideRequested = false;
    isAvailable = true;
    print('Ride Cancelled Successfully');
  }
}

  @override
  void endRide() {
  if(tripStarted==true){
    tripStarted=false;
    isAvailable=true;
    rideRequested=false;
    print('Ride Completed Successfully');
    showDriverDetails();
    print('Status : Available');
  }
  else{
    print('No Trip To End');
  }
  }
// عايز عربيه //
  @override
  void requestRide() {
    if(isAvailable==true){
      isAvailable=false;
      tripStarted=false;
      rideRequested = true;
      print('Ride Requested Successfully');
     showDriverDetails();
     

      
    }
    else{
      print('Driver is not available');
    }
  }

  @override
void showInfo() {
  print('====== Driver Info ======');
  print('Driver Name : $driveName');
  print('Driver ID : $driverid');
  print('Car Model : $carModel');
  print('Car Number : $carNumber');
  print('Current Location : $currentLocation');
  print('Available : $isAvailable');
  print('Trip Price : $tripPrice');

  if (rideRequested == false && tripStarted == false) {
    print('Trip Status : No Ride Requested');
  } 
  else if (rideRequested == true && tripStarted == false) {
    print('Trip Status : Driver On The Way');
  } 
  else if (rideRequested == true && tripStarted == true) {
    print('Trip Status : Ride In Progress');
  }

  print('=========================');
}
@override
void startRide() {

  if (rideRequested == false) {
    print('Please request a ride first');
  }

  else if (tripStarted == true) {
    print('Ride already started');
  }

  else {
    tripStarted = true;
    print('Ride Started Successfully');
    showDriverDetails();
    print('Trip Status : Started');
  }

}
  
  void rateDriver(){

  if(tripStarted==false){
 print('Enter a rating from 1 to 5');
 int driveRating = int.parse(stdin.readLineSync()!);
 if(driveRating==1||driveRating==2||driveRating==3||driveRating==4||driveRating==5){
 print('Thanks for rating the driver ⭐');

 }
 else{
  print('Invalid Rating');
 }
  }
  else{
    print('Please finish the trip first');
  }

  }


  
  void showDriverDetails(){
      print('Drive Name : $driveName');
       print('Car Model : $carModel');
      print('CarNumber : $carNumber');
      print('Price : $tripPrice');
  }

}