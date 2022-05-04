import 'package:f_share/utils/colors.dart';
import 'package:f_share/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class TransactionRow extends StatelessWidget {
  final String? title;
  final String? description;
  final double? amount;
  final bool? isPositif;
  const TransactionRow(
      {Key? key,
      required this.title,
      required this.description,
      required this.amount,
      required this.isPositif})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.inventory_2_outlined,
              size: 30,
              color: ThemeColor.primaryColor,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title!,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: description,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          CustomText(
            text: isPositif!
                ? "+\$ ${amount?.toStringAsFixed(2)}"
                : "-\$ ${amount?.toStringAsFixed(2)}",
            color: isPositif! ? Colors.green : Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
