import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Pricing',
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
