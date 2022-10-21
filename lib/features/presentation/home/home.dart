import 'package:brand_house/features/presentation/home/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../catalog/catalog.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(60), child: AppBarWidget()),
      body: Catalog(),
    );
  }
}