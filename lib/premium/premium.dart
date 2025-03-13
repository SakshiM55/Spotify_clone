import 'package:flutter/material.dart';

import '../bottom_navigation.dart';
import './widgets/premiumplan.dart';
import './widgets/currentplan.dart';
import './widgets/cards.dart';
import './widgets/buttons.dart';

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 50),
        body: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Get 9 months of\nPremium for ₹719',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'LibreFranklin',
                fontSize: 35,
              ),
            ),
            Cards(),
            const Buttons('GET PREMIUM'),
            const SizedBox(height: 10),
            const Text(
              'Terms and conditions apply. Open only to users who aren\'t subscribed to a recurring Premium plan and who haven\'t purchased a 12-month one-time Premium plan at a promotional price. Offer ends 10/02/25.',
              style: TextStyle(
                color: Color.fromRGBO(184, 184, 184, 10),
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            CurrentPlan(),
            PremiumPlan(),
            const SizedBox(height: 3),
          ],
        ),
        bottomNavigationBar: BottomBar(3),
      ),
    );
  }
}