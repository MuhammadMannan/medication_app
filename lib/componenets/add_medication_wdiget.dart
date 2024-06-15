import 'package:flutter/material.dart';

class add_medication_widget extends StatefulWidget {
  const add_medication_widget({
    super.key,
  });

  @override
  State<add_medication_widget> createState() => _add_medication_widgetState();
}

class _add_medication_widgetState extends State<add_medication_widget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      elevation: 1,
      child: Container(
        width: 115,
        height: 118,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Still missing something?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black,
              ),
              width: 87.44,
              height: 44.25,
              child: Center(
                child: Text(
                  'Add\n medication',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
