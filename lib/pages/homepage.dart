import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../componenets/add_medication_wdiget.dart';
import '../componenets/medication_widget.dart';
import '../componenets/streak_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Good morning text with user's name
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  'Good morning John',
                  style: GoogleFonts.inter(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            //Streak card which shows how long a user has had their medication streak going
            const Center(
              child: streak_widget(),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Today\'s medication',
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Stack(children: <Widget>[
                  MedicationWidget(),
                  MedicationWidget(),
                  MedicationWidget(),
                ]),
                add_medication_widget(),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Additional Supplements',
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                width: double.infinity,
                height: 59,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.medication),
                      ),
                      Column(
                        children: [
                          Text('Omega 3'),
                          Row(
                            children: [Text("8:30 PM"), Text("After Eating")],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
