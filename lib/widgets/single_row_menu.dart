import 'package:f_share/utils/colors.dart';
import 'package:f_share/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SingleRowMenu extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final String text;
  const SingleRowMenu(
      {Key? key, this.onTap, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(50)),
            child: Icon(
              icon,
              color: ThemeColor.primaryColor,
            ),
          ),
        ),
        CustomText(
          text: text,
          color: Colors.grey,
          fontSize: 16,
        ),
      ],
    );
  }
}
