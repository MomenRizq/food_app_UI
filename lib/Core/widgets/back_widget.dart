import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.pop(context),
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius:10,
              ),
            ]
        ),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(Icons.arrow_back_ios_new ,size: 15,color: Colors.black,),
        ),
      ),
    );
  }
}
