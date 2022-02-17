import 'package:book_app_chief_suraj/models/arti.dart';
import 'package:book_app_chief_suraj/models/book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Color primaryColor = const Color(0xff376565);
List<BoxShadow> shadowList = [BoxShadow(color: (Colors.grey[400])!, blurRadius: 30, offset: const Offset(0, 10))];

List<ArtiInfo> artis = [
  ArtiInfo('Shiv Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Lakshmi Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Saraswati Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Durga Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Ambe Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Gayatri Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Ganesh Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri jagdish Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Krishna Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Santoshi Mata Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Ram Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Kali Maa Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Ganpati Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Hanumaan Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Sharda Maa Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Durga Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Sai Baba Aarti '.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Vishkarma ji Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shitla Maa Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Vishnu Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Vaishno Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Paarvati Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Bala ji Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Shri Prshuram Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Gouri Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  //ArtiInfo('Maa Saraswati Aarti'.tr, 'lib/images/rabbit.png',''),
  ArtiInfo('Maa Ganga Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),

];

List<Map> navList = [
  {'icon': Icons.phone, 'title': 'Social Media'.tr},
  {'icon': Icons.markunread_mailbox_rounded, 'title': 'Donation'.tr},
  {'icon': Icons.add_rounded, 'title': 'Add books'.tr},
  {'icon': Icons.favorite_rounded, 'title': 'Favorites'.tr},
  {'icon': Icons.mail_rounded, 'title': 'Messages'.tr},
  {'icon': Icons.person, 'title': 'Profile'.tr},
];

List<BookInfo> books = [
  BookInfo(
    0,
    'Ramayaan'.tr,
    'lib/images/ramayan__1_-removebg-preview.png',
    'Valmiki'.tr,
    '250',
  ),
  BookInfo(1, 'Mahabharat'.tr, 'lib/images/mahabharata.png', 'Vyasa'.tr, '140'),
  BookInfo(
    2,
    'Gita'.tr,
    'lib/images/ramayan__1_-removebg-preview.png',
    'Vyasa'.tr,
    '290',
  ),
  BookInfo(
    3,
    'Bharmha puran'.tr,
    'lib/images/mahabharata.png',
    'Ramananda'.tr,
    '159',
  ),
  BookInfo(
    4,
    'Shiv Puran'.tr,
    'lib/images/ramayan__1_-removebg-preview.png',
    'Vyasadeva'.tr,
    '270',
  ),
  BookInfo(
    5,
    'Gadur puran'.tr,
    'lib/images/mahabharata.png',
    'Vyasadeva'.tr,
    '160',
  ),
];
