import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HorizontalTileWidget extends StatelessWidget {
  final String title;
  final String lottie;

  const HorizontalTileWidget({
    super.key,
    required this.lottie,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              lottie,
              height: 30,
              width: 30,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
