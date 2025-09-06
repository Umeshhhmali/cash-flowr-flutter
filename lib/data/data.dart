import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.burger,color: Colors.white),
    'color': Colors.amber[700],
    'name': 'Food',
    'totalAmount': '-\$45.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bagShopping,color: Colors.white),
    'color': Colors.purple,
    'name': 'Shopping',
    'totalAmount': '-\$250.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.heartCircleCheck,color: Colors.white),
    'color': Colors.green,
    'name': 'Health',
    'totalAmount': '-\$100.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.burger,color: Colors.white),
    'color': Colors.amber[700],
    'name': 'Food',
    'totalAmount': '-\$S25.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.plane,color: Colors.white),
    'color': Colors.blue,
    'name': 'Travel',
    'totalAmount': '-\$80.00',
    'date': 'Today',
  },
];