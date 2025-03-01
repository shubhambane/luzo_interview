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
          mainAxisAlignment: MainAxisAlignment.start,
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
      titleSpacing: 0,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          MySnackbar.showSnackBar(context);
        },
      ),
      title: Text(
        "Men's Grooming",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * AppConstants.mainContentWidth,
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.defaultPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BannerCarousel(),
            SizedBox(height: 10),
            TextFormField(decoration: AppTheme.searchDecoration),
            SizedBox(height: 8),
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
          value: 200,
        ),
        VerticalTileWidget(
          lottie: "assets/man.json",
          title: "Beard Styling",
          value: 350,
        ),
        VerticalTileWidget(
          lottie: "assets/man.json",
          title: "Beard Colour",
          value: 750,
          canAdd: true,
        ),
      ],
    );
  }
}
