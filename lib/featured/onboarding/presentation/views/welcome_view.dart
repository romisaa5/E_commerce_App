import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 15,
          children: [
            Text(
              'Welcome to UpTodo',
              style: Styles.textStyle32,
            ),
            Text(
              'Please login to your account or create new account to continue',
              style: Styles.textStyle16,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            CustomButton(
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.loginView);
                },
                text: 'LOGIN',
                color: KprimaryColor,
                width: MediaQuery.of(context).size.width),
            CustomButton(
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.registerView);
                },
                text: 'CREATE ACOUNT',
                color: Color(0xff000000),
                width: MediaQuery.of(context).size.width)
          ],
        ),
      ),
    );
  }
}
