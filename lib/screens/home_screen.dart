import 'package:f_share/utils/colors.dart';
import 'package:f_share/widgets/custom_text.dart';
import 'package:f_share/widgets/single_row_menu.dart';
import 'package:f_share/widgets/transaction_row.dart';
import 'package:flutter/material.dart';
import '../utils/balance_card.dart';
import '../widgets/credit_card.dart';
import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                userName: 'HI, Michel',
              ),
              const CreditCard(),
              const BalanceCard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SingleRowMenu(icon: Icons.two_k_plus_sharp, text: "Top Up"),
                  SingleRowMenu(icon: Icons.download_sharp, text: "Transfert"),
                  SingleRowMenu(icon: Icons.electric_bike, text: "With Draw"),
                  SingleRowMenu(icon: Icons.menu_sharp, text: "More"),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(
                      text: "History transaction",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "View All",
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: CustomText(text: "Mai 02, 2022"),
              ),
              const TransactionRow(
                title: "Top Up EPEP",
                description: "Through the light",
                amount: 80.00,
                isPositif: true,
              ),
              const TransactionRow(
                title: "Top Up PUBGI",
                description: "Through the light",
                amount: 80.00,
                isPositif: false,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: ThemeColor.primaryColor,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet), label: "Account"),
              BottomNavigationBarItem(icon: Icon(Icons.mail), label: "mail"),
            ]),
      ),
    );
  }
}
