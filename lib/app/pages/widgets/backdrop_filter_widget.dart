import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackDropFilterWidget extends StatelessWidget {
  const BackDropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Flexible(child: Container(color: Colors.amber)),
                Flexible(child: Container(color: Colors.red)),
                Flexible(child: Container(color: Colors.green)),
              ],
            ),
            Center(
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: 200,
                    height: 300,
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
