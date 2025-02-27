import 'package:flutter/material.dart';
import 'package:luzo_interview/core/services/my_snackbar.dart';
import 'package:luzo_interview/features/home/widgets/navigation_rail.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/theme/app_theme.dart';
import '../widgets/banner_carousel.dart';
import '../widgets/horizontal_tile_widget.dart';
import '../widgets/vertical_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * AppConstants.railWidth,
              child: MyNavigationRail(),
            ),
            _buildMainContent(context),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          MySnackbar.showSnackBar(context);
        },
      ),
      title: Text("Men's Grooming"),
      centerTitle: false,
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * AppConstants.mainContentWidth,
      padding: EdgeInsets.all(AppConstants.defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BannerCarousel(),
            SizedBox(height: 20),
            TextFormField(decoration: AppTheme.searchDecoration),
            SizedBox(height: 10),
            _buildGenderSelection(),
            _buildServicesList(),
          ],
        ),
      ),
    );
  }

  Widget _buildGenderSelection() {
    return Row(
      children: [
        HorizontalTileWidget(
          lottie: "assets/man.json",
          title: "Men",
        ),
        SizedBox(width: 10),
        HorizontalTileWidget(
          lottie: "assets/woman.json",
          title: "Women",
        ),
      ],
    );
  }

  Widget _buildServicesList() {
    return Column(
      children: [
        VerticalTileWidget(
          lottie: "assets/man.json",
          title: "Beard Trimming",
          value: 500,
        ),
        VerticalTileWidget(
          lottie: "assets/man.json",
          title: "Hair Cut",
          value: 500,
        ),
        VerticalTileWidget(
          lottie: "assets/man.json",
          title: "Face Care",
          value: 500,
          canAdd: true,
        ),
      ],
    );
  }
}
