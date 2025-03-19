import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: [
            ServiceCard(
              icon: FontAwesomeIcons.wallet,
              text: 'Trends Wallet',
              onTap: () => _navigateTo(context, 'Trends Wallet'),
            ),
            ServiceCard(
              icon: FontAwesomeIcons.ticketAlt,
              text: 'Ticketing',
              onTap: () => _navigateTo(context, 'Ticketing'),
            ),
            ServiceCard(
              icon: FontAwesomeIcons.moneyBill,
              text: 'Bills Payment',
              onTap: () => _navigateTo(context, 'Bills Payment'),
            ),
            ServiceCard(
              icon: FontAwesomeIcons.mobileAlt,
              text: 'E-Loading',
              onTap: () => _navigateTo(context, 'E-Loading'),
            ),
            ServiceCard(
              icon: FontAwesomeIcons.university,
              text: 'Bank',
              onTap: () => _navigateTo(context, 'Bank'),
            ),
            ServiceCard(
              icon: FontAwesomeIcons.suitcaseRolling,
              text: 'Tour Packages',
              onTap: () => _navigateTo(context, 'Tour Packages'),
            ),
            ServiceCard(
              icon: FontAwesomeIcons.passport,
              text: 'Tourist Visa',
              onTap: () => _navigateTo(context, 'Tourist Visa'),
            ),
            ServiceCard(
              icon: FontAwesomeIcons.graduationCap,
              text: 'Study Visa',
              onTap: () => _navigateTo(context, 'Study Visa'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ServicePage(title: title),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const ServiceCard({
    required this.icon,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
      ),
    );
  }
}

class ServicePage extends StatelessWidget {
  final String title;

  const ServicePage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('$title Content'),
      ),
    );
  }
}
