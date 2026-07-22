class Car {
  String? ownerName;
  int? carNumber;
  String? carType;
  String? carColor;
  int? parkingHours;
  double? hourlyRate;
  bool? isParked;
  bool? isPaid;

  Car({
    required String ownerName,
    required int carNumber,
    required String carType,
    required String carColor,
    required int parkingHours,
    required double hourlyRate,
    required bool isParked,
    required bool isPaid,
  }) {
    this.ownerName = ownerName;
    this.carNumber = carNumber;
    this.carType = carType;
    this.carColor = carColor;
    this.parkingHours = parkingHours;
    this.hourlyRate = hourlyRate;
    this.isParked = isParked;
    this.isPaid = isPaid;
  }

  void showInfo() {
    print('========== Car Information ==========');
    print('Owner Name    : $ownerName');
    print('Car Number    : $carNumber');
    print('Car Type      : $carType');
    print('Car Color     : $carColor');
    print('Parking Hours : $parkingHours');
    print('Hourly Rate   : $hourlyRate');
    print('Is Parked     : $isParked');
    print('Is Paid       : $isPaid');
    print('=====================================');
  }

  double calculateBill() {
    double bill = parkingHours! * hourlyRate!;
    print('Total Bill = $bill');
    return bill;
  }

  void payBill() {
    if (isParked == false) {
      print('Car is not in the garage.');
    } else if (isPaid == true) {
      print('Bill already paid.');
    } else {
      isPaid = true;
      print('Payment successful.');
    }
  }

  void addParkingHours({required int hours}) {
    if (isParked == false) {
      print('Car is not in the garage.');
    } else if (hours <= 0) {
      print('Invalid number of hours.');
    } else {
      parkingHours = parkingHours! + hours;
      print('$hours hour(s) added successfully.');
      print('Current Hours = $parkingHours');
    }
  }

  void exitGarage() {
    if (isParked == false) {
      print('Car is not in the garage.');
    } else if (isPaid == false) {
      print('Please pay the bill first.');
    } else {
      isParked = false;
      isPaid = false;
      parkingHours = 0;
      print('Car exited successfully.');
    }
  }
}

