import 'package:book_app_chief_suraj/models/book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color primaryColor = Color(0xff376565);

List<BoxShadow> shadowList = [BoxShadow(color: (Colors.grey[400])!, blurRadius: 30, offset: Offset(0, 10))];

List<Map> categories = [
  {"name": 'Shiv Arti'.tr, "imagePath": 'lib/images/cat.png'},
  {"name": 'Lakshmi Mata Arti'.tr, "imagePath": 'lib/images/dog.png'},
  {"name": 'Sarawati Arti'.tr, "imagePath": 'lib/images/horse.png'},
  {"name": 'Durga Mata Arti'.tr, "imagePath": 'lib/images/parrot.png'},
  {"name": 'Ambe Mata Arti'.tr, "imagePath": 'lib/images/rabbit.png'},
  {"name": 'Gayatri MAta Arti'.tr, "imagePath": 'lib/images/cat.png'},
  {"name": 'Sri Ganesha Arti'.tr, "imagePath": 'lib/images/dog.png'},
  {"name": 'Sri Gagdish Arti'.tr, "imagePath": 'lib/images/horse.png'},
  {"name": 'Sri Krishna Arti'.tr, "imagePath": 'lib/images/parrot.png'},
  {"name": 'Santoshi Mata Arti'.tr, "imagePath": 'lib/images/rabbit.png'},
];

List<Map> catMapList = [
  {
    "id": 0,
    "name": 'Ramayaan'.tr,
    "imagePath": 'lib/images/ramayan__1_-removebg-preview.png',
    "Writer": 'Valmiki'.tr,
    "LikedBy": '250',
  },
  {"id": 1, "name": 'Mahabharat'.tr, "imagePath": 'lib/images/mahabharata.png', "Writer": 'Vyasa'.tr, "LikedBy": '140'},
  {
    "id": 2,
    "name": 'Gita'.tr,
    "imagePath": 'lib/images/ramayan__1_-removebg-preview.png',
    "Writer": 'Vyasa'.tr,
    "LikedBy": '290',
  },
  {
    "id": 3,
    "name": 'Bharmha puran'.tr,
    "imagePath": 'lib/images/mahabharata.png',
    "Writer": 'Ramananda'.tr,
    "LikedBy": '159',
  },
  {
    "id": 4,
    "name": 'Shiv Puran'.tr,
    "imagePath": 'lib/images/ramayan__1_-removebg-preview.png',
    "Writer": 'Vyasadeva'.tr,
    "LikedBy": '270',
  },
  {
    "id": 5,
    "name": 'Gadur puran'.tr,
    "imagePath": 'lib/images/mahabharata.png',
    "Writer": 'Vyasadeva'.tr,
    "LikedBy": '160',
  },
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
