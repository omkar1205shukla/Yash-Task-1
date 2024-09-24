import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile1/core/constants/app_colors.dart';
import 'package:profile1/core/constants/app_tex.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(child: Image.asset('asset/images/loginill.png')),

          const SizedBox(
            child: Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: AppColors.loginColor),
            ),
          ),

          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0)
                ],
                border: Border.all(color: Colors.black12),
                borderRadius: const BorderRadius.all((Radius.circular(15.0)))),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: AppColors.loginColor,
                    ),
                    hintText: AppText.email,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
          ),
          const SizedBox(height: 10),

          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0)
                ],
                border: Border.all(color: Colors.black12),
                borderRadius: const BorderRadius.all((Radius.circular(15.0)))),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: AppColors.loginColor,
                    ),
                    hintText: AppText.password,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = true;
                  });
                },
                activeColor: Colors.white,
                activeTrackColor: AppColors.loginColor,
              ),
              const Text(AppText.rememberMe)
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/profile');
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.loginColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text(AppText.login),
            ),
          ),
          const SizedBox(height: 10),
          // const Text(AppText.or),
          // const Text(AppText.loginwith),
          const SizedBox(
            height: 10,
          ),

          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(AppText.account),
                TextButton(
                    onPressed: () {
                      Get.toNamed('/register');
                    },
                    child: const Text(
                      AppText.signUp,
                      style: TextStyle(color: AppColors.loginColor),
                    ))
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
