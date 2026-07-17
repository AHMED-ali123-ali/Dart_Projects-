/*import 'gym_operations.dart';
class Member implements GymOperations {
String? name;
int? id;
int? age;
String? membershipType;
int? attendanceCount;
Member(this.name,this.age,this.id,this.membershipType,this.attendanceCount){}

  @override
  void attend() {
    attendanceCount=attendanceCount!+1;
     print('Welcome $name\nAttendance : $attendanceCount');
    
  }

  @override
  void buyMembership() {
   if(membershipType!.toLowerCase()=='basic'){
    membershipType='Premium';
    print('Membership Updated Successfully\nCurrent Membership :$membershipType ');
   }
   else{
    print('You already have a $membershipType Membership');
   }
  }

  @override
  void showInfo() {
    print('Name : $name');
    print('ID : $id');
    print('Age : $age');
    print('MembrtShipType : $membershipType');
    print('Attendance : $attendanceCount');
  }


}*/