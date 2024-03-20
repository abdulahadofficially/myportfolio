import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS5Volunteering extends StatelessWidget {
  const MS5Volunteering({Key? key}) : super(key: key);

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
            const SizedBox(height: 30.0),
            ContainerCard().type3(
              title: DataValues.publicationOrg1Title,
              role: DataValues.publicationOrg1Role,
              years: DataValues.publicationOrg1Years,
              values: DataValues.publicationOrg1Vales,
              message: DataValues.publication1tURL.toString(),
              url: DataValues.publication1tURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              title: DataValues.publicationOrg2Title,
              role: DataValues.publicationOrg2Role,
              years: DataValues.publicationOrg2Years,
              values: DataValues.publicationOrg2Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
