import 'package:brand_house/features/presentation/config.dart';
import 'package:brand_house/features/presentation/widgets/products_description.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'No. ${imgList.indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )),
  ),
))
    .toList();

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 12),
                child: CarouselSlider.builder(
                  itemCount: 5,
                  carouselController: buttonCarouselController,
                  itemBuilder:
                      (BuildContext context, int itemIndex,
                      int pageViewIndex) =>
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(right: 44),
                          width: 300,
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              image: const DecorationImage(
                                  image: NetworkImage('https://thumbs.dreamstime.com/z/trendy-beautiful-young-asian-woman-carrying-colorful-bags-shopping-online-mobile-phone-isolated-purple-banner-background-184325828.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 120,
                    viewportFraction: 0.8,
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 36, 16, 20),
                child: CarouselSlider.builder(
                  itemCount: 5,
                  carouselController: buttonCarouselController,
                  itemBuilder:
                      (BuildContext context, int itemIndex,
                      int pageViewIndex) =>
                      InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                          width: 164,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                                    child: Text('18:29:13', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
                                  ),
                                  Container(
                                    color: ColorConfig.yellow,
                                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                                    child: Text('- 29%  ', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
                                  ),
                                ],
                              ),
                              Container(
                                height: 124,
                                child: Image.network('https://cdn.sanity.io/images/c1chvb1i/production/5e762aae11d46e18bd20b095691853579c4e613e-1100x735.jpg', fit: BoxFit.fill,),
                              ),
                              ProductsDescription(marginBottom: 0, iconSize: 0.1, boolFlag: false,)
                            ],
                          ),
                        ),
                      ),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 305,
                    viewportFraction: 0.8,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

// int _current = 0;
// final CarouselController _controller = CarouselController();
// return Scaffold(
//   appBar: AppBar(title: Text('Carousel with indicator controller demo')),
//   body: Column(children: [
//     Expanded(
//       child: CarouselSlider(
//         items: imageSliders,
//         carouselController: _controller,
//         options: CarouselOptions(
//             autoPlay: true,
//             enlargeCenterPage: true,
//             aspectRatio: 2.0,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _current = index;
//               });
//             }),
//       ),
//     ),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: imgList.asMap().entries.map((entry) {
//         return GestureDetector(
//           onTap: () => _controller.animateToPage(entry.key),
//           child: Container(
//             width: 12.0,
//             height: 12.0,
//             margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: (Theme.of(context).brightness == Brightness.dark
//                     ? Colors.white
//                     : Colors.black)
//                     .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//           ),
//         );
//       }).toList(),
//     ),
//   ]),
// );