import 'package:flutter/material.dart';

class SectionContent extends StatelessWidget {
  final String heading;
  final String content;

  SectionContent(
    this.heading,
    this.content, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              heading,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(
              content,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Divider(
          height: 2,
          color: Colors.grey[200],
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
