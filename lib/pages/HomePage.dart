import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Image> items = [
    Image(image: ExactAssetImage("Assets/Images/banner1.jpg")),
    Image(image: ExactAssetImage("Assets/Images/banner2.jpg")),
    Image(image: ExactAssetImage("Assets/Images/banner3.jpg")),
    Image(image: ExactAssetImage("Assets/Images/banner4.jpg")),
  ];
  final int index = 0;

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
            initialPage: 2,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: items.toList(),
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
          SizedBox(height: 15,),



        Container(
          height: 500,
          width: 500,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Image.asset("Assets/Images/brakfast.jpg"),
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(1),
                ),


                 ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image(
                    image: ExactAssetImage(
                        "Assets/Images/food6.jpg"),
                  ),

                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food5.jpg"),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food4.jpg"),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food3.jpg"),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food4.jpg"),
                ),
              ),  ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food6.jpg"),
                ),
              ),  ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food7.jpg"),
                ),
              ),
                ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food10.jpg"),
                ),
              ),  ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food5.jpg"),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: ExactAssetImage(
                      "Assets/Images/food3.jpg"),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
