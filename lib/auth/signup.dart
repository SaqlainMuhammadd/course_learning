import 'package:course_learning/auth/login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.teal, // Background color
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),
                  Container(
                    height: 135,
                    width: 300,
                    child: Image.asset(
                      'assets/authlogo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.person, color: Colors.teal),
                              hintText: 'Full Name',
                            ),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Colors.teal),
                              hintText: 'Email',
                            ),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone, color: Colors.teal),
                              hintText: 'Phone Number',
                            ),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.teal),
                              hintText: 'Password',
                            ),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.teal),
                              hintText: 'Confirm Password',
                            ),
                          ),
                          SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      // Navigate to the login page
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Already have an account? Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: SignUpPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    ));
