// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class streak_widget extends StatefulWidget {
  const streak_widget({
    super.key,
  });

  @override
  State<streak_widget> createState() => _streak_widgetState();
}

class _streak_widgetState extends State<streak_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 156,
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 167, 197, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Message to user which shows days
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Keep it Up!',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(fontSize: 22),
                    ),
                    Text(
                      'You havent missed a single\nmedication. Well done!',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(fontSize: 10),
                    ),
                    //Amount of days message
                    Row(
                      children: [
                        Text(
                          '7',
                          style: GoogleFonts.inter(fontSize: 40),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Days',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(fontSize: 16),
                        )
                      ],
                    )
                  ],
                )
              ],
            ), //image of cat
            Column(
              children: [
                SizedBox(
                  height: 120,
                  child: Image.asset(
                    'assets/images/Dayflow_Black_Cat.png',
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
