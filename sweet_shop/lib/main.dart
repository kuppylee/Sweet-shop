import 'package:flutter/material.dart';
import 'Screens/onboarding_page.dart';
import 'Screens/sweet_products_page.dart';
import 'Screens/detail_page.dart';

void main() => runApp(SweetShop());

class SweetShop extends StatelessWidget {
  const SweetShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingPage(),
        '/first': (context) => SweetPage(),
        '/second': (context) => DetailPage(),
      },
    );
  }
}
