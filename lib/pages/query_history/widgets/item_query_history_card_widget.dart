import 'package:flutter/material.dart';

class ItemQueryHistoryCardWidget extends StatelessWidget {
  String dataHora;
  String local;
  String medico;

  ItemQueryHistoryCardWidget({this.dataHora, this.local, this.medico});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  Container(width: 70, child: Text('Data/hora:')),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    dataHora ?? "",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  Container(width: 70, child: Text('Local:')),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    local ?? "",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  Container(width: 70, child: Text('Médico:')),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    medico ?? "",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
