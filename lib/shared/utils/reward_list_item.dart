import 'package:WooPeople/shared/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../theme/custom_text_style.dart';

class RewardListItem extends StatelessWidget {
  final Color backgroundColor;
  final String iconAsset;
  final String title;
  final String point;
  final String dateTime;
  final int edType;
  final String rowTitle;

  RewardListItem({
    required this.backgroundColor,
    required this.iconAsset,
    required this.title,
    required this.point,
    required this.dateTime,
    required this.edType,
    required this.rowTitle,
  });

  @override
  Widget build(BuildContext context) {
    DateTime dateTimeConvert = DateTime.parse(dateTime);
    String formattedDate = DateFormat('dd-MM-yyyy').format(dateTimeConvert);

    return Obx(
      () => ListTile(
        leading: CircleAvatar(
          backgroundColor: backgroundColor.withOpacity(.78),
          child: SvgPicture.asset(
            iconAsset,
            height: getSize(20),
          ),
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '${rowTitle} ',
                style: CustomTextStyles.labelBlue600Size14Fw600,
              ),
              TextSpan(
                text: title,
                style: CustomTextStyles.labelBlack500Size14Fw400,
              )
            ],
          ),
          textAlign: TextAlign.left,
        ),
        subtitle: Text(
          formattedDate,
          style: CustomTextStyles.labelGray600Size14Fw400,
        ),
        trailing: edType == 1
            ? Text(
                '+${point}',
                style: CustomTextStyles.labelRed400Size14Fw600,
              )
            : Text(
                '-${point}',
                style: CustomTextStyles.label400Size14Fw600,
              ),
      ),
    );
  }
}
