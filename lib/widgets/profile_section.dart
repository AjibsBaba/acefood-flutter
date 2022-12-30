import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  final String header;
  final String description;
  final String routeUrl;

  ProfileSection(this.header, this.description, this.routeUrl);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(routeUrl);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
              Text(
                description,
                style: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
