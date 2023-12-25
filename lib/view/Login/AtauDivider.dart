import 'package:flutter/material.dart';

import '../../component/text_medium.dart';

class AtauDivider extends StatelessWidget {
  const AtauDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 10,
          ),
          child: TextMedium(
            text: 'atau',
            fontSize: 16,
            color: Colors.grey.shade500,
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
