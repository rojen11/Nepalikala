import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/models/item.dart';

class DetailPage extends StatelessWidget {
  final title;
  final image;

  DetailPage(this.title, this.image);

  final items = [
    const Item(
        id: 1,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
    const Item(
        id: 2,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
    const Item(
        id: 3,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
    const Item(
        id: 4,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
    const Item(
        id: 5,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
    const Item(
        id: 6,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
    const Item(
        id: 7,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
    const Item(
        id: 8,
        name: "Cotton",
        price: 100,
        image:
            "https://cdn.pixabay.com/photo/2015/05/03/10/55/cotton-750982_960_720.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
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
                      Text(title ?? "",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () => {},
                      )
                    ]),
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(image ?? ""),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
