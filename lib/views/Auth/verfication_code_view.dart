import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/views/Auth/phone_registration_view.dart';
import 'package:food_app/widgets/custom_button_widget.dart';
import 'package:food_app/widgets/custom_text_widget.dart';
import 'package:food_app/widgets/header_auth_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class VerficationCodeView extends StatefulWidget {
  static const routeName = "/VerficationCodeView";
  VerficationCodeView({Key? key}) : super(key: key);

  @override
  _VerficationCodeViewState createState() => _VerficationCodeViewState();
}

class _VerficationCodeViewState extends State<VerficationCodeView> {

  double? height;

  double? width;
  TextEditingController? contrller1;
  TextEditingController? contrller2;
  TextEditingController? contrller3;
  TextEditingController? contrller4;

  // getSharedPreferences () async
  // {
  //   prefs = await SharedPreferences.getInstance();
  // }
  String Code = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    contrller1 = TextEditingController();
    contrller2 = TextEditingController();
    contrller3 = TextEditingController();
    contrller4 = TextEditingController();
    // getSharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.height;
    // final verifyprovider = Provider.of<PostDataProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderAuthWidget(),
              const SizedBox(
                height: 30,
              ),

              //Verfication text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomTextWidget(
                  text: "Verfication code",
                  textSize: 35,
                  isTitle: true,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomTextWidget(
                  text: "Please type the verification code sent to prelookstudio@gmail.com",
                  textSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: height! / 38,
              ),

              //textFieldOTP
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOTP(
                        first: true, last: false, controllerr: contrller1),
                    _textFieldOTP(
                        first: false, last: false, controllerr: contrller2),
                    _textFieldOTP(
                        first: false, last: false, controllerr: contrller3),
                    _textFieldOTP(
                        first: false, last: true, controllerr: contrller4),
                  ],
                ),
              ),
              SizedBox(
                height: height! / 28,
              ),

              //Resend button
              Center(
                child: RichText(
                    text: TextSpan(
                        text: 'I don’t recevie a code!',
                        style: const TextStyle(color:Colors.black54, fontSize: 18),
                        children: [
                          TextSpan(
                              text: ' Please resend',
                              style:  TextStyle(
                                  color: KprimaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()..onTap = () {}),
                        ])),
              ),

              SizedBox(
                height: height! / 30,
              ),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.all(65.0),
                child: CustomButton.StyleTwo(fun:(){
                  Navigator.pushNamed(context, PhoneRegistrationView.routeName);
                }, buttonText: "Verfication", hight: 60, width: double.infinity , color: KprimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP(
      {bool? first, last, TextEditingController? controllerr}) {
    return Container(
      height: height! / 12,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controllerr,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: KprimaryColor),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.5, color: Colors.grey.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: KprimaryColor),
                borderRadius: BorderRadius.circular(12)),
            fillColor: Colors.white,
            filled: true
          ),
        ),
      ),
    );
  }
}
