import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nitip_project/pages/login_pages.dart';
import 'package:provider/provider.dart';
import 'pages/onboard_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:nitip_project/model/cart_model.dart';

import 'package:nitip_project/model/snack/bread.dart';
import 'package:nitip_project/model/snack/cookies.dart';
import 'package:nitip_project/model/snack/kebabsawarma.dart';
import 'package:nitip_project/model/snack/martabaksaleh.dart';
import 'package:nitip_project/model/snack/pancake.dart';

import 'package:nitip_project/model/food/curryhouse.dart';
import 'package:nitip_project/model/food/dongkeys.dart';
import 'package:nitip_project/model/food/hosana.dart';
import 'package:nitip_project/model/food/pizzaduramo.dart';
import 'package:nitip_project/model/food/ramenno.dart';

import 'package:nitip_project/model/drink/chocolate.dart';
import 'package:nitip_project/model/drink/coffee.dart';
import 'package:nitip_project/model/drink/juice.dart';
import 'package:nitip_project/model/drink/milkshake.dart';
import 'package:nitip_project/model/drink/sing.dart';

int? initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen ${initScreen}');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CartModel>(
            create: (_) => CartModel(),
          ),
          ChangeNotifierProvider<BreadModel>(
            create: (_) => (BreadModel()),
          ),
          ChangeNotifierProvider<CookiesModel>(
            create: (_) => (CookiesModel()),
          ),
          ChangeNotifierProvider<KebabSawarmaModel>(
            create: (_) => (KebabSawarmaModel()),
          ),
          ChangeNotifierProvider<MartabakSalehModel>(
            create: (_) => (MartabakSalehModel()),
          ),
          ChangeNotifierProvider<PancakeModel>(
            create: (_) => (PancakeModel()),
          ),
          ChangeNotifierProvider<CurryModel>(
            create: (_) => (CurryModel()),
          ),
          ChangeNotifierProvider<DongkeysModel>(
            create: (_) => (DongkeysModel()),
          ),
          ChangeNotifierProvider<HosanaModel>(
            create: (_) => (HosanaModel()),
          ),
          ChangeNotifierProvider<PizzaModel>(
            create: (_) => (PizzaModel()),
          ),
          ChangeNotifierProvider<RamenModel>(
            create: (_) => (RamenModel()),
          ),
          ChangeNotifierProvider<ChocolateModel>(
            create: (_) => (ChocolateModel()),
          ),
          ChangeNotifierProvider<CoffeeModel>(
            create: (_) => (CoffeeModel()),
          ),
          ChangeNotifierProvider<JuiceModel>(
            create: (_) => (JuiceModel()),
          ),
          ChangeNotifierProvider<MilkshakeModel>(
            create: (_) => (MilkshakeModel()),
          ),
          ChangeNotifierProvider<SingModel>(
            create: (_) => (SingModel()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: initScreen == 0 || initScreen == null ? "first" : "/",
          routes: {
            '/': (context) => LoginPage(),
            "first": (context) => const MyHomePage(
                  title: "flutter demo",
                ),
          },
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return LoginPage();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
