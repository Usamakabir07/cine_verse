import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/common_widgets/app_elevated_button.dart';
import 'package:cine_verse/app/router/app_router.dart';
import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../common_widgets/app_text_field.dart';
import '../../../themes/app_styles.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/validation.dart';

class LoginPageBody extends HookWidget {
  LoginPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final TextEditingController usernameController = useTextEditingController();
    final TextEditingController passwordController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.all(padding20),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "CineVerse",
                textAlign: TextAlign.center,
                style: AppStyles.headlineMedium.copyWith(
                  color: AppColors.gamboge,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: height20),
              Text(
                "Sign in",
                textAlign: TextAlign.center,
                style: AppStyles.titleSmallBold,
              ),
              const SizedBox(height: height30),
              AppTextField(
                controller: usernameController,
                hintText: 'username',
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height20),
              AppTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height20),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot password?",
                      textAlign: TextAlign.left,
                      style: AppStyles.bodyMedium.copyWith(
                        color: AppColors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: height30),
              AppElevatedButton(
                text: 'Log in',
                color: AppColors.gamboge,
                width: MediaQuery.of(context).size.width * double09,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.router.push(
                      const DashboardRoute(),
                    );
                  }
                },
              ),
              const SizedBox(height: height30),
              Text(
                "New user? Sign Up",
                textAlign: TextAlign.center,
                style: AppStyles.titleSmallBold,
              ),
              const SizedBox(height: height30),
              Text(
                "By continuing, you agree to the Terms of Use. Read our Privacy Policy.",
                textAlign: TextAlign.center,
                style: AppStyles.bodyMedium.copyWith(
                  color: AppColors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
