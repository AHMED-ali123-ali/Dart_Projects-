import 'dart:io';

import 'Employee.dart';


void showAllEmployees(List<Employee> employees){

for(var emp  in employees){
  emp .showEmployeeInfo();
}
}



void searchEmployeeById(List<Employee> employees, String id) {
  for (var emp in employees) {
    if (emp.getId() == id) {
      print('Employee Found');
      emp.showEmployeeInfo();
      return;
    }
  }

  print('Employee Not Found');
}




main(){
List<Employee> employees = [];
print('How many employees do you want to add?');
int numbers =int.parse(stdin.readLineSync()!);


for(int i =0 ;i<numbers;i++){

print('========== Employee ${i+1} ==========');

 print('Enter Your Id :');
String id =stdin.readLineSync()!;

print('Enter Your Name ::');
String name =stdin.readLineSync()!;

print('Enter Your Age ::');
int age =int.parse(stdin.readLineSync()!);

print('Enter Your Salary ::');
double salary=double.parse(stdin.readLineSync()!);

print('Enter Your Position');
String position=stdin.readLineSync()!;

print('Enter Your Department');
String department=stdin.readLineSync()!;

print('Enter Your Email');
String email=stdin.readLineSync()!;

print('Enter Your Phone');
int phone =int.parse(stdin.readLineSync()!);

print('Is Employee Working? (true/false)');
bool work = bool.parse(stdin.readLineSync()!);
Employee employee =Employee(id:id, name:name, age:age, salary:salary, position:position, department: department, email: email, phone: phone, isWorking:work);
employees.add(employee);
}
showAllEmployees(employees);
print('Enter Employee ID to search:');
String searchId = stdin.readLineSync()!;

searchEmployeeById(employees, searchId);

}

