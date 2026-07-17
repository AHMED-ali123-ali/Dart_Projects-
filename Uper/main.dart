import 'drive.dart';
main(){
Drive d1=Drive('Ahmed Ali',220220420, 'Toyota Corolla', 1234, 'Nasr City', true, 120, false, false);
d1.showInfo();
d1.requestRide();
d1.showInfo();
d1.startRide();
d1.showInfo();
d1.endRide();
d1.showInfo();
d1.rateDriver();
}