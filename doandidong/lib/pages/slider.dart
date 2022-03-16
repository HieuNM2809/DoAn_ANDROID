import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/pages/home.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  final urlImages = [
    'https://cdn.yeudulich.com/940x630/media/attraction/attraction/VNMVUY01.jpg',
    'https://cdn3.ivivu.com/2016/07/da-voi-me-yang-tao-ivivu-2.jpg',
    'https://dulichquynhon.com/wp-content/uploads/2018/01/thap-duong-long-binh-dinh-1-696x450.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    Widget abc(String urlImage, int index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.grey,
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        );
    return Scaffold(
      body: Center(
        child: CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return abc(urlImage, index);
          },
          options: CarouselOptions(
            height: 10,
            autoPlay: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            autoPlayInterval: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
