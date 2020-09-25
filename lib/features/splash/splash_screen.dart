import 'package:delivery_app/common/app_colors.dart';
import 'package:delivery_app/common/buttons/default_button.dart';
import 'package:delivery_app/common/default_background.dart';
import 'package:delivery_app/common/styles.dart';
import 'package:delivery_app/features/splash/splash_view_model.dart';
import 'package:delivery_app/features/tabs/home_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final ISplashViewModel viewModel;

  SplashScreen({Key key, this.viewModel}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final SplashViewModel vm = widget.viewModel;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Delivery App"),
      // ),
      body: Stack(
        children: <Widget>[
          DefaultBackground(
            color: AppColors.splashBackgroundColor,
            imageName: vm.defaultBackground,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 63),
            child: Image.asset(vm.logoImage),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.defaultBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(vm.splashIcon),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          vm.title,
                          key: Key("splash"),
                          textAlign: TextAlign.center,
                          style: TextStyles.headerText(36),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          vm.description,
                          textAlign: TextAlign.center,
                          style: TextStyles.secondaryText(18),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        DefaultButton(
                          type: DefaultButtonType.primary,
                          callback: () {
                            navigateToCategoriesPage(context);
                          },
                          text: vm.buttonOrderNowTitle,
                          icon: Icons.shopping_cart,
                          iconColor: Colors.white,
                          key: Key("navigate"),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        DefaultButton(
                            type: DefaultButtonType.secondary,
                            callback: () {
                              navigateToCategoriesPage(context);
                            },
                            text: vm.buttonDismissTitle),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                )),
              ))
        ],
      ),
    );
  }

  navigateToCategoriesPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeTab()));
  }
}
