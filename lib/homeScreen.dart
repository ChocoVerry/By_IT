import 'package:by_it/widget/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
  List catalogList = [
    "All",
    "Best Selling",
    "Jackets",
    "Shirts",
    "Pants",
    "Bags"
  ];

  List imageList = [
    "Warm Jacket",
    "Black T-Shirt",
    "Black Pant",
    "Ladies Bag",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                            color: Color(0xfff7f8fa),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text("Find your product"),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xfff7f8fa),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.notifications_none,
                            size: 30,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 25,
                      top: 20,
                    ),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(30),
                      child: Image.asset(
                        "assets/images/cover.jpg",
                        width: MediaQuery.of(context).size.width / 1.5,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          for (int i = 0; i < catalogList.length; i++)
                            Container(
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 18),
                              decoration: BoxDecoration(
                                  color: catalogList[i] == "All"
                                      ? Color.fromARGB(255, 246, 107, 225)
                                      : Color(0xfff7f8fa),
                                  borderRadius: BorderRadius.circular(18)),
                              child: Text(
                                catalogList[i],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: catalogList[i] == "All"
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            (MediaQuery.of(context).size.width - 30 - 15) /
                                (2 * 290),
                        mainAxisSpacing: 45,
                        crossAxisSpacing: 15,
                      ),
                      itemCount: imageList.length,
                      itemBuilder: (_, i) {
                        if (i % 2 == 0) {
                          return ProductCard(imageList[i]);
                        }
                        return OverflowBox(
                          maxHeight: 290.0 + 70.0,
                          child: Container(
                            margin: EdgeInsets.only(top: 70),
                            child: ProductCard(imageList[i]),
                          ),
                        );
                      })
                ],
              )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedItemColor: Color.fromARGB(255, 246, 107, 225),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {},
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart_fill), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 246, 107, 225),
        child: Icon(Icons.camera),
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
