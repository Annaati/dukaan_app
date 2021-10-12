import 'package:dukaan_app/views/views.dart';
import 'package:flutter/material.dart';

void main() => runApp(DukaanApp());

class DukaanApp extends StatelessWidget {
  const DukaanApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}