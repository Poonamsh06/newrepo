import 'package:book_app_chief_suraj/models/arti.dart';
import 'package:book_app_chief_suraj/models/book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Color primaryColor = const Color(0xff376565);
List<BoxShadow> shadowList = [BoxShadow(color: (Colors.grey[400])!, blurRadius: 30, offset: const Offset(0, 10))];

List<ArtiInfo> artis = [
  ArtiInfo('Shiv Aarti'.tr,'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Maa Lakshmi Aarti'.tr,'lib/images/ganpati1.png','lib/assets/lakshmi_aarti.md'),
  ArtiInfo('Maa Saraswati Aarti'.tr,'lib/images/ganpati1.png','lib/assets/saraswati_aarti.md'),
  ArtiInfo('Maa Durga Aarti'.tr,'lib/images/ganpati1.png','lib/assets/durga_aarti.md'),
  ArtiInfo('Maa Ambe Aarti'.tr,'lib/images/ganpati1.png','lib/assets/ambe_aarti.md'),
  ArtiInfo('Maa Gayatri Aarti'.tr,'lib/images/ganpati1.png','lib/assets/gayatri_aarti.md'),
  ArtiInfo('Shri Ganesh Aarti'.tr,'lib/images/ganpati1.png','lib/assets/ganesh_aarti.md'),
  ArtiInfo('Shri jagdish Aarti'.tr,'lib/images/ganpati1.png','lib/assets/jagdish_aarti.md'),
  ArtiInfo('Shri Krishna Aarti'.tr,'lib/images/ganpati1.png','lib/assets/krishna_aarti.md'),
  ArtiInfo('Santoshi Mata Aarti'.tr,'lib/images/ganpati1.png','lib/assets/santoshi_aarti.md'),
  ArtiInfo('Shri Ram Aarti'.tr,'lib/images/ganpati1.png','lib/assets/ram_aarti.md'),
  ArtiInfo('Kali Maa Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/mahakali_aarti.md'),
  ArtiInfo('Shri Ganpati Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Hanumaan Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hanumaan_aarti.md'),
  ArtiInfo('Sharda Maa Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/sharda_aarti.md'),
  //ArtiInfo('Maa Durga Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/hello.md'),
  ArtiInfo('Sai Baba Aarti '.tr, 'lib/images/ganpati1.png',''),
  ArtiInfo('Shri Vishkarma ji Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/vishkarma_aarti.md'),
  ArtiInfo('Shitla Maa Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/shitla_aarti.md'),
  ArtiInfo('Shri Vishnu Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/vishnu_aarti.md'),
  ArtiInfo('Maa Vaishno Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/vaishnu_aarti.md'),
  ArtiInfo('Maa Paarvati Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/paarvati_aarti.md'),
  ArtiInfo('Shri Bala ji Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/bala_g_aarti.md'),
  ArtiInfo('Shri Prshuram Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/parshuram_aarti.md'),
  ArtiInfo('Mahadev Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/mahadev_aarti.md'),
  ArtiInfo('Maa Saraswati Aarti'.tr, 'lib/images/rabbit.png','lib/assets/saraswati_aarti.md'),
  ArtiInfo('Maa Ganga Aarti'.tr, 'lib/images/ganpati1.png','lib/assets/ganga_aarti.md'),

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
