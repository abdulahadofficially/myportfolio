import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS5Publications extends StatelessWidget {
  const DS5Publications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.volunteeringKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.publicationTitle,
                description: DataValues.publicationDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type3(
                    image: 'flutterscope',
                    title: DataValues.publicationOrg1Title,
                    role: DataValues.publicationOrg1Role,
                    years: DataValues.publicationOrg1Years,
                    values: DataValues.publicationOrg1Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'mlsa',
                    title: DataValues.publicationOrg2Title,
                    role: DataValues.publicationOrg2Role,
                    years: DataValues.publicationOrg2Years,
                    values: DataValues.publicationOrg2Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80.0),
            Center(
              child: ContainerBanner().type1(
                isDesktop: true,
                title1: DataValues.publicationBanner,
                title2: DataValues.publicationBannerTitle,
                description: DataValues.publicationBannerWeb,
                image: 'image',
                message: 'Volunteering Profile',
                url: DataValues.publicationURL,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
