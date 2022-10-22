import 'package:flutter/material.dart';

import '../config.dart';

class ProductsDescription extends StatelessWidget {
  final double marginBottom;
  final double iconSize;
  final bool boolFlag;
   ProductsDescription({required this.marginBottom,  required this.iconSize, required this.boolFlag});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                      text: '1500 ', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: ColorConfig.textBlack),
                      children: [
                        TextSpan(
                          text: 'c', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: ColorConfig.textBlack, decoration: TextDecoration.underline, decorationColor: ColorConfig.textBlack),
                        )
                      ]
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text('2560 c', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: ColorConfig.textPrompt, decoration: TextDecoration.lineThrough, decorationColor: ColorConfig.textBlack, decorationStyle: TextDecorationStyle.solid))
              ],
            )
        ),
        Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, marginBottom),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Элемент одежды', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11, color: ColorConfig.textPrompt)),

            )
        ),
        Text('Какие-то джинсы Balenciaga', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: ColorConfig.textBlack),),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              boolFlag == true ?
              IconButton(
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Icon(Icons.add, color: ColorConfig.violet, size: iconSize,),
              ) : SizedBox(width: 0,),
              Text('В корзину', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorConfig.violet),),
              const SizedBox(width: 31,),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green)
                  ),
                  child: Icon(
                    Icons.whatsapp, color: ColorConfig.green, size: 18,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}