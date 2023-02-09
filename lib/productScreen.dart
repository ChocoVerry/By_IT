import 'package:by_it/widget/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  String img;
  ProductScreen(this.img);

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(contex).size.height / 1.7,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/${img}.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(contex);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.arrow_back,
                        size: 22,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(contex);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.favorite,
                        size: 22,
                        color: Color.fromARGB(255, 246, 107, 225),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15, top: 8, left: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      img,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$300.50",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 246, 107, 225)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                "For Women",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 15),
              RatingBar.builder(
                unratedColor: Colors.grey.shade300,
                itemSize: 28,
                initialRating: 3.5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsetsDirectional.symmetric(horizontal: 4),
                onRatingUpdate: (rating) {},
                itemBuilder: (context, _) =>
                    Icon(Icons.star, color: Colors.amber),
              ),
              SizedBox(height: 20),
              Text(
                "Product Descriptions...................",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        CupertinoIcons.cart_fill,
                        size: 22,
                        color: Color.fromARGB(255, 246, 107, 225),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: contex,
                        builder: (contex) {
                          return CustomBottomSheet();
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 70,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 246, 107, 225),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Buy It",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      ),
                    ),
                  )
                ],
              )
            ]),
          )
        ],
      )),
    );
  }
}
