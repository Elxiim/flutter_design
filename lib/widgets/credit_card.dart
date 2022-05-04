import 'package:f_share/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        height: 250,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/visa.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/visa_logo.png',
                  width: 100,
                ),
                const CustomText(
                  text: 'Munder',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: _height / 10,
            ),
            const CustomText(
              text: "1234 9856 7495 3462",
              fontSize: 24,
              color: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: "Card user Name",
                  fontSize: 16,
                  color: Colors.white,
                ),
                CustomText(
                  text: "01/24",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
