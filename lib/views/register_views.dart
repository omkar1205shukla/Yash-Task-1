import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile1/core/constants/app_colors.dart';
import 'package:profile1/core/constants/app_tex.dart';
import 'package:profile1/database_helper.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(child: Image.asset('asset/images/register.png')),
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
                controller: firstnameController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: AppColors.loginColor,
                    ),
                    hintText: AppText.firstName,
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
                controller: lastnameController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: AppColors.loginColor,
                    ),
                    hintText: AppText.lastName,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
          ),
          const SizedBox(height: 1),
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
                controller: emailController,
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
                controller: phonenumberController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: AppColors.loginColor,
                    ),
                    hintText: AppText.phoneNumber,
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
                controller: addressController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.home,
                      color: AppColors.loginColor,
                    ),
                    hintText: AppText.address,
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
                controller: passwordController,
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
                controller: confirmController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: AppColors.loginColor,
                    ),
                    hintText: AppText.confirm,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: () async {
                if (firstnameController.text.isNotEmpty &&
                    lastnameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty &&
                    phonenumberController.text.isNotEmpty &&
                    addressController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty &&
                    confirmController.text.isNotEmpty) {
                  try {
                    var result = await DatabaseHelper.instance.insert({
                      DatabaseHelper.columnfirstName: firstnameController.text,
                      DatabaseHelper.columnlastName: lastnameController.text,
                      DatabaseHelper.columnemail: emailController.text,
                      DatabaseHelper.columnphoneNumber:
                          phonenumberController.text,
                      DatabaseHelper.columnaddress: addressController.text,
                      DatabaseHelper.columnpassword: passwordController.text,
                      DatabaseHelper.columnconfirm: confirmController.text,
                    });
                    print(result);
                  } catch (e) {
                    print("Error : $e");
                  }
                }
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.loginColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text(AppText.signUp),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(AppText.already),
                TextButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    child: const Text(
                      AppText.login,
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
