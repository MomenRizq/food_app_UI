import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/Core/consts/assets.dart';
import 'package:food_app/Core/widgets/back_widget.dart';

class HeaderUserWidget extends StatelessWidget {
  const HeaderUserWidget();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .37,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset("assets/images/background_user.png"),
        ),
        Positioned(
            top: 122,
            left: MediaQuery.of(context).size.width * 0.325,
            child: Center(
              child: Container(
                  width: 135,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 40,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ]
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  )
                //Image.asset(
                //   avatar,
                //   fit: BoxFit.fill,
                //   width: 115,
                //   height: 115,
                // ),
              ),
            )),
        Positioned(
          top: 35,
          left: 25,
          child: BackWidget(),
        ),
        Positioned(
            top: 132,
            left: MediaQuery.of(context).size.width * 0.35,
            child: Container(
              width: 115,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
               child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avater.png"),
               )
                //Image.asset(
              //   avatar,
              //   fit: BoxFit.fill,
              //   width: 115,
              //   height: 115,
              // ),
            )),
        Positioned(
            top: 215,
            left: MediaQuery.of(context).size.width * 0.55,
            child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 40,
                      offset: Offset(0, 10), // changes position of shadow
                    ),
                  ]
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.camera_alt ,color:Colors.grey.withOpacity(0.8) , size: 20,),
                )
            ))
      ],
    );
  }
}