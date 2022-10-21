import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 290,
          // Максимальная горизонтальная ширина одного дочернего виджета
          maxCrossAxisExtent: 200,
          // Горизонтальный интервал между отдельными суб-виджетами
          mainAxisSpacing: 8.0,
          // Вертикальный интервал между отдельными суб-виджетами
          crossAxisSpacing: 20.0
      ),
      shrinkWrap: true,
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            margin: EdgeInsets.only(top: 28),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(90),
                        child: Image.network('https://image.shutterstock.com/image-photo/black-white-boots-fashion-shoes-260nw-1851740584.jpg', fit: BoxFit.cover,),
                      )
                  ),
                ],
              ),
            )
        );
      },
    );
  }
}