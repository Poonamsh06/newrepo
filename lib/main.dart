

import 'package:book_app_chief_suraj/aarti_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'Screen/home_screen.dart';
import 'Screen/drawer_screen.dart';
import 'localizationservice/localization.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(GetMaterialApp(
    translations: LocalizationService(), // your translations
    locale: LocalizationService().getCurrentLocale(), // translations will be displayed in that locale
    fallbackLocale: const Locale(
      'en',
      'US',
    ),
    home:const Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String lng;

  @override
  void initState() {
    super.initState();
    lng = LocalizationService().getCurrentLang();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}


