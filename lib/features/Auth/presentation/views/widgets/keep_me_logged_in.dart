import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/utils/app_constants.dart';
import 'package:tasks_app/core/utils/app_strings.dart';
import 'package:tasks_app/core/utils/app_styles.dart';
import 'package:tasks_app/features/Auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:tasks_app/features/Auth/presentation/cubit/login_cubit/login_state.dart';

class KeepMeLoggedIn extends StatelessWidget {
  const KeepMeLoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(bottom: AppConstants.padding3h),
          child: Row(
            children: [
              Checkbox(
                activeColor: Colors.deepPurple,
                value: LoginCubit.get(context).keepMeLoggedIn,
                onChanged: (value) {
                  LoginCubit.get(context).changeKeepMeLoggedIn(value: value!);
                },
              ),
              Text(
                AppStrings.keepMeLoggedIn,
                style: AppStyles.textStyle16,
              ),
            ],
          ),
        );
      },
    );
  }
}
