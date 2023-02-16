// ignore_for_file: unused_local_variable, unnecessary_import, implementation_imports, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_inventory/global/color.dart';
import 'package:flutter_inventory/widget/login/widgetLogin.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          margin: const EdgeInsets.all(16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: base,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              ),
            ),
            onPressed: () {},
            child:  Center(child: Text("Next",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold, color: yellow ),)),
          ),
        ),
        backgroundColor: white,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          // minimum: const EdgeInsets.all(16.00),
          child: Container(
            margin: const EdgeInsets.all(16.0),
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Expanded(
                  flex: 1,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: const TextLogin(),
                ),

                Expanded(flex: 2, child: TextInputLogin(width: width)),

                Expanded(
                  flex: 5,
                  child: Container(),
                ),
              ],
            ),
          ),
        ));
  }
}
