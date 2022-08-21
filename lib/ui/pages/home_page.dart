import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landingpage/ui/shared/custom_app_menu.dart';
import 'package:vertical_landingpage/ui/views/about_view.dart';
import 'package:vertical_landingpage/ui/views/contact_view.dart';
import 'package:vertical_landingpage/ui/views/location_view.dart';
import 'package:vertical_landingpage/ui/views/pricing_view.dart';

import '../../providers/page_provider.dart';
import '../views/home_view.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [

            _HomeBody(),

            Positioned(
            right: 20,
              top: 20,
              child: CustomAppMenu(

              ),
            ),
          ],
        ),
      )

    );
  }
  BoxDecoration buildBoxDecoration () => BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.pink,
        Colors.deepOrange
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5]
    )
  );
}


class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical ,
      children: [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),

      ],
      );
  }
}

