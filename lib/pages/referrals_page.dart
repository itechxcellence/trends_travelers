import 'package:flutter/material.dart';

class ReferralsPage extends StatelessWidget {
  const ReferralsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Referrals'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Members ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Email Address')),
              DataColumn(label: Text('Contact')),
              DataColumn(label: Text('Earned')),
              DataColumn(label: Text('Date')),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('2988225')),
                DataCell(Text('Ailyn Fernandez')),
                DataCell(Text('ailynfernandez000@gmail.com')),
                DataCell(Text('09464453428')),
                DataCell(Text('₱0.00')),
                DataCell(Text('February 18, 2025')),
              ]),
              DataRow(cells: [
                DataCell(Text('6316179')),
                DataCell(Text('Joselyn Asido Chica')),
                DataCell(Text('mjoselynchica@gmail.com')),
                DataCell(Text('09108687314')),
                DataCell(Text('₱7,500.00')),
                DataCell(Text('February 15, 2025')),
              ]),
              DataRow(cells: [
                DataCell(Text('1194196')),
                DataCell(Text('Felicidad Quintela Bico')),
                DataCell(Text('felicebico18@gmail.com')),
                DataCell(Text('09957849235')),
                DataCell(Text('₱0.00')),
                DataCell(Text('February 12, 2025')),
              ]),
              DataRow(cells: [
                DataCell(Text('2523954')),
                DataCell(Text('CARTRPO INTERNATIONAL')),
                DataCell(Text('csrcartpro@gmail.com')),
                DataCell(Text('09157762028')),
                DataCell(Text('₱0.00')),
                DataCell(Text('January 28, 2025')),
              ]),
              DataRow(cells: [
                DataCell(Text('3859972')),
                DataCell(Text('Faith Anemone Villacin')),
                DataCell(Text('faithvillacin@gmail.com')),
                DataCell(Text('09212579739')),
                DataCell(Text('₱0.00')),
                DataCell(Text('January 18, 2025')),
              ]),
              DataRow(cells: [
                DataCell(Text('1640642')),
                DataCell(Text('Ma. Jonah Pacio')),
                DataCell(Text('galiciabing13@gmail.com')),
                DataCell(Text('7579384318')),
                DataCell(Text('₱0.00')),
                DataCell(Text('January 17, 2025')),
              ]),
              DataRow(cells: [
                DataCell(Text('6141997')),
                DataCell(Text('OLIVE ALBAO PEÑAS')),
                DataCell(Text('goalgetter0716@gmail.com')),
                DataCell(Text('09082178075')),
                DataCell(Text('₱0.00')),
                DataCell(Text('January 13, 2025')),
              ]),
              DataRow(cells: [
                DataCell(Text('7562816')),
                DataCell(Text('Bernadette Carandang')),
                DataCell(Text('greatfindsshopper@gmail.com')),
                DataCell(Text('09176787800')),
                DataCell(Text('₱0.00')),
                DataCell(Text('January 09, 2025')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
