import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Image> items = [
    Image(image: ExactAssetImage("Assets/Images/zawa.jpg")),
    Image(image: ExactAssetImage("Assets/Images/zawa.jpg")),
    Image(image: ExactAssetImage("Assets/Images/zawa.jpg")),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //SizedBox(height: 100,),
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: items
              .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Image>[
                        Image(
                          image: ExactAssetImage(
                            "Assets/Images/zawa.jpg",
                          ),
                          width: 1650,
                          //height: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Categories',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        Container(
          height: 200,
          width: 1000,
          child: PageView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int position) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 40,
                    child: Card(
                      elevation: 4,
                      child: Text('title'),
                    ),
                  ),
                );
              }),
        ),

        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Popular Now',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 500,
          width: 1000,
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int position) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 40,
                    child: Card(
                      elevation: 4,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: CircleAvatar(),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 19, 1, 3),
                            child: Column(
                              children: [
                                Text("Meaty Pizza"),
                                RatingBar.builder(
                                  initialRating: 3,
                                  itemSize: 16,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (double value) {},
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 2),
                                      child: Text(
                                        '12',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
