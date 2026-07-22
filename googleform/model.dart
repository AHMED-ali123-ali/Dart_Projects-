/*class RegistrationForm{

String? fullName;
int? age;
String? email;
String? phoneNumber;
String? country;
String? gender;
bool? isStudent;
bool? isSubmitted;


RegistrationForm(String fullName,
int age,
String email,
String phoneNumber,
String country,
String gender,
bool isStudent,
bool isSubmitted,
)
{
  this.fullName=fullName;
  this.age=age;
  this.email=email;
  this.phoneNumber=phoneNumber;
  this.country=country;
  this.gender=gender;
  this.isStudent=isStudent;
  this.isSubmitted=isSubmitted;
}

void showInfo(){
print('===== Registration Form =====');
print('Name : $fullName');
print('Age : $age');
print('Email : $email');
print('Phone : $phoneNumber');
print('Country : $country');
print('Gender : $gender');
print('Student : $isStudent');
print('Submitted : $isSubmitted');
}

bool validateData() {
  if (fullName!.isEmpty) {
    print('Name is required');
    return false;
  } 
  else if (age! < 18) {
    print('Age must be at least 18');
    return false;
  } 
  else if (!email!.contains('@')) {
    print('Invalid Email');
    return false;
  } 
  else if (phoneNumber!.length != 11) {
    print('Invalid Phone Number');
    return false;
  } 
  else {
    return true;
  }
}


void submitForm() {
  if (isSubmitted!) {
    print('Form Already Submitted');
  } 
  else if (validateData()) {
    print('Form Submitted Successfully');
    isSubmitted = true;
  } 
  else {
    print('Cannot Submit Form');
  }
}


void updataPhone(String newphoneNumber){

if(newphoneNumber.length != 11){
  print('Invalid Phone Number');
}

else if(newphoneNumber==phoneNumber){
  print('This is already your current phone number.');
}
else{
  this.phoneNumber=newphoneNumber;
  print('Phone number updated successfully');
}}

void changeCountry(String newCountry){
  if(newCountry==country){
    print('Country is already selected');
  }
  else{
    this.country=newCountry;
    print('Country updated successfully');
  }



}

void toggleStudentStatus() {
  if (isStudent == true) {
    isStudent = false;
    print('Student status changed to Non-Student');
  } else {
    isStudent = true;
    print('Student status changed to Student');
  }
}

}
*/







