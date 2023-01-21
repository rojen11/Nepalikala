import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/models/item.dart';
import 'package:project/ui/home/view/detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final category = [
    {
      "name": "Prayer wheel",
      "image":
          "https://rubinmuseum.org/images/content/6323/sc2012.7.2__slider.jpg",
    },
    {
      "name": "Cotton Clothes",
      "image":
          "https://nepaltrekking.com/wp-content/uploads/2021/05/shopping-in-nepal.jpg",
    },
    {
      "name": "Handmade Hemp",
      "image":
          "https://www.hempinnepal.com/image/cache/catalog/new-arrival/hemp-bag-pack-09-530x686.jpg",
    },
    {
      "name": "Handmade Felt",
      "image":
          "http://cdn.shopify.com/s/files/1/1453/5948/products/HandMadeDolls_Acc-02_grande.jpg?v=1537861317",
    },
    {
      "name": "Handmade Pashmina",
      "image":
          "https://media-cdn.tripadvisor.com/media/photo-m/1280/15/cf/95/8f/pashmina-shawls-are-handmade.jpg",
    },
    {
      "name": "Handmade Woolean",
      "image":
          "https://www.clothinginnepal.com/image/cache/catalog/woolen-sweater/woolen-sweater21-1000x1000.jpg",
    },
    {
      "name": "Thanka Art ",
      "image":
          "https://www.nepalsanctuarytreks.com/wp-content/uploads/2018/12/mandala_thangka.jpg"
    }
  ];

  final images = [
    "https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2019/02/nepal-dhaka-shawl.jpg?w=1024&ssl=1",
    "https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2019/02/nepali-clay-products.jpg?w=1024&ssl=1",
    "https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2019/02/Khukuri.jpg?w=1500&ssl=1"
  ];

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nepali Kala",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () => {},
                      )
                    ]),
              ),
            ),
            CarouselSlider(
              items: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                      "https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2019/02/nepal-dhaka-shawl.jpg?w=1024&ssl=1"),
                ),
              ],
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: category.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                            category[index]["name"], category[index]["image"]),
                      )),
                  child: Card(
                    child: Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(category[index]["image"] ?? ""),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          category[index]["name"] ?? "",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
