import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'login_pages.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.all(16));
    return IntroductionScreen(
      globalBackgroundColor: const Color(0xFF56A5EC),
      pages: [
        PageViewModel(
            title: 'DELICIOUS FOOD',
            body: 'DELICIOUS FOOD',
            image: Image.asset(
              'lib/images/food.png',
              width: 200,
              alignment: Alignment.center,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: 'FAST DELIVERY',
            body: 'FAST DELIVERY',
            image: Image.asset(
              'lib/images/delivery.png',
              width: 200,
              alignment: Alignment.center,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: 'ONLINE PAYMENT',
            body: 'ONLINE PAYMENT',
            image: Image.asset(
              'lib/images/payment.png',
              width: 200,
              alignment: Alignment.center,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: 'SUDAH NGERTI KAN?',
            image: Image.asset(
              'lib/images/nitip.png',
              width: 250,
            ),
            bodyWidget: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (builder) {
                  return LoginPage();
                }));
              },
              child: const Text('AYO PESAN SEKARANG!'),
            ),
            decoration: pageDecoration),
      ],
      onDone: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (builder) {
          return LoginPage();
        }));
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      dotsFlex: 3,
      nextFlex: 1,
      skipOrBackFlex: 1,
      back: const Icon(Icons.arrow_back),
      skip: const Text(
        'skip',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text(
        'done',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Colors.white,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
