class Employee {
  String? _id;
  String? _employeeName;
  int? _employeeAge;
  double? _employeeSalary;
  String? _employeePosition;
  String? _employeeDepartment;
  String? _employeeEmail;
  int? _employeePhone;
  bool? _isWorking;

  Employee({
    required String id,
    required String name,
    required age,
    required double salary,
    required String position,
    required String department,
    required String email,
    required int phone,
    required bool isWorking,
  }) {

 setId(id);
 setEmployeeName(name);
 setEmployeeAge(age);
setEmployeeSalary(salary);
setEmployeePosition(position);
setEmployeeDepartment(department);
setEmployeeEmail(email);
setEmployeePhone(phone);
setIsWorking(isWorking);
  }

  void setId(String id) {
    this._id = id;
  }

  String getId() {
    return _id!;
  }

  void setEmployeeName(String name) {
    this._employeeName = name;
  }

  String getEmployeeName() {
    return _employeeName!;
  }

  void setEmployeeAge(int age) {
    this._employeeAge = age;
  }

  int getEmployeeAge() {
    return _employeeAge!;
  }

  void setEmployeeSalary(double salary) {
    this._employeeSalary = salary;
  }

  double getEmployeeSalary() {
    return _employeeSalary!;
  }

  void setEmployeePosition(String position) {
    this._employeePosition = position;
  }

  String getEmployeePosition() {
    return _employeePosition!;
  }

  void setEmployeeDepartment(String department) {
    this._employeeDepartment = department;
  }

  String getEmployeeDepartment() {
    return _employeeDepartment!;
  }

  void setEmployeeEmail(String email) {
    this._employeeEmail = email;
  }

  String getEmployeeEmail() {
    return _employeeEmail!;
  }

  void setEmployeePhone(int phone) {
    this._employeePhone = phone;
  }

  int getEmployeePhone() {
    return _employeePhone!;
  }

  void setIsWorking(bool isWorking) {
    this._isWorking = isWorking;
  }

  bool getIsWorking() {
    return _isWorking!;
  }

// methoed //

void showEmployeeInfo(){
print('ID : ${getId()}');
print('Name : ${getEmployeeName()}');
print('Age : ${getEmployeeAge()}');
print('Salary : ${getEmployeeSalary()}');
print('Position : ${getEmployeePosition()}');
print('Department :${getEmployeeDepartment()}');
print('Email : ${getEmployeeEmail()}');
print('Phone : ${getEmployeePhone()}');
print('Working : ${getIsWorking()}');
print('==============================');
}
// زياده المرتب //
double increaseSalary({required double increaseSalary}) {
  if (increaseSalary <= 0) {
    print('Invalid amount');
    return getEmployeeSalary();
  } else {
    double currentSalary = getEmployeeSalary();

    double newSalary = currentSalary + increaseSalary;

    setEmployeeSalary(newSalary);

    print('Salary updated successfully');
    print('New Salary = $newSalary');

    return newSalary;
  }
}

// خصم المرتب //
double deductSalary({required double deductSalary }){

 if(deductSalary<=0){
  print('Invalid amount');
  return getEmployeeSalary();
 } 
 
 else if(deductSalary>getEmployeeSalary()){
 print('Cannot deduct more than the current salary');
 return getEmployeeSalary();
 }
else{
double newSalaryAfterdeduct =getEmployeeSalary()-deductSalary;
setEmployeeSalary(newSalaryAfterdeduct);
print('NewSalaryAfterDeduct : $newSalaryAfterdeduct');
return newSalaryAfterdeduct;
}}
// تعديل القسم //
String changeDepartment({required String newDepartment}){
if(newDepartment==getEmployeeDepartment()){
  print('Department already selected');
  return getEmployeeDepartment();
}  

else{
  setEmployeeDepartment(newDepartment);
  print('Department changed successfully');
  return getEmployeeDepartment();
}}


// تغير الوضع
String changePosition( {required String newPosition}){


if(newPosition==getEmployeePosition()){
  print('Position already selected');
  return getEmployeePosition();
}

else{
  setEmployeePosition(newPosition);
  print('Position changed successfully');
  return getEmployeePosition();
}}

// تغير الهاتف //
int updatePhone({required int newPhone}){

if(newPhone!=11){
  print('Invalid phone number');
  return getEmployeePhone();
}

else if (newPhone==getEmployeePhone()){
  print('This is already your current phone number');
  return getEmployeePhone();
}

else{
  setEmployeePhone(newPhone);
  print('Phone number updated successfully');
  return getEmployeePhone();
}


}


// تعديل الايمل //
String updateEmail({required String newEmail}){
if(!newEmail.contains('@')){
  print('Invalid email');
  return getEmployeeEmail();
}
else if(newEmail==getEmployeeEmail()){
  print('This is already your current email');
  return getEmployeeEmail();
}
else{
  setEmployeeEmail(newEmail);
  print('Email updated successfully');
  return getEmployeeEmail();
}




}


bool resign(){
if(getIsWorking()==true){
  setIsWorking(false);
  print('Employee resigned successfully');
  return getIsWorking();
}

else{
  print('Employee already resigned');
  return getIsWorking();
}}

bool returnToWork(){

if(getIsWorking()==false){
  setIsWorking(true);
  print('Employee returned to work successfully');
  return getIsWorking();
}
else{
  print('Employee is already working');
  return getIsWorking();
}}

}