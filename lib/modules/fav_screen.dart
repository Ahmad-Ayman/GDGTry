import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testapp/modules/cart_item.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  _FavScreenState createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
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
  Color colors = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage('https://mdbootstrap'
                      '.com/img/Photos/Slides/img%20(130).jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            height: 380,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CartItem(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
