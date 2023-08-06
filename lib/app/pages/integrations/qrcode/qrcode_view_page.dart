import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeViewPage extends StatelessWidget {
  final String data;

  const QrCodeViewPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "data: ${data}",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: QrImageView(
                  data: data,
                  version: QrVersions.auto,
                  backgroundColor: Colors.red.shade100,
                  size: 350.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Save to gallery"),
                ),
                SizedBox(width: 10),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text("Back"),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
