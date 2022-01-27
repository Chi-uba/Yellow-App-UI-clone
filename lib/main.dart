import 'package:flutter/material.dart';
import 'package:yellow_card_app_clone/screens/deposit_screen.dart';
import 'package:yellow_card_app_clone/screens/profile_screen.dart';
import 'package:yellow_card_app_clone/screens/splash_screen.dart';
import 'package:yellow_card_app_clone/screens/support_screen.dart';
import 'package:yellow_card_app_clone/screens/transaction_screen.dart';
import 'package:yellow_card_app_clone/screens/wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: controller,
          children :[
            SplashScreen(),
            WalletScreen(),
            TransactionScreen(),
            ProfileScreen(),
            SupportScreen(),
            DepositScreen(screenName: 'Withdraw ', description: "You're almost ready to start trading, please "
            "completely your account setup to continue",),
            DepositScreen(screenName: 'Deposit', description: "You're almost ready to start trading, please "
                "completely your account setup to continue")
      ]),
    );
  }
}
