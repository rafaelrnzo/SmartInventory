import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inventory/Page/main/dashboard/dashboard.dart';
import 'package:flutter_inventory/global/color.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 42.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to Mechaventory",
            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Sign in your account",
            style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}

class TextInputLogin extends StatelessWidget {
  const TextInputLogin({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        TextField(
          decoration: InputDecoration(
            iconColor: yellow,
            filled: true,
            fillColor: base10,
            hintText: 'Username...',
            prefixIcon: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                color: base,
                height: width * 0.15,
                width: width * 0.16,
                child: Icon(
                  Icons.person_rounded,
                  color: yellow,
                  size: 32,
                ),
              ),
            ),
          ),
        ),
        const Divider(
          color: Colors.transparent,
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            iconColor: yellow,
            filled: true,
            fillColor: base10,
            hintText: 'Password...',
            prefixIcon: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                color: base,
                height: width * 0.15,
                width: width * 0.16,
                child: Icon(
                  Icons.lock_rounded,
                  color: yellow,
                  size: 32,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: base,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const DashboardPage()));
        },
        child: Center(
            child: Text(
          "Next",
          style: GoogleFonts.inter(
              fontSize: 20, fontWeight: FontWeight.bold, color: yellow),
        )),
      ),
    );
  }
}
