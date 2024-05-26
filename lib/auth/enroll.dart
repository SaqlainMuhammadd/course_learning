import 'package:course_learning/auth/login.dart';
import 'package:flutter/material.dart';

class EnrollmentForm extends StatefulWidget {
  @override
  _EnrollmentFormState createState() => _EnrollmentFormState();
}

class _EnrollmentFormState extends State<EnrollmentForm> {
  final _formKey = GlobalKey<FormState>();
  String? fullName;
  String? email;
  String? phoneNumber;
  DateTime? dateOfBirth;
  String? gender;
  String? education;
  String? occupation;
  String? courseSelection;
  String? learningMode;
  String? learningObjectives;
  String? paymentMethod;
  String? billingAddress;
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Enrollment Form',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                onSaved: (value) => fullName = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => email = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.phone,
                onSaved: (value) => phoneNumber = value,
              ),
              SizedBox(
                height: 10,
              ),
              // TextFormField(
              //   decoration: InputDecoration(
              //       labelText: 'Date of Birth',
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(15))),
              //   keyboardType: TextInputType.datetime,
              //   onSaved: (value) {
              //     if (value != null) {
              //       dateOfBirth = DateTime.parse(value);
              //     }
              //   },
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                items: ['Male', 'Female', 'Other']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
                onSaved: (value) => gender = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Highest Level of Education',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                onSaved: (value) => education = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Current Occupation',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                onSaved: (value) => occupation = value,
              ),
              SizedBox(
                height: 10,
              ),
              // DropdownButtonFormField<String>(
              //   decoration: InputDecoration(
              //       labelText: 'Course Selection',
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(15))),
              //   items: ['HTML', 'CSS', 'JavaScript']
              //       .map((label) => DropdownMenuItem(
              //             child: Text(label),
              //             value: label,
              //           ))
              //       .toList(),
              //   onChanged: (value) {
              //     setState(() {
              //       courseSelection = value;
              //     });
              //   },
              //   onSaved: (value) => courseSelection = value,
              // ),
              SizedBox(
                height: 10,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    labelText: 'Preferred Mode of Learning',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                items: ['Online', 'In-person', 'Hybrid']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    learningMode = value;
                  });
                },
                onSaved: (value) => learningMode = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Learning Objectives',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                onSaved: (value) => learningObjectives = value,
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                title: Text('I agree to the terms and conditions'),
                value: agreeToTerms,
                onChanged: (bool? value) {
                  setState(() {
                    agreeToTerms = value ?? false;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: EnrollmentForm()));
