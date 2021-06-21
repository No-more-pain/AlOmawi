import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class PizzaPage extends StatefulWidget {
  const PizzaPage({Key? key}) : super(key: key);

  @override
  _PizzaPageState createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Popular Now',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}


