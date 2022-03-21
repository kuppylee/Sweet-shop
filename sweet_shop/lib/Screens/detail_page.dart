import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sweet_shop/constants_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/macaroon.jpeg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFffffff),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_rounded,
                        size: 30,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFffffff),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(FontAwesomeIcons.heart,
                      size: 30,
                      color: Color(0xFFff9680),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                width: double.infinity,
                // height: 450,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Macaroons',
                          style: kSweetDetailTextStyle1,
                        ),
                        Text('\$20.0',
                          style: kSweetDetailTextStyle1,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Stack(
                          children: [
                            Row(
                              children: [
                                Text('6 pieces',
                                  style: kSweetDetailTextStyle2,
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFFFDBD2),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Text('800 g',
                                  style: kSweetDetailTextStyle2,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.star,
                                  size: 20,
                                  color: Color(0xFFFF9680),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.star,
                                  size: 20,
                                  color: Color(0xFFFF9680),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.star,
                                  size: 20,
                                  color: Color(0xFFFF9680),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.star,
                                  size: 20,
                                  color: Color(0xFFFF9680),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.star_half,
                                  size: 20,
                                  color: Color(0xFFFF9680),
                                ),
                                SizedBox(width: 5,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Color(0xFFea978c),
                          width: 2.0,
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 12, 0, 15),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.watch_later_outlined,
                                      size: 20,
                                      color: Color(0xFFADB2BE),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('20-30 min',
                                      style: kSweetDetailTextStyle3,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    Icon(FontAwesomeIcons.utensilSpoon,
                                      size: 20,
                                      color: Color(0xFFADB2BE),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('4 servings',
                                      style: kSweetDetailTextStyle3,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.local_fire_department_rounded,
                                      size: 20,
                                      color: Color(0xFFF86A55),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('558 kcal',
                                      style: kSweetDetailTextStyle3,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Description ',
                                style: kSweetDetailTextStyle4,
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text('The best Macaroons in the world. \n we made them as delicious as \n your mom makes them!',
                                style: kSweetDetailTextStyle5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFF9680),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart_outlined,
                                  size: 20,
                                ),
                                SizedBox(width: 5,),
                                Text('Add to cart',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70,

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ),
            ),
          ],
        ),
      ],
    );
  }
}

