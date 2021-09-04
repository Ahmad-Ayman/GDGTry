import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> carouselImages = [
    Image(
      image: NetworkImage(
        'https://mdbootstrap'
        '.com/img/Photos/Slides/img%20(31).jpg',
      ),
      fit: BoxFit.cover,
    ),
    Image(
      image: NetworkImage(
          'https://wowslider.com/sliders/demo-93/data1/images/lake.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: NetworkImage(
          'https://mdbootstrap.com/img/Photos/Slides/img%20(130).jpg'),
      fit: BoxFit.cover,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: carouselImages,
          options: CarouselOptions(
            height: 250.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Container(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/ar/thumb/1/14/Conan_Edogawa.svg/1200px-Conan_Edogawa.svg.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Ahmed'),
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
