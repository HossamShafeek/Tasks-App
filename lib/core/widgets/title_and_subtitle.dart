import 'package:flutter/material.dart';
import 'package:tasks_app/core/utils/app_colors.dart';
import 'package:tasks_app/core/utils/app_constants.dart';
import 'package:tasks_app/core/utils/app_styles.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.textStyle34,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppConstants.defaultPadding),
          child: Text(
            subtitle,
            style: AppStyles.textStyle16.copyWith(color: AppColors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}