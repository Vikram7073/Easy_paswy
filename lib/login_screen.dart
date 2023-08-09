import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'common/commonTextfield.dart';
import 'common/customButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Center(child: SvgPicture.asset("assets/images/app_logoImg.svg",height: 160,width: 160,)),
              SizedBox(height: 50,),
              Text("Email"),
              SizedBox(height: 5,),

              CustomField(fillColor: Colors.grey.withOpacity(0.4),),
              SizedBox(height: 15,),
              Text('Password'),
              SizedBox(height: 5,),

              CustomField(fillColor: Colors.grey.withOpacity(0.4),),
              Spacer(),
              CustomButton(text: "Login", onTap: () {  },),
              SizedBox(height: 40,)





            ],
          ),
        ),
      ),
    );
  }
}
