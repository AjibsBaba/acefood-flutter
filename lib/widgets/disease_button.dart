import 'package:flutter/material.dart';

class DiseaseButton extends StatelessWidget {
  final String diseaseName;
  final String confidenceLevel;

  const DiseaseButton(this.diseaseName, this.confidenceLevel, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.white,
      minWidth: double.infinity,
      height: 70,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Tomato',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                ),
                Text(
                  diseaseName,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.normal),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  confidenceLevel,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.normal),
                ),
                Text(
                  diseaseName,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
