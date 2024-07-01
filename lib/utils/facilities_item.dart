import 'package:flutter/material.dart';

class FacilitiesItem extends StatelessWidget {
  const FacilitiesItem({
    super.key,
    required this.iconData,
    required this.text,
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, top: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              size: 18,
            ),
            const SizedBox(width: 10),
            Text(text)
          ],
        ),
      ),
    );
  }
}
