import 'package:flutter/material.dart';
class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatalogBody(),
    );
  }
}

class CatalogBody extends StatefulWidget {
  @override
  _CatalogBody createState() => _CatalogBody();
}

class _CatalogBody extends State<CatalogBody> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 450,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 138,
                  // Максимальная горизонтальная ширина одного дочернего виджета
                  maxCrossAxisExtent: 128,
                  // Горизонтальный интервал между отдельными суб-виджетами
                  mainAxisSpacing: 18.0,
                  // Вертикальный интервал между отдельными суб-виджетами
                  crossAxisSpacing: 20.0
                ),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(28), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.network('https://www.touristengland.com/wp-content/uploads/2018/06/toys-2938508_640.jpg', fit: BoxFit.cover),
                          ),
                        ),
                        // SizedBox(
                        //   width: 88,
                        //   height: 88,
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(28),
                        //     child: Image.network('https://www.touristengland.com/wp-content/uploads/2018/06/toys-2938508_640.jpg'),
                        //   ),
                        // ),
                        Text('Детская одежда гр')
                      ],
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }}