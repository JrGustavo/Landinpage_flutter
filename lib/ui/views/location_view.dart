import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Location',
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
