import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: const [
            ServiceCard(icon: FontAwesomeIcons.wallet, text: 'Trends Wallet'),
            ServiceCard(icon: FontAwesomeIcons.ticketAlt, text: 'Ticketing'),
            ServiceCard(
                icon: FontAwesomeIcons.moneyBill, text: 'Bills Payment'),
            ServiceCard(icon: FontAwesomeIcons.mobileAlt, text: 'E-Loading'),
            ServiceCard(icon: FontAwesomeIcons.university, text: 'Bank'),
            ServiceCard(
                icon: FontAwesomeIcons.suitcaseRolling, text: 'Tour Packages'),
            ServiceCard(icon: FontAwesomeIcons.passport, text: 'Tourist Visa'),
            ServiceCard(
                icon: FontAwesomeIcons.graduationCap, text: 'Study Visa'),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const ServiceCard({required this.icon, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(6, 104, 79, 1),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 50, color: Colors.amber),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
