import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Contact',
              style: GoogleFonts.montserratAlternates(
                  fontSize: 90,
                  fontWeight: FontWeight.bold
              ) ,
            ),
          ),
        )
    );
  }
}
