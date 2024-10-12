import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {

  final String path;

  const DefaultCard({super.key, required this.path,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(
            path,
          ),
        ),

      ],
    );
  }
}
