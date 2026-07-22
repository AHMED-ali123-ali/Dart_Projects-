import 'car.dart';

void main() {
  Car car = Car(
    ownerName: 'Ahmed Ali',
    carNumber: 212,
    carType: 'Mercedes',
    carColor: 'Black',
    parkingHours: 5,
    hourlyRate: 50,
    isParked: true,
    isPaid: false,
  );

  car.showInfo();

  print('\n----- Calculate Bill -----');
  car.calculateBill();

  print('\n----- Try Exit Before Payment -----');
  car.exitGarage();

  print('\n----- Pay Bill -----');
  car.payBill();

  print('\n----- Add Parking Hours -----');
  car.addParkingHours(hours: 2);

  print('\n----- Calculate Bill Again -----');
  car.calculateBill();

  print('\n----- Exit Garage -----');
  car.exitGarage();

  print('\n----- Final State -----');
  car.showInfo();
}