// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

// 🌎 Project imports:
import 'gen/assets/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Carousel Slider',
      home: MyHomePage(title: 'Flutter Carousel Slider'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, index, int pageViewIndex) {
              return Container(child: Assets.tronLogo.svg(width: 200));
            },
            options: CarouselOptions(),
          ),
          const SizedBox(height: 50,),
          SvgPicture.asset('assets/tronLogo.svg',width: 200,),
         SvgPicture.network('https://www.svgrepo.com/show/149669/molecules.svg',width: 200,),
          //  SvgGenImage(_assetName)
        ],
      ),
    );
  }
}
