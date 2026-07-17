// المريض 

import 'Person.dart';
import 'hospital_operations.dart';

class Patient extends Person implements HospitalOperations{
int? _patientId; // رقم المريض //
String? _disease; // المرض نفسه //
int? _roomNumber; // رقم الغرفه //
bool? _isAdmitted; //هل المريض موجود في المستشفي //

Patient(String name ,int age,this._patientId,this._disease,this._roomNumber){
setName(name);
setAge(age);  
_isAdmitted=false;
}

void setPatientId(int patientId){
  if(patientId<=0){
    print('Invalid Patient ID');
  }
  else{
    this._patientId=patientId;
  }
}

int getPatienId(){
  return _patientId!;
}

void setDisesse(String disease){
  if(disease.isEmpty){
    print('Invalid Disease');
  }
  else{
    this._disease=disease;
  }
}
String getDisesse(){
  return _disease!;
}

void setRoomNumber(int roomNumber){
if(roomNumber<=0){
  print('Invalid Room Number');
}
else{
this._roomNumber=roomNumber;
}}

int getRoomNumber(){
  return _roomNumber!;
}

void setAdmitted(bool isAdmitted){
  this._isAdmitted=isAdmitted;
}

bool getAdmitted(){
  return _isAdmitted!;
}

  @override
  void admitPatient() {
    if(getAdmitted()==true){
      print('Patient Already Admitted');
    }
    else{
       setAdmitted(true);
      print('Patient Admitted Successfully');
    }
  }

  @override
  void dischargePatient() {
    if(getAdmitted()==false){
      print('Patient Is Not Admitted');
    }
    else{
      setAdmitted(false);
      print('Patient Discharged Successfully');
    }
  }

  @override
  void showInfo() {
    print('Name : ${getName()}');
    print('Age : ${getAge()}');
    print('Patient ID : ${getPatienId()}');
    print('Disease : ${getDisesse()}');
    print('Room Number : ${getRoomNumber()}');
    if(getAdmitted()==true){
      print('Status : Admitted');
    }
    else{
      print('Status : Not Admitted');
    }
  }

 
  
  }