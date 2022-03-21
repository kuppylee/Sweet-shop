import 'package:flutter/material.dart';
import 'package:sweet_shop/constants_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sweet_shop/component/item_class.dart';



class SweetPage extends StatefulWidget {
  const SweetPage({Key? key}) : super(key: key);

  @override
  State<SweetPage> createState() => _SweetPageState();
}

class _SweetPageState extends State<SweetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFd6f2ff),
        actions: [
          Icon(FontAwesomeIcons.thLarge,
            size: 40, //Icon Size
            color: Colors.black12, //Color Of Icon
          ),
          SizedBox(width: 15,),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('canada,ottawa',
              style: kSweetPageTextStyle,
            ),
            Icon(Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ],
        ),
        leading: Container(
          margin: EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('images/profilePics.png'),
                backgroundColor: Color(0xFFf5cbd7),
              ),
        ),
        ),

      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFd6f2ff),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: false,
                          prefixIcon: Icon(Icons.search,
                            color: Colors.black12,
                            size: 40,
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: 'Search',
                        ),
                      ),
                    ),
                  ),
                SizedBox(width: 15,),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Icon(FontAwesomeIcons.slidersH,
                    size: 40,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  // width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage('images/strawberryCake.jpeg',),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: '15% ',
                        style: kSweetPageColorTextStyle,
                      ),
                      TextSpan(
                        text: 'for all cakes',
                        style: kSweetPageTextStyle,
                      ),
                      TextSpan(
                        text: '\n For our regular \n customers',
                        style: kSweetPageTextStyle2,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Text('Popular Sweets',
                      textAlign: TextAlign.left,
                      style: kSweetPopularSweetTextStyle,
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Expanded(
                              child: Column(
                                children: [
                                  SweetItem(height: 180,
                                      image: AssetImage('images/lollipop.jpeg'),
                                      text: 'Lollipop',
                                      price: '10.0',
                                      priceContainerColor: Color(0XFFc3e6f4)),
                                  SizedBox(height: 5,),
                                  SweetItem(height: 180,
                                      image: AssetImage('images/donut.jpeg'),
                                      text: 'Donuts',
                                      price: '35.0',
                                      priceContainerColor: Color(0XFFd8becf)),
                                  SizedBox(height: 5,),
                                  SweetItem(height: 180,
                                      image: AssetImage('images/lollipop.jpeg'),
                                      text: 'lollipop',
                                      price: '10.0',
                                      priceContainerColor: Color(0xFF95d4ed)),

                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(children: [
                                SweetItem(height: 220,
                                    image: AssetImage('images/cupcake.jpeg'),
                                    text: 'Cupcake',
                                    price: '25.0',
                                    priceContainerColor: Color(0XFFeccebe)),
                                SizedBox(height: 5,),
                                SweetItem(height: 220,
                                    image: AssetImage('images/macaroon.jpeg'),
                                    text: 'Macaroon',
                                    price: '20.0',
                                    priceContainerColor: Color(0XFFd6b6c4)),
                                SizedBox(height: 5,),
                                SweetItem(height: 220,
                                    image: AssetImage('images/lollipop.jpeg'),
                                    text: 'Lollipop',
                                    price: '10.0',
                                    priceContainerColor: Color(0XFFc3e6f4)),
                              ],
                              ),
                            ),
                          ],
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

// Container(
// width: double.infinity,
// height: double.infinity,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage('images/sweetShopBackground.jpg',),
// fit: BoxFit.cover
// ),
// ),
// ),