//import 'dart:html';

import 'package:dukaan_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          'Register ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'Fill Required Fields',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'UserName is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Mobile is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.call),
                    hintText: 'Mobile',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                           content: Text('Ready to Register'),
                           
                         )
                        );
                    }
                  },
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('already have an account ?'),
                  ),
                  TextButton(
                    onPressed: () {
                      //Get.to(() => LoginView());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return LoginView();
                        }),
                      );
                    },
                    child: Text('Login'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
