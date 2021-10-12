import 'package:dukaan_app/views/views.dart';
import 'package:dukaan_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: Text('Dukaan App'),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to Dukaan App',
                          style: GoogleFonts.poppins(
                            color: Colors.black87,
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Dear Customer',
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).primaryColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'UserName is required';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Input UserName',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password is required';
                              } else {
                                return null;
                              }
                            },
                            obscureText: _hidePassword,
                            decoration: InputDecoration(
                              suffix: GestureDetector(
                                child: Icon(_hidePassword
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onTap: () => setState(
                                    () => _hidePassword = !_hidePassword),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Input Password',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Ready to Login'),
                              ));
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) {
                                return HomeView();
                              }),
                            );
                          },
                          child: Text(
                            'Login',
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
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          'or Login with',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIconButton(
                            icon: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.deepOrange,
                            ),
                            onpressed: () {},
                          ),
                          const SizedBox(width: 10),
                          SocialIconButton(
                            icon: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SocialIconButton(
                            icon: Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                            ),
                            onpressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Don\'t have an Account?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) {
                                  return SignUpView();
                                }),
                              );
                            },
                            child: Text('Create Now'),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
