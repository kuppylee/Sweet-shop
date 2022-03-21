import 'package:flutter/material.dart';
import 'package:sweet_shop/constants_page.dart';

class SweetItem extends StatelessWidget {
  SweetItem({Key? key, required this.height, required this.image, required this.text, required this.price, required this.priceContainerColor}): super(key: key);
  final double height;
  final AssetImage image;
  final String text;
  final String price;
  final Color priceContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFF73e4eb),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 5),
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: kSweetPageTextStyle2,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: priceContainerColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                    onPressed: (){
                    Navigator.pushNamed(context, '/second');
                    },
                    child: Text('\$$price',
                      style: kSweetPageTextStyle2,
                    ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

// Container(
//   height: 20,
//   width: 40,
//   color: priceContainerColor,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(5.0),
//   ),
//   child: Text(
//     '\$$price',
//     style: kSweetPageTextStyle2,
//   ),
// ),