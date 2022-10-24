import 'package:brand_house/features/presentation/basket/basket.dart';
import 'package:brand_house/features/presentation/catalog/wrapper.dart';
import 'package:brand_house/features/presentation/favorite/favorite.dart';
import 'package:brand_house/features/presentation/home/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../catalog/catalog.dart';
import '../catalog/products.dart';
import '../config.dart';
import '../main/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _currentIndex = 0;
  static final List<Widget> _widgets = <Widget> [
    Main(),
    CatalogWrapper(),
    Basket(),
    Favorite(),
    CatalogWrapper(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(preferredSize: Size.fromHeight(60), child: AppBarWidget()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: ColorConfig.violet,
        unselectedItemColor: ColorConfig.iconLogin,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              label: 'Главная',
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_outlined, color: ColorConfig.violet,)
          ),
          BottomNavigationBarItem(
              label: 'Каталог',
              icon: Icon(Icons.widgets_outlined),
              activeIcon: Icon(Icons.widgets_outlined, color: ColorConfig.violet,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            activeIcon: Icon(Icons.shopping_cart, color: ColorConfig.violet,),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
              label: 'Избранное',
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite_border, color: ColorConfig.violet,)
          ),
          BottomNavigationBarItem(
              label: 'Профиль',
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person, color: ColorConfig.violet,)
          ),
        ],
      ),
      body: _widgets.elementAt(_currentIndex),
    );
  }

}



// import 'package:brand_house/features/presentation/catalog/products.dart';
// import 'package:brand_house/features/presentation/home/widgets/app_bar.dart';
// import 'package:flutter/material.dart';
//
// import '../catalog/catalog.dart';
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: const PreferredSize(preferredSize: Size.fromHeight(54), child: AppBarWidget()),
//       body: SingleChildScrollView(
//           child: Container(
//             margin: const EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               children: [
//                 Catalog(),
//                 Container(
//                     margin: const EdgeInsets.fromLTRB(16, 18, 16, 0),
//                     child: const Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text('Возможно вам понравится', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
//                     )
//                 ),
//                 // SizedBox(
//                   // height: 900,
//                 Products()
//
//                 // )
//               ],
//             ),
//           )
//       )
//
//     );
//   }
// }