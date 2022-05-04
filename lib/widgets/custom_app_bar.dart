import 'package:f_share/utils/colors.dart';
import 'package:f_share/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? userName;
  const CustomAppBar({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Good Morning",
                color: ThemeColor.primaryColor,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomText(
                text: userName!,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/sary.jpg"),
          )
        ],
      ),
    );
  }
}
