import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:luzo_interview/core/services/my_snackbar.dart';

class VerticalTileWidget extends StatelessWidget {
  final String lottie;
  final String title;
  final int value;
  final bool canAdd;

  const VerticalTileWidget({
    super.key,
    required this.lottie,
    required this.title,
    required this.value,
    this.canAdd = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lottie.asset(
                lottie,
                height: 30,
                width: 30,
                repeat: false,
              ),
              SizedBox(height: 3),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1),
              Text(
                "From ₹ ${value.toString()}",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    MySnackbar.showSnackBar(context);
                  },
                  label: Text(
                    "ADD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: canAdd == true
                      ? Icon(
                          Icons.add,
                          color: Colors.blue,
                        )
                      : null,
                ),
              ),
              canAdd
                  ? Text(
                      "customisable",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
