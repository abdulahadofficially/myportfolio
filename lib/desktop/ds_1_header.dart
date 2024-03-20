import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/nav_bar.dart';
import '../widgets/social_profiles.dart';

class DS1Header extends StatelessWidget {
  const DS1Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Stack(
        children: [
          // Positioned.fill(
          //   child: Image.asset(
          //     'assets/images/fullbackground.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Container(
            color: Colors.black, // Adjust opacity as needed
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo2.png',
                    height: 250.0,
                    width: 250.0,
                  ),
                  const SizedBox(width: 60.0),
                  SelectableText(
                    DataValues.headerGreetings,
                    style: AppThemeData.darkTheme.textTheme.headlineSmall,
                  ),
                  SelectableText(
                    DataValues.headerName,
                    style: AppThemeData.darkTheme.textTheme.displayMedium,
                  ),
                  SelectableText(
                    DataValues.headerTitle,
                    style: AppThemeData.darkTheme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20.0),
                  const SocialProfiles(),
                  const SizedBox(height: 60.0),
                  Container(
                      height: 80,
                      width: 1000,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 50, 132, 138),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: NavBar().desktopNavBar())),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
